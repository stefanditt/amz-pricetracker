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


@WebServlet("/servletaddproduct")
public class ServletAddproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	@Resource(lookup="jdbc/MyTHIPool")
	private DataSource ds;
	
	// Noch nicht funktionsfähig
	
	/*private void setaddproduct(Product product) throws ServletException {
		
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement("SELECT * FROM product_table WHERE Asin=?")) {
			
		pstmt.setString(1, product.getName());
		pstmt.setString(2, product.getEmail());
		pstmt.setString(3, product.getPassword());
		
		java.sql.ResultSet rs = pstmt.executeQuery();
		
		}
		} catch (Exception ex) {
			throw new ServletException(ex.getMessage());
		}
	}*/

	/*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		product.setAsin(request.getParameter("asin"));
		if(asin.equals()
	}*/

}
