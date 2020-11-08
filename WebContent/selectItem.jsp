<html>
<body background="ban.GIF" 
            bgcolor="chocalate"
                  text="BLUE"
                  vlink="red" link="blue">
<%

	String cat=request.getParameter("category");
	String type=request.getParameter("Quality");
	//out.println(cat+"  "+type);
	out.println("<CENTER><H2><font color=green face=arial>Select More options from this list</font></H2> <form action=insertItem.jsp method=post>Select itemname :<br>");
out.println("<input type=hidden name=cat value=\" "+cat+" \">");
out.println("<input type=hidden name=type value=\" "+type+" \">");
//========
if(cat.equalsIgnoreCase("wheat") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LW>Low Quality Wheat<BR>");
}
if(cat.equalsIgnoreCase("wheat") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HW>High quality wheat<BR>");
}
//=========
if(cat.equalsIgnoreCase("maize") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LM>Low Quality maize<BR>");
}
if(cat.equalsIgnoreCase("maize") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HM>High quality maize<BR>");
}
//=========
if(cat.equalsIgnoreCase("rice") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LR>Low Quality rice<BR>");
}
if(cat.equalsIgnoreCase("rice") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HR>High quality rice<BR>");
}
//=========
if(cat.equalsIgnoreCase("millets") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LMM>Low Quality millets<BR>");
}
if(cat.equalsIgnoreCase("millets") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HMM>High quality millets<BR>");
}
//=========
if(cat.equalsIgnoreCase("pulses") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LP>Low Quality pulses<BR>");
}
if(cat.equalsIgnoreCase("pulses") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HP>High quality pulses<BR>");
}
//=========
if(cat.equalsIgnoreCase("sugarcane") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LS>Low Quality sugarcane<BR>");
}
if(cat.equalsIgnoreCase("sugarcane") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HS>High quality sugarcane<BR>");
}
//=========
if(cat.equalsIgnoreCase("tobacco") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LT>Low Quality tobacco<BR>");
}
if(cat.equalsIgnoreCase("tobacco") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HT>High quality tobacco<BR>");
}
//=========
if(cat.equalsIgnoreCase("cotton") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LC>Low Quality cotton<BR>");
}
if(cat.equalsIgnoreCase("cotton") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HC>High quality cotton<BR>");
}
//=========
if(cat.equalsIgnoreCase("jute") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LJ>Low Quality jute<BR>");
}
if(cat.equalsIgnoreCase("jute") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HJ>High quality jute<BR>");
}
//=========
if(cat.equalsIgnoreCase("oilseeds") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LO>Low Quality oilseeds<BR>");
}
if(cat.equalsIgnoreCase("oilseeds") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HO>High quality oilseeds<BR>");
}
//=========
if(cat.equalsIgnoreCase("coffee") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LCC>Low Quality coffee<BR>");
}
if(cat.equalsIgnoreCase("coffee") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HCC>High quality coffee<BR>");
}
//=========
if(cat.equalsIgnoreCase("coconut") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LCO>Low Quality coconut<BR>");
}
if(cat.equalsIgnoreCase("coconut") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HCO>High quality coconut<BR>");
}
//=========
if(cat.equalsIgnoreCase("tea") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LTE>Low Quality tea<BR>");
}
if(cat.equalsIgnoreCase("tea") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HTE>High quality tea<BR>");
}
//=========
if(cat.equalsIgnoreCase("rubber") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LRU>Low Quality rubber<BR>");
}
if(cat.equalsIgnoreCase("rubber") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HRU>High quality rubber<BR>");
}
//=========
if(cat.equalsIgnoreCase("cocoa") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LCC>Low Quality cocoa<BR>");
}
if(cat.equalsIgnoreCase("cocoa") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HCC>High quality cocoa<BR>");
}
//=========
if(cat.equalsIgnoreCase("fruits") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LF>Low Quality fruits<BR>");
}
if(cat.equalsIgnoreCase("fruits") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HF>High quality fruits<BR>");
}
//=========
if(cat.equalsIgnoreCase("vegetables") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LV>Low Quality vegetables<BR>");
}
if(cat.equalsIgnoreCase("vegetables") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HV>High quality vegetables<BR>");
}
//=========
if(cat.equalsIgnoreCase("nuts") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LN>Low Quality nuts<BR>");
}
if(cat.equalsIgnoreCase("nuts") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HN>High quality nuts<BR>");
}
//=========
if(cat.equalsIgnoreCase("ornamentals") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LOO>Low Quality ornamentals<BR>");
}
if(cat.equalsIgnoreCase("ornamentals") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HOO>High quality ornamentals<BR>");
}
//=========
if(cat.equalsIgnoreCase("flowers") &&  type.equalsIgnoreCase("low"))
{
out.println("<input type=radio name=itemname value=LFL>Low Quality flowers<BR>");
}
if(cat.equalsIgnoreCase("flowers") &&  type.equalsIgnoreCase("high"))
{
	out.println("<input type=radio name=itemname value=HFL>High quality flowers<BR>");
}
//=========


//=============
out.println("&nbsp;&nbsp;Quantity &nbsp;&nbsp;<input type=text name=quan><br><br>");
out.println("Seeds name&nbsp;&nbsp;<input type=text name=seedsname><br><br>");
out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price&nbsp;&nbsp;&nbsp;<input type=text name=price><br><br>");
out.println("Company&nbsp;&nbsp;<select name=company><option value=comp1>RED STALK</option><option value=comp2>BLUE STALK</option><option value=comp3>GREEN STALK</option><option value=comp3>YELLOW STALK</option></select><br><br>");
out.println("<input type=submit value=AddseedstoShop>&nbsp;&nbsp;&nbsp;");
out.println("<a href=addseeds.html><font color=#CC0000 size=2 face=Arial, Helvetica, sans-serif><strong>Home</strong></font></a>");








	%>
