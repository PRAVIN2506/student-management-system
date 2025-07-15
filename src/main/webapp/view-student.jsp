<%
    if (session == null || session.getAttribute("admin") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>


<%@ page import="java.util.List" %>
<%@ page import="com.student.dao.StudentDAO" %>
<%@ page import="com.student.model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
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
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            font-size: 15px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #2196f3;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #eef2f3;
        }
        .actions a {
            margin-right: 10px;
            color: #0066cc;
            text-decoration: none;
        }
        .actions a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>Student List</h2>

    <div class="nav">
        <a href="index.jsp">Home</a>
        <a href="add-student.jsp">Add Student</a>
        <a href="view-student.jsp">View Students</a>
    </div>

    <%
        StudentDAO dao = new StudentDAO();
        List<Student> students = dao.getAllStudents();
    %>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Course</th>
            <th>Marks</th>
            <th>Actions</th>
        </tr>
        <%
            if (students != null && !students.isEmpty()) {
                for (Student s : students) {
        %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getCourse() %></td>
            <td><%= s.getMarks() %></td>
            <td class="actions">
                <a href="editStudent?id=<%= s.getId() %>">Edit</a>
                <a href="deleteStudent?id=<%= s.getId() %>" onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6" style="text-align:center;">No student records found.</td>
        </tr>
        <% } %>
    </table>

</body>
</html>
