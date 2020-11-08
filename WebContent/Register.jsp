<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fn=request.getParameter("f1"); 
String ln=request.getParameter("l1"); 
String usern=request.getParameter("r1");
String email=request.getParameter("e1");
String ph=request.getParameter("p1"); 
String pw=request.getParameter("pass1"); 
String cp=request.getParameter("cpass1");

try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root");
		PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
		ps.setString(1,fn);
		ps.setString(2,ln);
		ps.setString(3,usern);
		ps.setString(4,email);
		ps.setString(5,ph);
		ps.setString(6,pw);
		ps.setString(7,cp);
			
		
		int n=ps.executeUpdate();
		out.println(n+"record updated");
		%><a href="Login.html">Login  </a>
		<% 
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