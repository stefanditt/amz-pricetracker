<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amz-Pricetracking - Sign up</title>
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
		<p>Jetzt kostenlos registrieren!</p>
		<form action="../servletsignup" method="post">
			<fieldset>
				<legend>Registrieren</legend>
				<table>
					<tbody>
						<tr>
							<th><label for="name">Name:</label></th>
							<td><input type="text" name="name" placeholder="dein Name"
								pattern=".{6,40}" required="required"></td>
						</tr>
						<tr>
							<th><label for="email">Email:</label></th>
							<td><input type="email" name="email"
								placeholder="deine E-Mail" pattern=".{6,40}" required="required">
							</td>
						</tr>
						<tr>
							<th><label for="password">Password:</label></th>
							<td><input type="password" name="password"
								placeholder="dein Passwort" pattern=".{6,10}"
								required="required"></td>
						</tr>
						<tr>
							<th><label for="password">Password wiederholen:</label></th>
							<td><input type="password" name="passwordrepeat"
								placeholder="dein Passwort" pattern=".{6,10}" required="true">
							</td>
						</tr>
						<tr>
							<td><input type="submit"> <input type="reset">
							</td>
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