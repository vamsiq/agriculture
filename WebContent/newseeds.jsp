<%@ page import="java.sql.*" %>
<%! 
           Connection con = null;
		   Connection con1=null;
		    Statement st = null;
%>
<html>
<head>
<style>.LFont {	FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR:  black; FONT-FAMILY: verdana } .formText {	BORDER-RIGHT: #aaaaaa 1px solid; BORDER-TOP: #aaaaaa 1px solid; FONT-SIZE: 11px; BORDER-LEFT: #aaaaaa 1px solid; COLOR: pink; BORDER-BOTTOM: #aaaaaa 1px solid; FONT-FAMILY: verdana} .white10 {	FONT-SIZE: 10pt; COLOR: #ffcc00; FONT-FAMILY: Arial, Helvetica,sans-serif}.white10 A:link {	COLOR:  #ffcc00; TEXT-DECORATION: none}.white10 A:visited {	COLOR:#ffcc00; TEXT-DECORATION: none}.white10 A:active {	COLOR:#ffcc00; TEXT-DECORATION: none}.white10 A:hover {	COLOR:red; TEXT-DECORATION: none}</style>
</head> 
<body> 
<CENTER><H2>SELECTING Seeds</H2>
<%

String b1=request.getParameter("b");
String a1=request.getParameter("a");
String s1=request.getParameter("seed");

if(b1.equalsIgnoreCase("price"))
{
%>
<jsp:forward page="price.html"/>
<% 
}
else if(a1.equalsIgnoreCase("seed"))
	{
		if(s1.equalsIgnoreCase("low"))
		{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root"); 
			PreparedStatement pst=con.prepareStatement("select * from search  where type=? and category=?");
			pst.setString(1,s1);
			pst.setString(2,"seed");
			ResultSet rs=pst.executeQuery();
			out.println("<form action=Moreseeds.jsp><TABLE border=0><tr>");
			while(rs.next())
			{
				String s3=rs.getString("itemname");
				int price=rs.getInt("price");
				String seed=rs.getString("seedsname");
				System.out.println(s3+" "+price);
				/* for(int i=0;i<film.length;i++)
				{
					if(s3.indexOf(fil[i])!=-1)
					{
						out.println("<td><i>Price :'"+t+"'"+price+"/-</td><td>Film:</td><td>'"+seed+"' <td><input type=checkbox name=\""+s3+"\" value=\""+seed+"\"></td>");
						break;
					}
				} */
			}
			out.println("</tr><tr><TD><INPUT TYPE=submit VALUE=BUY></TD><TD></TR></table></form>");
			con.close();
		}
	}
%>
</CENTER>
</body>
</html>