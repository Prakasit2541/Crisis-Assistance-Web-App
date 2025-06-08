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
 * Servlet implementation class updateserlet
 */
@WebServlet("/updateserlet")
public class updateserlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateserlet() {
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
		String userId = request.getParameter("postId");
	 //   String status = request.getParameter("status");
	    System.out.println("Post ID: " + userId);


	    Connection con = null;
	    PreparedStatement ps = null;
	    int result = 0;
	    
	    try {
	        con = dbconn.create();
	        ps = con.prepareStatement("UPDATE mechanic.payment SET workstatus = ? WHERE id = ?");
	        ps.setString(1, "COMPLETED");
	        ps.setString(2, userId);


	        
	        result = ps.executeUpdate();
	        
	    } catch (Exception e) {
	        e.printStackTrace(); 
	    } finally {
	        try {
	            if (ps != null) ps.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    
	    if (result > 0) {  // If update is successful
	        response.sendRedirect("tlhome.jsp"); 
	    } else {
	        response.sendRedirect("error.jsp");  
	    }
	}

}
