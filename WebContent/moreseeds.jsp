<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" session="true" %>

<HTML>
<HEAD>
<TITLE> SEEDS WISE </TITLE>
</HEAD>

<BODY background="ban.GIF">
<h2><font color=black><center>Search Page</center></font></h2>
<br>
<hr color=#bb055E>
<form action="FinalProcessing.jsp" method="post">
<% 

request.getSession(true);
String s[]=new String[30];
String sr="";
String user=(String)session.getAttribute("username");
   Enumeration cd_param = request.getParameterNames();
   String param = null;
   int counter = 0;

  
int i=0;
while(cd_param.hasMoreElements())
{
s[i]=(String)cd_param.nextElement();
if(i==0)
sr="'"+s[i]+"'";
else
sr+=",'"+s[i]+"'";
i++;
}
%>
     
<%
try{ 
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root");   
		Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root");
int u=-1;

Statement st=con.createStatement();

PreparedStatement ps;
ResultSet rs=st.executeQuery("select *  from search where itemname in("+sr+")");
System.out.println("Statement executed");
out.println("<html><head><style>.LFont {	FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: black; FONT-FAMILY: verdana }.formText {	BORDER-RIGHT: #aaaaaa 1px solid; BORDER-TOP: #aaaaaa 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #aaaaaa 1px solid; COLOR: black; BORDER-BOTTOM: #aaaaaa 1px solid; FONT-FAMILY: verdana}</style></head> <body background=ban.GIF  text=red > <form action=Inter.jsp >");

        
while(rs.next())
{
String	t1=rs.getString(2);
int	t=rs.getInt(3);
String 	t2=rs.getString(6);


	 ps=con1.prepareStatement("insert into cart values(?,?,?)");
	 
ps.setString(1,t1);
ps.setInt(2,t);
ps.setString(3,t2);
 u=ps.executeUpdate();
	
}


con.close();
con1.close();
if(u>0)
	{
out.println("<b class=LFONT>Selected Items are placed in the Cart<br> Do u want to select more ?<br><br>");

out.println("<br><input type=submit name=button value=yes>");
out.println("&nbsp;&nbsp;&nbsp;<input type=submit name=button value=no>");
out.println("</form></BODY></HTML>");
}
}
catch (Exception e)
{
	out.println(e); }
%>


