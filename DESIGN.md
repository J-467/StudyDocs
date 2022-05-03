DESIGN DOCUMENT FOR STUDY DOCS
******************************

Web framework
**************
Flask

Languages used for Study Docs
*****************************
Python, HTML, CSS, JS


Database name: studydocs.db
****************************

The database has 5 tables (users, majors, courses, classes, feedback)

All the tables have a field "id" as their primary key.

Users table: Stores all the registered users. Their name, email, username, and password.

Majors table: Stores the majors in Yale.

Courses table: Stores the classes(courses) in every major. It references the majorrs table and uses its id as a foreign key in the table.

Classes table: Stores information about every class in the major. It stores the various resources about the class. It has users_id as a foreign key from users and course_id as foreign key from courses.
The users_id allows the admin to know who submitted which particular resource.

Feedback table: This stores the feedback submitted by users. Has user_id as a foreign key from the users table.

WITHIN THE STUDYDOCS FOLDER
***************************

Static folder
**************
This contains the various CSS stylesheets and js codes necessary for the implementation of the project

Templates
*********
This contains the various html files used to display information on the web application.
It contains layout.html which is extended in all the other html files using jinja.


app.py
******
This contains the python codes used for the backend programming of the web app.


Below are some html files and their corresponidng methods and paths in the app.py file
****************************************************************************************

Register.html, register() && "/register" route
**********************************************
Register.html was generated using a bootstrap template. (Source: https://colorlib.com/wp/template/login-form-v13/)
The Login page has a form with several input fields, accepting the user's name, username, email, and password to register them into the database.
The form is submitted to the "/register" route using "POST". Post because it is more secure.
Using the register function in app.py, the password is hashed and together with the other information, inserted into the database to register the user.


Login.html, login() && "/login" route
***************************
Login.html was generated using a bootstrap template. (Source: https://colorlib.com/wp/template/login-form-v13/)
The Login page has a form with two input fields, username and password.
The form is submitted to the "/login" route using "POST". Post because it is more secure.
Using the login function, these two inputs are compared to the information in the database to crosscheck if there is a registered user, then log them in.


Index.html, index() && "/" route
********************************
This html page displays a list of majors when called by "GET" and submits the id of the selected major to the "/" route through a form by "POST". After submission by post, the index function then generates the courses.html page using the information submitted by the form in index.

Courses.html, courses() && "/courses" route
*******************************************
This html page displays the list of courses(classes) in the particular major selected on the index page. The id of the selected course is then sent to the courses function in app.py by post. This function then generates the class.html page which loads the information and resources available on that particular class.

class.html, classe() && "/class" route
***************************************
Class.html displays all the information and resource in the database about a particular course.
It is generated from the courses function. The courses function gets all resources in the database with course_id = the option selected by the user.
Using for loop, it presents information on this page.
At the end of that page, there is button to recommend a resource for that particular class.
The button is submitted as a form, together with the course id, by Post to the classe function.
The classe function then generates the recommend.html page, using the information submitted by post.


NB: Couldn't name the function class(without the e), because class is a keyword in python


recommend.html, recommend() && "/recommemd" route
**************************************************
Recommend.html displays a form which the user can fill to submit a resource for that.
It asks the user to specify which type of resource it is, the link to the resource, a description of the resources.
This form is submitted to the recommend function by Post.
The information provided is stored in the classes table in the database.


feedback.html && feedback()
*************************
Feedback.html generates a form where users can submit their feedback on the application.
The form is sent to the feedback function by POST on submission.
The feedback function then inserts this feedback into the feedback table in the database.


about.html
***********
About.html gives information about what study docs is about



Parent class in html
********************
This class creates a new line between that text and the next text.





POTENTIAL IMPROVEMENTS TO THE WEB APP
***************************************
1. The app currently accepts users resource suggestions as links to external resources(videos, images, docs). An improvement would be to enable the user upload the document directly to the web app.

2. An upvote of resources would be very useful to enable users know which resources are top voted to provide the best explanation to concepts.

3. More enhanced design