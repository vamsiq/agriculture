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
<body background=ban.GIF> 
<CENTER><h1>ONLINESHOPPING-SEEDS</H1><BR>
<CENTER><H2>SELECTING SEEDS</H2>
<%

String s2=request.getParameter("a").trim();




if(s2.equalsIgnoreCase("price"))
{%>
<jsp:include page="price.html" />
<%
}
else
if(s2.equalsIgnoreCase("cat"))
{%>
<jsp:forward page="cat.html" />
<%
}
else
if(s2.equalsIgnoreCase("company"))
{%>
<jsp:include page="company.html" />
<%
}
%>

</html>