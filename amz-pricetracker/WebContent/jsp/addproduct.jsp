<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amz-Pricetracking - Produkt hinzufügen</title>
<link rel="stylesheet" href="../style.css">
</head>
<body>
	<%
if(session.getAttribute("usermail")==null) {
	response.sendRedirect("login.jsp");
}
%>
	<%@ include file="header.jsp"%>
	<div id="content">
		<form action="../servletaddproduct" method="get">
			<fieldset>
				<legend>Produkt hinzufügen</legend>
				<table>
					<tbody>
						<tr>
							<th><label for="email">ASIN:</label></th>
							<td><input type="text" name="asin" placeholder="Amazon ASIN"required">
							</td>
						</tr>
						<tr>
							<td><input type="submit" value="Produkt hinzufügen">
								<input type="reset"></td>
						</tr>
					</tbody>
				</table>
			</fieldset>
		</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>