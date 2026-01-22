USE master;

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'sdfp')
DROP DATABASE sdfp;

CREATE DATABASE sdfp;
GO

USE sdfp;

CREATE TABLE Students (
    Id NVARCHAR(50) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100)
);

CREATE TABLE Courses (
    Id NVARCHAR(50) PRIMARY KEY,
    Title NVARCHAR(100),
    Credit INT
);

CREATE TABLE Results (
    StudentId NVARCHAR(50),
    CourseId NVARCHAR(50),
    Marks INT,
    FOREIGN KEY (StudentId) REFERENCES Students(Id),
    FOREIGN KEY (CourseId) REFERENCES Courses(Id)
);

