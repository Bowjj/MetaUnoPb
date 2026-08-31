Personal Best Records 🏃
About This App

Personal Best Records is a personal tracking web application designed to help users keep track of their running progress, personal best records, running goals, and upcoming races.

This project is unfinished and still under development. It is also my first-ever website project, so the code, design, structure, and features are not perfect and may contain bugs or unfinished sections.

The main purpose of creating this application is to enhance my coding and web development skills by building a website from scratch and experimenting with different technologies and features.

This is mainly a learning, testing, and trial project. I created it to practice coding, database management, CRUD operations, user authentication, debugging, and deploying a web application.

As I continue learning, I may improve and change different parts of the application.

Features

Some of the features currently included or being developed are:

👤 User registration and login
🏃 Personal running records
🎯 Running goals
🏁 Upcoming races
📊 Race statistics
✏️ Add, edit, and delete records
🗄️ MySQL database integration
📱 Web-based dashboard

Some features may still be incomplete or subject to change.

How to Run the Project Locally

If you want to try the project yourself, you can run it using XAMPP.

Requirements
XAMPP
Apache
MySQL
PHP
Web browser
Git (optional)
1. Install XAMPP

Download and install XAMPP:

https://www.apachefriends.org/

Open the XAMPP Control Panel and start:

Apache
MySQL
2. Download the Project

Clone the repository:

git clone YOUR_GITHUB_REPOSITORY_URL

Or download the repository as a ZIP file from GitHub and extract it.

3. Move the Project to XAMPP

Copy the project folder into:

C:\xampp\htdocs\

For example:

C:\xampp\htdocs\MetaUnoPb\
4. Create the Database

Open phpMyAdmin:

http://localhost/phpmyadmin

Create a database named:

runtracker
5. Import the Database

Inside phpMyAdmin, select the newly created:

runtracker

database.

Go to:

Import → Choose File

Select the database file included in this GitHub repository:

runtracker.sql

Then click Import or Go.

This will create the required tables and data for the application.

6. Check the Database Connection

Open the project's:

database.php

Make sure the database connection uses your local MySQL settings.

For example:

$conn = new mysqli(
    "localhost",
    "root",
    "",
    "runtracker"
);

If your MySQL username, password, or database name is different, update them accordingly.

7. Run the Website

Make sure Apache and MySQL are running in XAMPP.

Then open your browser and go to:

http://localhost/MetaUnoPb/

Replace MetaUnoPb with the name of your project folder if you used a different name.

The website should now run locally.

Project Status

🚧 Status: Unfinished / Learning Project

This project is not finished and is not intended to be a production-ready application.

There may be:

Bugs
Incomplete features
Design issues
Security issues
Inefficient code
Features that still need improvement

This project was created primarily to practice coding, experiment with web development, make mistakes, troubleshoot problems, and improve my programming skills.

Since this is my first website, the project may not follow the best practices yet. However, it represents my progress and experience while learning web development.

What I Practiced

Through this project, I practiced working with:

HTML
CSS
PHP
MySQL
CRUD operations
User registration and login
Database connections
Forms
Sessions
Git and GitHub
XAMPP
Debugging
Basic web deployment
Future Improvements

Possible future improvements include:

Better UI/UX
Improved responsive design
Better authentication and security
Improved database structure
More detailed running statistics
Charts and progress tracking
Better error handling
Mobile optimization
Improved code organization
Additional running-related features
Disclaimer

This is a personal learning project created for experimentation and educational purposes.

The application is unfinished and should not be considered production-ready.

If you encounter bugs or problems while running the project, they may be part of the unfinished development and learning process.
