<%
    if (session == null || session.getAttribute("admin") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.student.model.Student" %>
<%
    Student student = (Student) request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <style>
        body {
            font-family: sans-serif;
            padding: 40px;
            background-color: #f9f9f9;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .nav {
            text-align: center;
            margin-bottom: 30px;
        }
        .nav a {
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
            color: #333;
        }
        .nav a:hover {
            color: #2196f3;
        }
        form {
            width: 400px;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 6px;
            box-shadow: 0px 0px 10px #ccc;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #ff9800;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #e68900;
        }
    </style>
</head>
<body>

    <h2>Edit Student</h2>

    <div class="nav">
        <a href="index.jsp">🏠 Home</a>
        <a href="add-student.jsp">➕ Add Student</a>
        <a href="view-student.jsp">📋 View Students</a>
    </div>

    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="<%= student.getId() %>" />

        <label>Name:</label>
        <input type="text" name="name" value="<%= student.getName() %>" required />

        <label>Email:</label>
        <input type="email" name="email" value="<%= student.getEmail() %>" required />

        <label>Course:</label>
        <input type="text" name="course" value="<%= student.getCourse() %>" required />

        <label>Marks:</label>
        <input type="number" name="marks" value="<%= student.getMarks() %>" required />

        <input type="submit" value="Update Student" />
    </form>

</body>
</html>
