package de.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


@WebServlet("/servletlogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MyTHIPool")
	private DataSource ds;
	
	private boolean checklogin(Customer customer) throws ServletException {
		boolean check = false;
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement("SELECT * FROM customer_table WHERE Email=? and pw=?")) {
			
		pstmt.setString(1, customer.getEmail());
		pstmt.setString(2, customer.getPassword());
		
		java.sql.ResultSet rs = pstmt.executeQuery();
		check = rs.next();
		
		} catch (Exception ex) {
			throw new ServletException(ex.getMessage());
		}
		
		return check;
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = new Customer();
		customer.setEmail(request.getParameter("email"));
		customer.setPassword(request.getParameter("password"));
		if(checklogin(customer)==true) {
			HttpSession session = request.getSession();
			session.setAttribute("usermail", customer.getEmail());
			//request.setAttribute("customer", customer); //nötig?
			getServletContext().getRequestDispatcher("/jsp/dashboard.jsp").forward(request, response);
		}
		else {
			response.sendRedirect("jsp/login.jsp");
		}
	}

}
