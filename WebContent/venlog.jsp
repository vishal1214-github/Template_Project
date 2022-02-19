<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<%
String v1=request.getParameter("vnm");
String v2=request.getParameter("vem");
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/vendorvanisb","root","sonkarvishal");

	Statement st=c.createStatement();
	String k="select  * from reg where name='"+v1+"' and email='"+v2+"'";
	ResultSet rs=st.executeQuery(k);
	if(rs.next()) {
		 session.setAttribute("name", v1);
		 response.sendRedirect("index.jsp");
	}
	else{  
		response.sendRedirect("login.jsp");
	}
	c.close();   
	
   }
   catch(Exception e)
   {
	   System.out.println(e);
   }
%>


</body>
</html>
</body>
</html>
