package de.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.annotation.Resource;
import javax.resource.cci.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/servletsignup")
public class ServletSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(lookup="jdbc/MyTHIPool")
	private DataSource ds;
	
	private void setsignup(Customer customer) throws ServletException {
		String[] generatedKeys = new String[] {"CustNr"};
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO customer_table (Name,Email,pw) VALUES (?,?,?)",
				generatedKeys)) {
			
		pstmt.setString(1, customer.getName());
		pstmt.setString(2, customer.getEmail());
		pstmt.setString(3, customer.getPassword());
		pstmt.executeUpdate();
		
		java.sql.ResultSet rs = pstmt.getGeneratedKeys();
		while(rs.next()) {
			customer.setId(rs.getLong(1));
		}
		} catch (Exception ex) {
			throw new ServletException(ex.getMessage());
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pw = new String((String)request.getParameter("password"));
		String pwre = new String((String)request.getParameter("passwordrepeat"));
		if(pw.equals(pwre)) {
		Customer customer = new Customer();
		customer.setPassword((String)request.getParameter("password"));
		customer.setEmail((String)request.getParameter("email"));
		customer.setName((String)request.getParameter("name"));
		setsignup(customer);
		response.sendRedirect("jsp/login.jsp");
		}
		else {
			response.sendRedirect("jsp/signup.jsp");
		}
	}

}
