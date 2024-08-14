<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%@page import="java.text.SimpleDateFormat"%>  
<%@page import="java.util.Date"%>  
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
@media (min-width: 40rem) {
  dl {
    display: table;
    padding: 2rem 4rem;
    border-radius: 1rem; }
  .dl-set {
    display: table-row; }
  dt, dd {
    display: table-cell; } }

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0; }

body {
  width: 100vw;
  min-height: 100vh;
  background-image: linear-gradient(to bottom right, #70c4c5, #232638);
  font-family: sans-serif;
  font-weight: 200; }
  @media (min-width: 40rem) {
    body {
      display: flex;
      align-items: center;
      justify-content: center; } }

dl {
  padding: 2rem;
  color: white;
  background-image: linear-gradient(to bottom right, #1c3131, #0c0f13);
  box-shadow: 0 12px 16px -12px rgba(0, 0, 0, 0.4), 0 2px 8px rgba(0, 0, 0, 0.3), 0 4px 16px rgba(0, 0, 0, 0.2); }

dt, dd {
  padding: 0.5rem 1rem; }

dt {
  color: rgba(255, 255, 255, 0.6); }
  dt::after {
    content: ':'; }

dd {
  color: rgba(255, 255, 255, 0.8); }

dl a {
  color: white; }
  dl a:hover {
    text-decoration: none; }

.tag {
  display: inline-block;
  padding: 0.2rem 0.5rem;
  border: 1px solid rgba(255, 255, 255, 0.4);
  border-radius: 0.25rem;
  color: rgba(255, 255, 255, 0.8);
  background-image: radial-gradient(circle at 20%, rgba(249, 17, 128, 0), rgba(249, 17, 128, 0.3), rgba(249, 156, 17, 0.2));
  font-size: 80%;
  font-weight: 400;
  text-transform: uppercase; }
  .tag + .tag {
    margin-left: 0.25rem; }
    
    
    a{
    
    text-decoration: none;
    
    
    }

</style>
</head>
<body>

<%

SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
Date date = new Date();  
System.out.println(formatter.format(date));



Connection con;

con = Dbcon.create();
PreparedStatement ps = con.prepareStatement("SELECT * FROM `humansecurity`.`drrequest` where status='request'   ");

ResultSet rs = ps.executeQuery();

while (rs.next()) {




%>

<dl>
  <div class="dl-set">
    <dt>Name</dt>
    <dd><strong><%=rs.getString(2) %></strong></dd>
  </div>
  <div class="dl-set">
    <dt>Email</dt>
    <dd><%=rs.getString(3) %></dd>
  </div>
  <div class="dl-set">
    <dt>To Address</dt>
    <dd><%=rs.getString(4) %></dd>
  </div>
  <div class="dl-set">
    <dt>Map Location</dt>
    <dd>
      <div class="tag"><a href="<%=rs.getString(5) %>">Google Map Link</a><span><i class="material-icons" style="font-size:28px;color:#3371DC">pin_drop</i></span></div>
    </dd>
  </div>
  <div class="dl-set">
    <dt>Date</dt>
    <dd><%=formatter.format(date)%></dd>
  </div>
 <!--  <div class="dl-set">
    <dt>Latest snapshot</dt>
    <dd>Recurring test <a href="#nogo">a month ago (24 April 2022)</a></dd>
  </div> -->
  <div class="dl-set">
    <dt>Tags</dt>
    <dd>
      <div class="tag"><a href="update1.jsp?&&id=<%=rs.getString(1)%>&&data=<%="Accept"%> ">Pickup</a></div>
      <div class="tag"><a href="update1.jsp?&&id=<%=rs.getString(1)%>&&data=<%="Reject"%> ">Not Pickup</a></div>
      
    </dd>
  </div>
</dl>
<%} %>
</body>
</html>