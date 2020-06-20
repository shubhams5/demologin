<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
		<link rel="stylesheet" type="text/css" href="style.css">
	<%!String userdbName;
	String userdbPsw;
	String userdbfname;
	String userdblname;%>
	<%
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/user?autoReconnect=true&useSSL=false";
	String user = "root";
	String dbpsw = "shubham123";

	String sql = "SELECT * FROM udata where uname=? and pass=?";

	String name = request.getParameter("name");
	String password = request.getParameter("password");

	if (!(name.equals(null) || name.equals("") && !(password.equals(null) || password.equals("")))) {
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, user, dbpsw);
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if (rs.next()) {
		userdbName = rs.getString("uname");
		userdbPsw = rs.getString("pass");
		userdbfname = rs.getString("fname");
		userdblname = rs.getString("lname");;
		if (name.equals(userdbName) && password.equals(userdbPsw)) {
			session.setAttribute("name", userdbName);
			session.setAttribute("fname", userdbfname);
			session.setAttribute("lname", userdblname);
			response.sendRedirect("welcome.jsp");
		}
			} else
		response.sendRedirect("error.jsp");
			rs.close();
			ps.close();
		} catch (SQLException sqe) {
			out.println(sqe);
		}
	} else {
	%>
	<center>
		<p style="color: red">Error In Login</p>
	</center>
	<%
		getServletContext().getRequestDispatcher("/JSP2/home.jsp").include(request, response);
	}
	%>
</body>
</html>
