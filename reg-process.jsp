<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String userid=request.getParameter("userid");
String password=request.getParameter("password");
try
{
	Connection connection = null;
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/user?autoReconnect=true&useSSL=false", "root", "shubham123");
	Statement st=connection.createStatement();
	int i=st.executeUpdate("insert into udata(uname,pass,fname,lname,email)values('"+userid+"','"+password+"','"+fname+"','"+lname+"','"+email+"')");
	%>
	<h1>Thank you for register ! Please Login to continue.</h1>
	<%
		getServletContext().getRequestDispatcher("/JSP2/home.jsp").include(request, response);
	%>
	<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
