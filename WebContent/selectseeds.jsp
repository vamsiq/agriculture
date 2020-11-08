<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>selecting seeds</title>
</head>
<body>
<%
String a1=request.getParameter("a").trim();

if(a1.equalsIgnoreCase("wheatResources"))
{
%>
<jsp:forward page="wheatResources.html" />
<%
}
else if(a1.equals("MaizeResources"))
{%>
<jsp:forward page="MaizeResources.html" />
<%
}
else if(a1.equals("RiceResources"))
{%>
<jsp:forward page="RiceResources.html" />
<%
}
else if(a1.equals("MilletsResources"))
{%>
<jsp:forward page="MilletsResources.html" />
<%
}
else if(a1.equals("PulseResources"))
{%>
<jsp:forward page="PulseResources.html" />
<%
}


%>
</body>
</html>