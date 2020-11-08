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
String reg=request.getParameter("R1");
String pass=request.getParameter("P1");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root");
	PreparedStatement ps=con.prepareStatement("select * from registration where username=? and password=?");
	
	ps.setString(1,reg);
	ps.setString(2,pass);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
	session.setAttribute("name",reg);
	%>
	<jsp:forward page="Main.html"/>
	<%
	}
	else{
		%>
		<jsp:include page="Login.html"/>
		
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