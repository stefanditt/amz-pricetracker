<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="customer" scope="request" class="de.demo.Customer" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amz-Pricetracking - Dashboard</title>
<base href="${pageContext.request.requestURI}" />
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
		<div>Hallo ${usermail}, willkommen in deinem Dashboard!</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>