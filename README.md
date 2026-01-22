# Student-Result-Management-System

A C# console application that reads student, course, and result data from CSV files, stores them in a SQL Server database, and generates a consolidated result report.

## Description

This project is a database-driven C# application designed to manage student results.
It supports inserting data from CSV files into a SQL Server database, clearing existing data, and generating a final result report by joining student, course, and result information.

The program uses ADO.NET for database operations and demonstrates practical usage of file handling, database connectivity, and data processing.

## Database Structure

The project uses a SQL Server database named **sdfp** with the following tables:

* **Students**

  * Id
  * Name
  * Email

* **Courses**

  * Id
  * Title
  * Credit

* **Results**

  * StudentId
  * CourseId
  * Marks

Foreign key relationships are maintained between tables.

## Features

* Insert data from CSV files into SQL Server
* Delete all existing database records
* Read data from database tables
* Generate a consolidated result report
* Export final report as a CSV file
* Grade calculation based on marks
* Optional verbose logging

## Technologies Used

* C#
* .NET Console Application
* SQL Server
* ADO.NET (`System.Data.SqlClient`)
* File Handling (CSV)
* Relational Database Design

## How to Run

1. Create the database using the provided SQL script in SQL Server.
2. Open the project in Visual Studio.
3. Update the SQL Server connection string if needed.
4. Run the application.
5. Choose:

   * `1` to delete existing data
   * `2` to insert new data from CSV files
6. Provide input CSV paths and output report path when prompted.

## Input CSV Format

**Students CSV**

```
StudentId,Name,Email
```

**Courses CSV**

```
CourseId,Title,Credit
```

**Results CSV**

```
StudentId,CourseId,Marks
```

## Output

The program generates a CSV report with:

```
StudentID, StudentName, CourseId, CourseName, Marks, Grade
```

## Use Case

This project is suitable for:

* Database course projects
* Software Development Project (SDP)
* Learning ADO.NET and SQL Server
* CSV to database data processing
* Academic demonstrations and viva preparation

## Author

Samia

## License

This project is developed for educational purposes only.
