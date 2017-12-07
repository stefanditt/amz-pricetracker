<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<base href="${pageContext.request.requestURI}" />
</head>
<body>
	<div id="header">
		<h1>Amz Pricetracking</h1>
	</div>
	<div id="navigation">
		<c:choose>
			<c:when test="${empty usermail}">
				<a id="menu-item-01" class="menu-items" href="../index.jsp">Startseite</a>
				<a id="menu-item-02" class="menu-items" href="login.jsp">Login</a>
				<a id="menu-item-03" class="menu-items" href="signup.jsp">Registrieren</a>
			</c:when>
			<c:otherwise>
				<a id="menu-item-04" class="menu-items" href="dashboard.jsp">Dashboard</a>
				<a id="menu-item-05" class="menu-items" href="addproduct.jsp">Produkt
					hinzufügen</a>
				<a id="menu-item-06" class="menu-items" href="searchproduct.jsp">Produkt
					suchen</a>
				<a id="menu-item-07" class="menu-items" href="logout.jsp">Ausloggen</a>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>