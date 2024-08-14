<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<style>

#namanyay-search-btn {
background:#0099ff;
color:white;
font: 'trebuchet ms', trebuchet;
padding:10px 20px;
border-radius:0 10px 10px 0;
-moz-border-radius:0 10px 10px 0;
-webkit-border-radius:0 10px 10px 0;
-o-border-radius:0 10px 10px 0;
border:0 none;
font-weight:bold;
}
 
#namanyay-search-box {
background: #eee;
padding:10px;
 border-radius:10px 0 0 10px;
-moz-border-radius:10px 0 0 10px;
-webkit-border-radius:10px 0 0 10px;
-o-border-radius:10px 0 0 10px;
border:0 none;
width:160px;
 }

</style>
</head>
<body>
<form id="searchthis" action="getdriver.jsp" style="display:inline;" method="post">
<!-- Search box for blogger by Namanyay Goel //-->
<input id="namanyay-search-box" name="location" size="40" type="text" placeholder="Enter To Location"/>
<input id="namanyay-search-btn" value="Search" type="submit"/>
</form>

<% 
String data=session.getAttribute("data").toString();
		System.out.println("data  "+data);

if(data.equals("enter"))
{
String uemail=session.getAttribute("uemail").toString();
		String location=session.getAttribute("location").toString();
 Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `humansecurity`.`driverapplication` where city LIKE '"+location+"' and status='Accept' ");
     
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(8);
    	  
    	   
       %>
       <br><br>
<div class="col-md-4">
<div class="card">
	

	  <div class="card-body">
	 
	  <p class="card-text"><img class="card-img-top" src="Locals/<%=image%>" width="40" height="150" alt="Card image cap"></p>
	  <p class="card-text">Name : <%=rs.getString(2)%></p>    
   <p class="card-text"> Email: <%=rs.getString(4)%></p>
    <p class="card-text">Gender : <%=rs.getString(5)%></p>
    <p class="card-text"> Available Area : <%=rs.getString(7)%></p>
    
  <%--   <p class="card-text">License: <%=rs.getString(8)%></p> --%>
       
    <a href="addurequest.jsp?id=<%=rs.getString(1)%>&&uemail=<%=uemail%>&&image=<%=image%>&&dname=<%=rs.getString(2)%>&&demail=<%=rs.getString(4)%>&&dgender=<%=rs.getString(5)%>&&darea=<%=rs.getString(7)%> "><button type="button" class="btn btn-primary">Check</button></a>  
<%--    <a href="rejected1.jsp?id=<%=rs.getString(1) %>"><button type="button" class="btn btn-primary">Reject</button></a>  
 --%>  
   <!--       <a href="approved.jsp?"><button type="button" class="btn btn-danger">Rejected</button></a>  --> 
   
     

     
     
    
      </div>
      </div>
      </div>

	<%}} %>
	</div>
 </div>


</body>
</html>