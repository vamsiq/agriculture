<%@ page import="java.sql.*" %>
<%

     String cat=request.getParameter("cat").trim();
	 String type=request.getParameter("type").trim();
	 String itemname=request.getParameter("itemname").trim();
	 int quan=Integer.parseInt(request.getParameter("quan").trim());
	 String seedsname=request.getParameter("seedsname").trim();
	 int  price=Integer.parseInt(request.getParameter("price").trim());
	 String comp=request.getParameter("company").trim();

	 System.out.println(cat+" "+type+" "+itemname+"  "+quan+" "+seedsname+" "+price+" "+comp );

		try{
			Class.forName("com.mysql.jdbc.Driver");  
		 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/agriculture","root","root"); 
				PreparedStatement psmt=con.prepareStatement("insert into search values(?,?,?,?,?,?,?)");
				psmt.setInt(1,quan);
				psmt.setString(2,itemname);
				psmt.setInt(3,price);
				psmt.setString(4,type);
				psmt.setString(5,cat);
				psmt.setString(6,seedsname);
				psmt.setString(7,comp);
				int ie=psmt.executeUpdate();
				if(ie>0)
			    {
					out.println("<html><body background=ban.GIF bgcolor=chocalate text=BLUE                  vlink=red link=blue><center><h2><br><br>The seeds are added successfully<br>Want to add another seeds <a href=addseeds.html>Go Back</a><br>Home Page<a href=administration.html>Go</a> ");

				}
				else
			{
					out.println("<html><body background=ban.GIF bgcolor=chocalate text=BLUE  vlink=red link=blue><center><h2><br><br>Error Occurred Due to the adding the seeds ,Try again<a href=addseeds.html>Go</a>");

			}
		}catch(Exception e){
		out.println("<html><body background=ban.GIF bgcolor=chocalate text=BLUE  vlink=red link=blue><center><h2><br><br>Error Occurred Due to the adding the cds ,Try again<a href=addseeds.html>Go</a>");
		System.out.println(e);
		}
	
				

		%>