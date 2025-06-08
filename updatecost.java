package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dbconn.dbconn;

/**
 * Servlet implementation class updatecost
 */
@WebServlet("/updatecost")
public class updatecost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatecost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int postId = Integer.parseInt(request.getParameter("postId"));
		String name = request.getParameter("name");
	        String servicename = request.getParameter("email"); // Corrected parameter name
	        String mentcost = request.getParameter("mentcost");
	        String domainame = request.getParameter("doname");

     System.out.println("post id"+postId);
     System.out.println(name);
     System.out.println(servicename);

     System.out.println(mentcost);
     
     
	        Connection con = null;
	        PreparedStatement ps = null;

	        try {
	            con = dbconn.create();
	            String sql = "INSERT INTO mechanic.payment (name, sname, amount, cdnumber, status,doname,workstatus,postid) VALUES (?, ?, ?, ?, ?,?,?,?)";

	            ps = con.prepareStatement(sql);

	            ps.setString(1, name);
	            ps.setString(2, servicename);
	            ps.setString(3, mentcost);
	            ps.setString(4, "78");

	             // Assuming postId is cdnumber
	            ps.setString(5, "pending");  // Set a default status (adjust as needed)
	            ps.setString(6, domainame);  // Set a default status (adjust as needed)
	            ps.setString(7, "REQUEST");
	            ps.setInt(8, postId);



	            int result = ps.executeUpdate();
	            if (result > 0) {
	                System.out.println("Record successfully inserted.");
	                response.sendRedirect("tlhome.jsp");
	            } else {
	                System.out.println("Insert failed.");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("mentor_ideas.jsp?error=true");
	        }

	        }
	}


