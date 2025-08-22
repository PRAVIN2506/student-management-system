# Student Management System 🧑‍🎓📋

A web-based Java application to manage student records efficiently. It includes user login and registration, session control, and basic CRUD operations for student data.

---

## 🚀 Features

- 🔐 User Login & Registration (with session tracking)
- ➕ Add New Students
- 📝 Edit Existing Student Info
- 🗑️ Delete Students
- 📋 View All Students
- 🚪 Logout & Session Protection
- 📦 MySQL Integration with DAO pattern

---

## 🏗️ Technologies Used

| Layer         | Tech Stack                     |
|---------------|--------------------------------|
| Frontend      | JSP, HTML, CSS                 |
| Backend       | Java Servlets, JDBC            |
| Database      | MySQL                          |
| Build Tool    | Apache Maven                   |
| Server        | Apache Tomcat (v9+)            |

---

## 🧩 Folder Structure

```
student-management/
├── pom.xml
├── src/
│   └── main/
│       ├── java/
│       │   └── com/assignment/student/
│       │       ├── controller/      → LoginServlet, RegisterServlet, LogoutServlet, etc.
│       │       ├── dao/             → UserDAO, StudentDAO
│       │       └── model/           → User.java, Student.java
│       └── webapp/
│           ├── index.jsp           → Login & registration hub
│           ├── dashboard.jsp       → Welcome & navigation
│           ├── add-student.jsp
│           ├── view-student.jsp
│           └── WEB-INF/
│               └── web.xml         → Web application configuration

```

---

## 🛠️ Setup Instructions

1. Clone the repo or download the source.
2. Import into Eclipse / IntelliJ as a Maven project.
3. Set up MySQL database `studentdb`.
4. Run the following to create necessary tables:

```sql
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(100),
    marks INT
);
```
5. Update DB credentials inside UserDAO.java and StudentDAO.java.

6. Deploy on Tomcat and access at http://localhost:8080

## 📸 Screenshots
https://drive.google.com/file/d/1_vlxflmnMLx5XkU42Av86bU1fL3pdm3u/view?usp=drive_link

## Author
Created by Pravin — passionate about building culturally aware, audience-first content.
