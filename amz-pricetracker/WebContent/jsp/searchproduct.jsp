<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amz-Pricetracking - Produkt suchen</title>
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
		<form action="../servletlogin" method="get">
			<fieldset>
				<legend>Produkt suchen</legend>
				<table>
					<tbody>
						<tr>
							<th><label for="productname">Name:</label></th>
							<td><input type="text" name="productname"
								placeholder="Produktname"required"></td>
						</tr>
					</tbody>
				</table>
			</fieldset>
		</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>