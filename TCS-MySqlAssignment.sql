create table Student(registration_No number(4),student_name varchar2(20),student_score number(3));

create table Course(course_name varchar2(20),semester varchar2(10));

alter table Course Add Primary Key(course_name);

alter table Student Add course_name varchar2(20) references Course(course_name);

INSERT INTO Course VALUES('Unix OS','Sem 2');
INSERT INTO Course VALUES('SQL PL/SQL','Sem 3');
INSERT INTO Course VALUES('Java','Sem 2');

INSERT INTO Student VALUES(1011,'Raju Kumar',40,'Unix OS');
INSERT INTO Student VALUES(1023,'Nancy J',67,'Unix OS');
INSERT INTO Student VALUES(1899,'Viraj',59,'Java');

SELECT student_name AS Name FROM Student WHERE student_score >=50;

SELECT registration_No,student_name,course_name,semester FROM Student NATURAL JOIN Course;

SELECT course_name FROM Course WHERE course_name NOT IN (SELECT DISTINCT course_name FROM Student);

SELECT course_name,COUNT(*) AS NumberOfStudents FROM Student GROUP BY course_name;
