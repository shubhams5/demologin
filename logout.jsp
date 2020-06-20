<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
    <link rel="stylesheet" type="text/css" href="style.css">
	<%
		session.invalidate();
	%>
	<h1 style="font-size: larger;
    color: black;">You have been successfully Logged Out</h1>
	<%
		getServletContext().getRequestDispatcher("/JSP2/home.jsp").include(request, response);
	%>
</body>
</html>
