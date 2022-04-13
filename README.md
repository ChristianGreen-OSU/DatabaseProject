# Media Manager Database System for a Local Library
CSE 3241 - Introduction to Database Systems | SP22 Final Project

Team 04 - Christian Barrett, Andrew Kramer, Avijit Kumar, Zachary Mason

# Overview
A local library is building an application to manage their music and video collection and
needs a simple database management system to support their inventory and circulation
operations. This will require to design the database as well to develop a Java application
to integrate with the database.

# Outline
## Part I – The Final Report
### Section 1 - Database Description
a. ER – Model properly documented
b. Relational schema properly documented
c. Database fully normalized, with correct justifications
d. Three indexes properly documented
e. Relational Algebra and SQL for two views implemented
f. Three sample transactions

### Section 2 - User Manual
a. Description with “Extra” entities included and discussed
b. Sample SQL Queries (from CP4.3, 4.4 and CP5.4)
c. INSERT samples
d. DELETE samples

### Section 3 - Graded Checkpoint Documents
Marked Project Checkpoints and Worksheets.
Description of additional work-in-progress, any feedback and revisions Part II – The SQL Database
*.sqlite, or *.db binary:
correctly formatted, and ready to open with SQLiteOnline (https://sqliteonline.com/)
*.txt:
SQL statements for your DB, as simple text files

## Part II – The SQL Database
### Section 1 - Database Files
1. A binary version of your database, suitable for opening using either the sqlite
command, SQLite studio.

### Section 2 - SQL Scripts (to recreate database)
1. SQL CREATE. A text file containing all of the scripts needed to create your database
schema on an empty database. This file should be properly commented and should
execute properly if pasted into a SQLite command prompt (or loaded from the command
line tool). These scripts should include all indexes and views created on your database.
2. DATA FILES. A set of text files containing the data to be loaded into your database.
These files, when used with the table creation scripts above, should be able to recreate
your database from scratch if your binary file is corrupted or lost. Make sure you provide
instructions on how to use these scripts and files in a separate text file.
3. SQL QUERIES. A text file containing all of the SQL queries used in your final report from
Part I. All of these queries must be in a form where they can be run over your database
through a simple cut and paste into the admin tool or the sqlite3 command line tool. In
addition, make sure that these queries are completely commented so that it is clear
where the query comes from in your final report write-up.
4. SQL INSERT/ DELETE. A text file containing all of the sample INSERT and DELETE
statements provided in your user manual, suitable for pasting into a command prompt
and testing the result on your database.

### Section 3 - Program (software code)
1. Java Application. The code of the Java application developed must be included, with
the required corrections. To get points your program must be running, integrated with
the database and executing the queries required by the user options provided in the
functionality description.


