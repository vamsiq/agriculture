<%-- 
Document : logout 
Created on : 1 Nov, 2013, 6:43:53 PM 
Author : ASUS 
--%> 

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" autoFlush="true" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Expires" content="-1"> 
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"> 
<title>Logout</title> 
<script language="javascript"> 
window.history.forward(1); 
browser.cache.offline.enable = false; 
function noBack() 
{
	window.history.forward(1); 
} 

self.close() 

</script> 

</head> 
<body onload="noBack()" > 
<h1> 

<% 

request.getSession().invalidate(); 

response.sendRedirect("admin.jsp"); 


%> 
</h1> 
</body> 
</html> 