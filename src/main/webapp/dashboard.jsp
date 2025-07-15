<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session == null || session.getAttribute("admin") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
    String username = (String) session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e3f2fd, #ffffff);
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #2196f3;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 28px;
        }
        .welcome {
            text-align: center;
            margin: 25px auto;
            font-size: 18px;
            color: #333;
        }
        .nav {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 30px;
        }
        .nav a {
            text-decoration: none;
            padding: 12px 25px;
            background-color: #2196f3;
            color: white;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .nav a:hover {
            background-color: #1976d2;
        }
        .footer {
            text-align: center;
            margin-top: 60px;
            color: #888;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Student Management Dashboard</h1>
    </div>

    <div class="welcome">
        Welcome, <strong><%= username %></strong>! What would you like to do today?
    </div>

    <div class="nav">
        <a href="add-student.jsp">➕ Add Student</a>
        <a href="view-student.jsp">📋 View Students</a>
        <a href="logout">🚪 Logout</a>
    </div>

    <div class="footer">
        &copy; 2025 - Student Management System. Designed with care 💙
    </div>

</body>
</html>
