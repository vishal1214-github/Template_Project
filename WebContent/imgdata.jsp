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
<%@ page import="java.io.*" %> 
<%


try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql//localhost:3306/vendorvanisb","root","sonkarvishal");  
String q="insert into idximg values(?,?,?)";            
PreparedStatement ps=con.prepareStatement(q);   
ps.setInt(1,1);   
FileInputStream fin=new FileInputStream("H:/1.jpg"); 
ps.setString(2,file.getName());
ps.setBinaryStream(2,fin,fin.available());    
ps.executeUpdate();  
System.out.println("Done....");  
          
con.close();  
}
catch (Exception e)
{
	e.printStackTrace();
}  



%>

</body>
</html>