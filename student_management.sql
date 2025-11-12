create database Collage;
Use Collage;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration VARCHAR(20)
);

CREATE TABLE Enrollments (
    EnrollID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students VALUES 
(1, 'Riya', 20, 'Pune'),
(2, 'Shubham', 22, 'Mumbai'),
(3, 'Aarav', 21, 'Delhi'),
(4, 'Neha', 23, 'Nashik');

INSERT INTO Courses VALUES 
(101, 'Java Programming', '3 Months'),
(102, 'Web Development', '4 Months'),
(103, 'Database Management', '2 Months');


INSERT INTO Enrollments VALUES
(1, 1, 101, 85),
(2, 2, 102, 90),
(3, 3, 103, 78),
(4, 4, 101, 88);

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

--  WHERE Clause

SELECT * FROM Students WHERE City = 'Pune';
SELECT * FROM Enrollments WHERE Marks > 80;  

-- JOIN Query
SELECT s.Name, c.CourseName, e.Marks
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

-- Aggregate Functions
SELECT AVG(Marks) AS AverageMarks FROM Enrollments;
SELECT CourseID, MAX(Marks) AS HighestMark FROM Enrollments GROUP BY CourseID;


-- Update and Delete

UPDATE Students SET City = 'Nagpur' WHERE StudentID = 1;
DELETE FROM Enrollments WHERE Marks < 80;

-- Bonus: Create a View
CREATE VIEW StudentCourseMarks AS
SELECT s.Name, c.CourseName, e.Marks
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;











