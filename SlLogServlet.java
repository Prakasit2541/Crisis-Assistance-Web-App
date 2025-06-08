package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dbconn.dbconn;

/**
 * Servlet implementation class SlLogServlet
 */
@WebServlet("/SlLogServlet")
public class SlLogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlLogServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Not required for your login functionality.
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user input (email and password)
        String name = request.getParameter("mail");
        String pass = request.getParameter("password");

        System.out.println("Username: " + name);
        System.out.println("Password: " + pass);

        // Check if email and password are provided
        if (name == null || pass == null || name.isEmpty() || pass.isEmpty()) {
            response.sendRedirect("error.jsp"); // Redirect to error page if input is invalid
            return;
        }

        // Create session and store email
        HttpSession sess = request.getSession();
        sess.setAttribute("semail", name);

        try {
            // Establish database connection
            Connection con = dbconn.create();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM `mechanic`.`staffreg` WHERE email=? AND password=?");
            ps.setString(1, name);
            ps.setString(2, pass);

            // Execute query to check if user exists
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                sess.setAttribute("name",rs.getString(2));
                sess.setAttribute("pemail",rs.getString(3));

                response.sendRedirect("staffmain.jsp");
            } else {
                // If no valid user is found, redirect to error page
                response.sendRedirect("error.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page in case of database error
        }
    }
}
