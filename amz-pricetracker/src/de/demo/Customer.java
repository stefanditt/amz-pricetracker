package de.demo;

import java.io.Serializable;
import java.sql.Connection;

import javax.resource.cci.ResultSet;
import javax.servlet.ServletException;

public class Customer implements Serializable {
	private String name = null;
	private String email = null;
	private String password = null;
	private Long id = null;
	
	
	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}



	/*public boolean checklogin() {
		if(this.getEmail().equals("max.mustermann@mustermail.de") && this.getPassword().equals("test12345")) {
			return true;
		}
		else {
			return false;
		}
	
	}*/
	

	
}


