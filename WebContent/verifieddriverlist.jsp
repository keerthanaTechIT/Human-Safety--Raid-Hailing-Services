<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">


<style>
.container {
	padding: 2rem 0rem;
}

</style>
</head>
<body>


<div class="container">
  <div class="row">
    <div class="col-12">
      <table class="table table-bordered" aria-label="TABLE">
        <thead role="rowgroup">
          <tr role="row">
           <!--  <td role="cell">
            </td> -->
            <th role="columnheader" scope="col">Name</th>
            <th role="columnheader" scope="col">Last Name</th>
            <th role="columnheader" scope="col">Email</th>
            <th role="columnheader" scope="col">Gender</th>
            <th role="columnheader" scope="col">Village</th>
            <th role="columnheader" scope="col">City</th>
             <th role="columnheader" scope="col">Photo</th>
          </tr>
        </thead>
        <%
        Connection con;
        
        
        con=Dbcon.create();
        PreparedStatement ps1=con.prepareStatement("SELECT * FROM `humansecurity`.`urequest` where status='verified' ");

        ResultSet rs1=ps1.executeQuery();
        
        while(rs1.next())
        {
        
       	 
       	 String vdemail=rs1.getString(5);
        
              
              con=Dbcon.create();
              PreparedStatement ps=con.prepareStatement("SELECT * FROM `humansecurity`.`driverapplication` where status='Accept'  ");
            
              ResultSet rs=ps.executeQuery();
              
              while(rs.next())
              {
           
				%>
        
        
        
        <tbody role="rowgroup">
          <tr role="row">
            <!-- <td>
              <input type="radio" aria-label="FIRST RADIO">
            </td> -->
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><img src="Locals/<%=rs.getString(8)%>" alt="" width="70"
						height="80"></td>
          </tr>
          <%}} %>
        </tbody>
      </table>
    </div>
  </div>
</div>
</body>
</html>