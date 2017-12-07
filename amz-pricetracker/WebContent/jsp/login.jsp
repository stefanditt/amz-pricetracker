<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amz-Pricetracking - Login</title>
<link rel="stylesheet" href="../style.css">
</head>
<body>
	<%
if(session.getAttribute("usermail")!=null) {
	response.sendRedirect("dashboard.jsp");
}
%>
	<%@ include file="header.jsp"%>
	<div id="content">
		<form action="../servletlogin" method="post">
			<fieldset>
				<legend>Einloggen</legend>
				<table>
					<tbody>
						<tr>
							<th><label for="email">Email:</label></th>
							<td><input type="email" name="email"
								title="muster@beispiel.de" placeholder="deine E-Mail"
								required="required"></td>
						</tr>
						<tr>
							<th><label for="password"> Password:</label></th>
							<td><input type="password" name="password"
								placeholder="dein Passwort" required="required" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="Login"> <input
								type="reset"></td>
						</tr>
					</tbody>
				</table>
			</fieldset>
		</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</body>
</html>