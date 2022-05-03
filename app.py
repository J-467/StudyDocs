#import os

from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session
from flask_session import Session
from tempfile import mkdtemp
from werkzeug.exceptions import default_exceptions, HTTPException, InternalServerError
from werkzeug.security import check_password_hash, generate_password_hash

from helpers import apology, login_required

# Configure application
app = Flask(__name__)

# Ensure templates are auto-reloaded
app.config["TEMPLATES_AUTO_RELOAD"] = True


# Configure session to use filesystem (instead of signed cookies)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

# Configure CS50 Library to use SQLite database
# This is the database path
db = SQL("sqlite:///studydocs.db")



@app.after_request
def after_request(response):
    """Ensure responses aren't cached"""
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Expires"] = 0
    response.headers["Pragma"] = "no-cache"
    return response


#This method loads the index page of the app. The index page has the list of some majors in Yale College
#This method also loads the page containing the list of classes in the selected major
@app.route("/", methods = ['GET', 'POST'])
@login_required
def index():
    # This method fetches the classes in the particular major that has been selected
    if request.method == "POST":
        id = request.form.get("id")
        courses = db.execute("SELECT * FROM courses WHERE major_id = ?", id)
        return render_template("courses.html", courses = courses)

    # This generates the list of majors in Yale
    else:
        majors = db.execute("SELECT * FROM majors")
        return render_template("index.html", majors = majors)


# This method displays the various resources in the particular class selected
@app.route("/courses", methods=["GET", "POST"])
def courses():
    id = request.form.get("id")
    course = db.execute("SELECT * FROM courses WHERE id = ?", id)[0]
    classe = db.execute("SELECT * FROM classes WHERE course_id = ?", id)

    return render_template("class.html", course = course, classe = classe)

# This method creates the page that allows a user to suggest a resource
@app.route("/class", methods=["GET", "POST"])
def classe():
    course_id = request.form.get("course_id")
    course = db.execute("SELECT * FROM courses WHERE id = ?", course_id)[0]

    return render_template("recommend.html", course = course)



# This method add the user's resource suggestion to the database
@app.route("/recommend", methods=["GET", "POST"])
def recommend():
    course_id = request.form.get("course_id")
    s_type = request.form.get("s_type")
    source = request.form.get("source")
    s_name = request.form.get("s_name")
    s_description = request.form.get("s_description")
    user_id = db.execute("SELECT id from users where id  = ?", session["user_id"])[0]["id"]


    db.execute("INSERT INTO classes(course_id, source, s_type, s_name, s_description, user_id, time) VALUES (?,?,?,?,?,?,CURRENT_TIMESTAMP)", course_id, source, s_type, s_name, s_description, user_id)

    majors = db.execute("SELECT * FROM majors")
    return render_template("index.html", majors = majors)



# This allows the user to login
@app.route("/login", methods=["GET", "POST"])
def login():
    """Log user in"""

    # Forget any user_id
    session.clear()
    # User reached route via POST (as by submitting a form via POST)
    if request.method == "POST":

        # # Ensure username was submitted
        if not request.form.get("username"):
            return apology("must provide username", 403)

        # Ensure password was submitted
        elif not request.form.get("password"):
            return apology("must provide password", 403)

        # Query database for username
        rows = db.execute("SELECT * FROM users WHERE username = ?", request.form.get("username"))

        # Ensure username exists and password is correct
        if len(rows) != 1 or not check_password_hash(rows[0]["hash"], request.form.get("password")):
            return apology("invalid username and/or password", 403)

        # Remember which user has logged in
        session["user_id"] = rows[0]["id"]

        # Redirect user to home page
        return redirect("/")


    # User reached route via GET (as by clicking a link or via redirect)
    else:
        return render_template("login.html")


#This creates a page for the user's feedback on the web app and inserts his inputs into the database
@app.route("/feedback", methods = ['GET', 'POST'])
@login_required
def feedback():
    # Submit the feedback to the database
    if request.method == "POST":
        feedback = request.form.get("feedback")
        user_id = db.execute("SELECT id FROM users WHERE id = ?", session["user_id"])[0]["id"]
        db.execute("INSERT INTO feedback(feedback, user_id, time) VALUES (?,?, CURRENT_TIMESTAMP)", feedback, user_id)
        majors = db.execute("SELECT * FROM majors")
        return render_template("index.html", majors = majors)

    # Load the feedback page
    else:
        return render_template("feedback.html")

@app.route("/about", methods = ['GET'])
@login_required
def about():
    return render_template("about.html")

@app.route("/logout")
def logout():
    """Log user out"""

    # Forget any user_id
    session.clear()

    # Redirect user to login form
    return redirect("/")



#This method registers a new user into the database
@app.route("/register", methods=["GET", "POST"])
def register():
    """Register user"""
    # If GET(), display sign up page. if submitted by POST(), check for errors and insert new user into the users table.

    if request.method == "POST":
        fname = request.form.get("fname")
        lname = request.form.get("lname")
        email = request.form.get("email")
        username = request.form.get("username")
        password = request.form.get("password")
        confirmation = request.form.get("confirmation")

        # Check whether a particular field has been left empty
        if not fname or not lname or not email or not username or not password or not confirmation:
            return apology("No field can be left blank")

        # Checking whether the username is taken
        rows = db.execute("SELECT * FROM users WHERE username = ?", username)

        # Ensure the username hasn't been taken
        if len(rows) != 0:
            return apology("Username has been taken")

        if password == confirmation:
            hash = generate_password_hash(password)

            # Insert the new user into the database
            db.execute("INSERT INTO users (fname, lname, email, username, hash) VALUES (?,?, ?, ?, ?)", fname, lname, email, username, hash)
            id = db.execute("SELECT id FROM users WHERE username = ? AND hash = ?", username, hash)[0]["id"]
            session["user_id"] = id
            return redirect("/")
        else:
            return apology("Password doesn't match")

    else:
        return render_template("register.html")


def errorhandler(e):
    """Handle error"""
    if not isinstance(e, HTTPException):
        e = InternalServerError()
    return apology(e.name, e.code)


# Listen for errors
for code in default_exceptions:
    app.errorhandler(code)(errorhandler)

