package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.PreparedStatement;
import Dbconn.dbconn;


/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentServlet() {
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
	    String amount = request.getParameter("amount");
	    String postId = request.getParameter("postIds");

	    System.out.println("Post ID: " + userId);
	    System.out.println("Amount: " + amount);
	    System.out.println("Second Ids: " + postId);

	    
	    Connection con = null;
	    PreparedStatement ps1 = null;
	    PreparedStatement ps2 = null;
	    int result = 0;

	    try {
	        con = dbconn.create();

	        // First update: Update payment status and amount
	        ps1 = con.prepareStatement("UPDATE mechanic.payment SET amount = ?, status = ? WHERE id = ?");
	        ps1.setString(1, amount);
	        ps1.setString(2, "SUCCESS");
	        ps1.setString(3, userId);

	        result = ps1.executeUpdate();

	        // Second update: Update mechanic.old where postId matches
	        if (result > 0) {
	            ps2 = con.prepareStatement("UPDATE mechanic.old SET status1 = ? WHERE id = ?");
	            ps2.setString(1, "SUCCESS");
	            ps2.setString(2, postId); // `userId` here is same as `postId`
	            ps2.executeUpdate();
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (ps1 != null) ps1.close();
	            if (ps2 != null) ps2.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    if (result > 0) {
	        response.sendRedirect("staffmain.jsp");
	    } else {
	        response.sendRedirect("error.jsp");
	    }
	}


}
