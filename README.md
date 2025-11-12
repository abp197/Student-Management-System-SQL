# 🎓 Student Management System (SQL Project)

A simple SQL database project for managing students, courses, and enrollments.

## 🧩 Features
- Create and manage student & course data  
- Insert, update, delete records  
- Fetch student details with JOIN queries  
- Calculate average marks and top scorers  

## 📘 Tables
- Students  
- Courses  
- Enrollments  

## ⚙️ Technologies Used
- MySQL / PostgreSQL  
- SQL Queries  

## 🧪 Sample Query
```sql
SELECT s.Name, c.CourseName, e.Marks
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;
