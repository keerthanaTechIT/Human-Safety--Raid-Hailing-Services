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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<style>
.table-tooltip {
    position: relative;
}
.table {
    width:100%;
    border-radius: 10px;
       border-collapse: collapse;
    background: #616161;
    color: #fff;
}
tr {
   border-bottom: 2px solid #b9b9b9;;
}
tbody tr:last-child {
  border:0;
}
thead tr {
   border-bottom: 2px solid #b9b9b9;
}
tr,td,th {
    padding:10px;
    text-align:center;
  
}
th {
    font-weight: 900;
    text-transform: uppercase;
    background:black;
}
th:first-child {
      border-top-left-radius: 10px;
}
th:last-child {
      border-top-right-radius: 10px;
}
.tr-tooltip {
    background-color: #000;
    zoom: 1;
    opacity: 0.5;
    filter: alpha(opacity=50);
    position: absolute;
    color: #fff;
    text-align: center;
    vertical-align: middle;
}
td {
    position:relative;
  
}
td:hover .tooltip{
    display:flex;
}
.tooltip{
    background: black;
    padding:5px 10px;
    border-radius:5px;
    color:#fff;
    text-transform: capitalize;
    left: calc(50% - 25px);
    top: 35px;
    position: absolute;
    z-index: 1030;
    display: block;
    font-size: 12px;
    line-height: 1.4;
    visibility: visible;
    filter: alpha(opacity=0);
    display:none;
    white-space: pre-line;
    word-break: break-all;
    max-width:40px;
}
.tooltip:after {
    content: "";
    position: absolute;
    top: -5px;
    right: 50%;
    margin-top: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: transparent #000 transparent transparent;
    transform: rotate(90deg) translateY(-50%);
}

a{
text-decoration: none;
color:white;
}
a:hover{
color:white;
}
</style>
</head>
<body>
<table class="table">
   <thead>
      <tr>
         <th>License</th>
         <th>Driver Name</th>
         <th>Driver Email</th>
         <th>Gender</th>
         <th>Driving Area</th>
         <th>Status</th>
         
         <th>Verification</th>
      </tr>
   </thead>
   <%

				Connection con;

				con = Dbcon.create();
				PreparedStatement ps = con.prepareStatement("SELECT * FROM `humansecurity`.`urequest` where status IN('request to journey')  ");

				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
			%>
   
   
   
   
   
   
   
   <tbody>
      <tr>
         <td><img src="Locals/<%=rs.getString(6) %>" alt="" width="60" height="80"></td>
         <td>
           <%=rs.getString(4)%>
         </td>
         <td>
          <%=rs.getString(5)%>
         </td>
         <td>
          <%=rs.getString(7)%>
         </td>
          <td>
          <%=rs.getString(8)%>
         </td>
          <td>
          <%=rs.getString(9)%>
         </td>
         <td>
         <form action="sendmail" method="post">
         <input type="hidden" name="data" value="<%="verified"%>">
         <input type="hidden" name="id" value="<%=rs.getString(1)%>">
         <button type="submit" class="btn btn-primary">Verified</button>
          </form>
              
             <br> 
              
        <form action="sendmail" method="post">
         <input type="hidden" name="data" value="<%=" not verified"%>">
         <input type="hidden" name="id" value="<%=rs.getString(1)%>">
         <button type="submit" class="btn btn-danger">Accused</button>
          </form>         
         </td>>
   </tr>
   </tbody>
   <%} %>
</table>
</body>
</html>