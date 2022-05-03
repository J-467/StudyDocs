INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/udfbq4M2Kfc", "video", "Memory Allocation (Malloc)", "This video gives a good explanation of memory allocation(Malloc) means in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/vcQIFT79_50", "video", "Linked list", "This video gives a good explanation of linked lists and its implementation in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YNstP0ESndU", "video", "Limits in Calculus 1", "This video provides an in-depth explanation of limits in Calc",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YTKQswb60Pw", "video", "Reimann Sums", "This video provides an in-depth explanation of Reimann Sums - Left Endpoints and Right Endpoints",
CURRENT_TIMESTAMP);








INSERT INTO courses(course_name, major_id) values ("MATH120-Multivariable Calculus", "2");
INSERT INTO courses(course_name, major_id) values ("PHYS180-University Physics(Mechanics)", "3");
INSERT INTO courses(course_name, major_id) values ("PHYS181-University Physiscs(Electricity & Magnetism", "3");
INSERT INTO courses(course_name, major_id) values ("ECON115-Introduction to Microeconomics", "4");
INSERT INTO courses(course_name, major_id) values ("ECON116-Introduction to Macroeconomics", "4");
INSERT INTO courses(course_name, major_id) values ("ECON117-Introduction to Data Analysis", "4");
INSERT INTO courses(course_name, major_id) values ("HIST135-American Economic History", "5");
INSERT INTO courses(course_name, major_id) values ("HIST246-History of food", "5");
INSERT INTO courses(course_name, major_id) values ("PSYC110-Introduction to Psychology", "6");
INSERT INTO courses(course_name, major_id) values ("PSYC140-Developmental Psychology", "6");


# For setting the profs and syllabus to the database

UPDATE courses SET course_name = "CPSC112" WHERE id = 2;
UPDATE courses SET prof = "David J. Malan", syllabus = "https://yale.instructure.com/courses/68153/assignments/syllabus" WHERE id =1;
UPDATE courses SET prof = "Timothy Barron", syllabus = "https://yale.instructure.com/courses/73828/assignments/syllabus" WHERE id =2;
UPDATE courses SET prof = "Ian Adelstein", syllabus = "https://yale.instructure.com/courses/66403/assignments/syllabus" WHERE id =3;
UPDATE courses SET prof = "Rachel Diethorn", syllabus = "https://yale.instructure.com/courses/76322/assignments/syllabus" WHERE id =4;
UPDATE courses SET prof = "Meghan Anderson", syllabus = "https://yale.instructure.com/courses/69201/assignments/syllabus" WHERE id =5;
UPDATE courses SET prof = "Adriane Steinacker", syllabus = "https://yale.instructure.com/courses/50951/assignments/syllabus" WHERE id =6;
UPDATE courses SET prof = "Mehdi Ghiassi-Nejad", syllabus = "https://yale.instructure.com/courses/68960/assignments/syllabus" WHERE id =7;
UPDATE courses SET prof = "Cormac O'Dea", syllabus = "https://yale.instructure.com/courses/69049/assignments/syllabus" WHERE id =8;
UPDATE courses SET prof = "Aleh Tsyvinski", syllabus = "https://yale.instructure.com/courses/69264/assignments/syllabus" WHERE id =9;
UPDATE courses SET prof = "Guillermo Noguera", syllabus = "https://yale.instructure.com/courses/69267/assignments/syllabus" WHERE id =10;
UPDATE courses SET prof = "Maggie Jones", syllabus = "https://yale.instructure.com/courses/44432/assignments/syllabus" WHERE id =11;
UPDATE courses SET prof = "Paul Freedman", syllabus = "https://yale.instructure.com/courses/54266/assignments/syllabus" WHERE id =12;
UPDATE courses SET prof = "Stephanie Lazzaro", syllabus = "https://yale.instructure.com/courses/68636/assignments/syllabus" WHERE id =13;
UPDATE courses SET prof = "Julia Leonard", syllabus = "https://yale.instructure.com/courses/68640/assignments/syllabus" WHERE id =14;


For inserting the videos into the classes

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/udfbq4M2Kfc", "video", "Memory Allocation (Malloc)", "This video gives a good explanation of memory allocation(Malloc) means in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/vcQIFT79_50", "video", "Linked list", "This video gives a good explanation of linked lists and its implementation in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YNstP0ESndU", "video", "Limits in Calculus 1", "This video provides an in-depth explanation of limits in Calc",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YTKQswb60Pw", "video", "Reimann Sums", "This video provides an in-depth explanation of Reimann Sums - Left Endpoints and Right Endpoints",
CURRENT_TIMESTAMP);



UPDATE classes SET source = "https://www.youtube.com/embed/udfbq4M2Kfc" WHERE id = 1;

UPDATE classes SET source = "https://www.youtube.com/embed/vcQIFT79_50" WHERE id = 2;

UPDATE classes SET source = "https://www.youtube.com/embed/YNstP0ESndU", course_id = 3 WHERE id = 3;

UPDATE classes SET source = "https://www.youtube.com/embed/YTKQswb60Pw", course_id = 3 WHERE id = 4;INSERT INTO courses(course_name, major_id) values ("MATH120-Multivariable Calculus", "2");
INSERT INTO courses(course_name, major_id) values ("PHYS180-University Physics(Mechanics)", "3");
INSERT INTO courses(course_name, major_id) values ("PHYS181-University Physiscs(Electricity & Magnetism", "3");
INSERT INTO courses(course_name, major_id) values ("ECON115-Introduction to Microeconomics", "4");
INSERT INTO courses(course_name, major_id) values ("ECON116-Introduction to Macroeconomics", "4");
INSERT INTO courses(course_name, major_id) values ("ECON117-Introduction to Data Analysis", "4");
INSERT INTO courses(course_name, major_id) values ("HIST135-American Economic History", "5");
INSERT INTO courses(course_name, major_id) values ("HIST246-History of food", "5");
INSERT INTO courses(course_name, major_id) values ("PSYC110-Introduction to Psychology", "6");
INSERT INTO courses(course_name, major_id) values ("PSYC140-Developmental Psychology", "6");


# For setting the profs and syllabus to the database

UPDATE courses SET course_name = "CPSC112" WHERE id = 2;
UPDATE courses SET prof = "David J. Malan", syllabus = "https://yale.instructure.com/courses/68153/assignments/syllabus" WHERE id =1;
UPDATE courses SET prof = "Timothy Barron", syllabus = "https://yale.instructure.com/courses/73828/assignments/syllabus" WHERE id =2;
UPDATE courses SET prof = "Ian Adelstein", syllabus = "https://yale.instructure.com/courses/66403/assignments/syllabus" WHERE id =3;
UPDATE courses SET prof = "Rachel Diethorn", syllabus = "https://yale.instructure.com/courses/76322/assignments/syllabus" WHERE id =4;
UPDATE courses SET prof = "Meghan Anderson", syllabus = "https://yale.instructure.com/courses/69201/assignments/syllabus" WHERE id =5;
UPDATE courses SET prof = "Adriane Steinacker", syllabus = "https://yale.instructure.com/courses/50951/assignments/syllabus" WHERE id =6;
UPDATE courses SET prof = "Mehdi Ghiassi-Nejad", syllabus = "https://yale.instructure.com/courses/68960/assignments/syllabus" WHERE id =7;
UPDATE courses SET prof = "Cormac O'Dea", syllabus = "https://yale.instructure.com/courses/69049/assignments/syllabus" WHERE id =8;
UPDATE courses SET prof = "Aleh Tsyvinski", syllabus = "https://yale.instructure.com/courses/69264/assignments/syllabus" WHERE id =9;
UPDATE courses SET prof = "Guillermo Noguera", syllabus = "https://yale.instructure.com/courses/69267/assignments/syllabus" WHERE id =10;
UPDATE courses SET prof = "Maggie Jones", syllabus = "https://yale.instructure.com/courses/44432/assignments/syllabus" WHERE id =11;
UPDATE courses SET prof = "Paul Freedman", syllabus = "https://yale.instructure.com/courses/54266/assignments/syllabus" WHERE id =12;
UPDATE courses SET prof = "Stephanie Lazzaro", syllabus = "https://yale.instructure.com/courses/68636/assignments/syllabus" WHERE id =13;
UPDATE courses SET prof = "Julia Leonard", syllabus = "https://yale.instructure.com/courses/68640/assignments/syllabus" WHERE id =14;


For inserting the videos into the classes

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/udfbq4M2Kfc", "video", "Memory Allocation (Malloc)", "This video gives a good explanation of memory allocation(Malloc) means in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/vcQIFT79_50", "video", "Linked list", "This video gives a good explanation of linked lists and its implementation in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YNstP0ESndU", "video", "Limits in Calculus 1", "This video provides an in-depth explanation of limits in Calc",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YTKQswb60Pw", "video", "Reimann Sums", "This video provides an in-depth explanation of Reimann Sums - Left Endpoints and Right Endpoints",
CURRENT_TIMESTAMP);



UPDATE classes SET source = "https://www.youtube.com/embed/udfbq4M2Kfc" WHERE id = 1;

UPDATE classes SET source = "https://www.youtube.com/embed/vcQIFT79_50" WHERE id = 2;

UPDATE classes SET source = "https://www.youtube.com/embed/YNstP0ESndU", course_id = 3 WHERE id = 3;

UPDATE classes SET source = "https://www.youtube.com/embed/YTKQswb60Pw", course_id = 3 WHERE id = 4;INSERT INTO courses(course_name, major_id) values ("MATH120-Multivariable Calculus", "2");
INSERT INTO courses(course_name, major_id) values ("PHYS180-University Physics(Mechanics)", "3");
INSERT INTO courses(course_name, major_id) values ("PHYS181-University Physiscs(Electricity & Magnetism", "3");
INSERT INTO courses(course_name, major_id) values ("ECON115-Introduction to Microeconomics", "4");
INSERT INTO courses(course_name, major_id) values ("ECON116-Introduction to Macroeconomics", "4");
INSERT INTO courses(course_name, major_id) values ("ECON117-Introduction to Data Analysis", "4");
INSERT INTO courses(course_name, major_id) values ("HIST135-American Economic History", "5");
INSERT INTO courses(course_name, major_id) values ("HIST246-History of food", "5");
INSERT INTO courses(course_name, major_id) values ("PSYC110-Introduction to Psychology", "6");
INSERT INTO courses(course_name, major_id) values ("PSYC140-Developmental Psychology", "6");


# For setting the profs and syllabus to the database

UPDATE courses SET course_name = "CPSC112" WHERE id = 2;
UPDATE courses SET prof = "David J. Malan", syllabus = "https://yale.instructure.com/courses/68153/assignments/syllabus" WHERE id =1;
UPDATE courses SET prof = "Timothy Barron", syllabus = "https://yale.instructure.com/courses/73828/assignments/syllabus" WHERE id =2;
UPDATE courses SET prof = "Ian Adelstein", syllabus = "https://yale.instructure.com/courses/66403/assignments/syllabus" WHERE id =3;
UPDATE courses SET prof = "Rachel Diethorn", syllabus = "https://yale.instructure.com/courses/76322/assignments/syllabus" WHERE id =4;
UPDATE courses SET prof = "Meghan Anderson", syllabus = "https://yale.instructure.com/courses/69201/assignments/syllabus" WHERE id =5;
UPDATE courses SET prof = "Adriane Steinacker", syllabus = "https://yale.instructure.com/courses/50951/assignments/syllabus" WHERE id =6;
UPDATE courses SET prof = "Mehdi Ghiassi-Nejad", syllabus = "https://yale.instructure.com/courses/68960/assignments/syllabus" WHERE id =7;
UPDATE courses SET prof = "Cormac O'Dea", syllabus = "https://yale.instructure.com/courses/69049/assignments/syllabus" WHERE id =8;
UPDATE courses SET prof = "Aleh Tsyvinski", syllabus = "https://yale.instructure.com/courses/69264/assignments/syllabus" WHERE id =9;
UPDATE courses SET prof = "Guillermo Noguera", syllabus = "https://yale.instructure.com/courses/69267/assignments/syllabus" WHERE id =10;
UPDATE courses SET prof = "Maggie Jones", syllabus = "https://yale.instructure.com/courses/44432/assignments/syllabus" WHERE id =11;
UPDATE courses SET prof = "Paul Freedman", syllabus = "https://yale.instructure.com/courses/54266/assignments/syllabus" WHERE id =12;
UPDATE courses SET prof = "Stephanie Lazzaro", syllabus = "https://yale.instructure.com/courses/68636/assignments/syllabus" WHERE id =13;
UPDATE courses SET prof = "Julia Leonard", syllabus = "https://yale.instructure.com/courses/68640/assignments/syllabus" WHERE id =14;


For inserting the videos into the classes

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/udfbq4M2Kfc", "video", "Memory Allocation (Malloc)", "This video gives a good explanation of memory allocation(Malloc) means in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("1", "https://www.youtube.com/embed/vcQIFT79_50", "video", "Linked list", "This video gives a good explanation of linked lists and its implementation in C",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YNstP0ESndU", "video", "Limits in Calculus 1", "This video provides an in-depth explanation of limits in Calc",
CURRENT_TIMESTAMP);

INSERT INTO classes(course_id, source, s_type, s_name, s_description, time) values
("3", "https://www.youtube.com/embed/YTKQswb60Pw", "video", "Reimann Sums", "This video provides an in-depth explanation of Reimann Sums - Left Endpoints and Right Endpoints",
CURRENT_TIMESTAMP);



UPDATE classes SET source = "https://www.youtube.com/embed/udfbq4M2Kfc" WHERE id = 1;

UPDATE classes SET source = "https://www.youtube.com/embed/vcQIFT79_50" WHERE id = 2;

UPDATE classes SET source = "https://www.youtube.com/embed/YNstP0ESndU", course_id = 3 WHERE id = 3;

UPDATE classes SET source = "https://www.youtube.com/embed/YTKQswb60Pw", course_id = 3 WHERE id = 4;


