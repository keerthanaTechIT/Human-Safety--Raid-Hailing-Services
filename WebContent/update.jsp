<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.Dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
String data=request.getParameter("data");

     if(data.equals("reject"))
     {


	String id=request.getParameter("id");
	
	String status="Reject";
	try{
		
		Connection con=Dbcon.create();
		Statement st=con.createStatement();
		st.executeUpdate("UPDATE humansecurity.driverapplication d SET status='" + status + "' where id='" + id + "' ");
		response.sendRedirect("driverrequest.jsp");
	
	}
	catch(Exception e){
		response.sendRedirect("error.jsp?inval id");
		System.out.println(e);
	}
	
     }
     else{
    	 
    	 String id=request.getParameter("id");
    		
    		String status="Accept";
    		try{
    			
    			Connection con=Dbcon.create();
    			Statement st=con.createStatement();
    			st.executeUpdate("UPDATE humansecurity.driverapplication d SET status='" + status + "' where id='" + id + "' ");
    			response.sendRedirect("driverrequest.jsp");
    		
    		}
    		catch(Exception e){
    			response.sendRedirect("error.jsp?inval id");
    			System.out.println(e);
    		}
    		
    	 
    	 
     }
%>
</body>
</html>