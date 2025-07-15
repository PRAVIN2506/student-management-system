<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session != null && session.getAttribute("admin") != null) {
        response.sendRedirect("dashboard.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #2196f3, #e3f2fd);
            margin: 0;
            padding: 40px;
        }
        .container {
            background-color: #fff;
            max-width: 900px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #aaa;
            display: flex;
            justify-content: space-between;
        }
        .intro {
            flex: 1;
            padding-right: 20px;
        }
        .intro h1 {
            color: #2196f3;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .intro p {
            color: #333;
            font-size: 16px;
        }
        .form-box {
            flex: 1;
        }
        h2 {
            text-align: center;
            color: #2196f3;
        }
        form {
            margin-top: 15px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #2196f3;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #1976d2;
        }
        .error {
            color: red;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="intro">
            <h1>Welcome to Student Management System</h1>
            <p>
                Organize student records effortlessly. Whether you're adding new students or reviewing existing data, you're in control.
                Log in or register below to continue.
            </p>
        </div>

        <div class="form-box">
            <h2>Login</h2>
            <form action="login" method="post">
                <input type="text" name="username" placeholder="Username" required />
                <input type="password" name="password" placeholder="Password" required />
                <input type="submit" value="Login" />
            </form>
            <% if (request.getParameter("error") != null) { %>
                <p class="error">Incorrect username or password.</p>
            <% } %>

            <h2>Register</h2>
            <form action="register" method="post">
                <input type="text" name="username" placeholder="New Username" required />
                <input type="password" name="password" placeholder="New Password" required />
                <input type="password" name="confirmPassword" placeholder="Confirm Password" required />
                <input type="submit" value="Register & Login" />
            </form>
            <%
                String exists = request.getParameter("exists");
                String mismatch = request.getParameter("mismatch");
                if (exists != null) { %>
                <p class="error">Username already exists. Try another.</p>
            <% } else if (mismatch != null) { %>
                <p class="error">Passwords do not match.</p>
            <% } %>
        </div>
    </div>
</body>
</html>
