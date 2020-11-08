<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>verify password</title>
</head>
<body>
<% 
String reg=request.getParameter("administrator");
String pass=request.getParameter("pword");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root");
	PreparedStatement ps=con.prepareStatement("select * from admin where adminuser=? and password=?");
	
	ps.setString(1,reg);
	ps.setString(2,pass);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
	session.setAttribute("name",reg);
	%>
	<jsp:forward page="administration.html"/>
	<%
	}
	else{
		%>
		<jsp:include page="admin.html"/>
		
		<% 
		out.println("incorrect password");
	}
	ps.close();
	con.close();
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>