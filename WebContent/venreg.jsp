<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%


String v1=request.getParameter("vnm");
String v2=request.getParameter("vem");
String v3=request.getParameter("vps");




   try    
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vendorvanisb","root","sonkarvishal");
	   Statement  st=con.createStatement(); 	
	   int k=st.executeUpdate("insert into reg values('"+v1+"','"+v2+"','"+v3+"');");
	   session.setAttribute("msg","Data Successfull Inserted"); 
	   response.sendRedirect("login.jsp");
   }
   catch(Exception e)
   {
	   System.out.println(e);
   }
%>


</body>
