package com.student.controller;

import com.student.dao.UserDAO;
import com.student.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        UserDAO dao = new UserDAO();
        User existing = dao.getUserByUsername(username);

        if (existing != null) {
            response.sendRedirect("index.jsp?exists=1");
        } else if (!password.equals(confirmPassword)) {
            response.sendRedirect("index.jsp?mismatch=1");
        } else {
            dao.addUser(username, password);
            request.getSession().setAttribute("admin", username);
            response.sendRedirect("dashboard.jsp");
        }
    }
}
