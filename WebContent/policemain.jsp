<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import=" dbcon.Dbcon"%>
       
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* header {
  background-color: #fff;
  box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
  padding: 10px;
} */

nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 960px;
  margin: 0 auto;
}

.logo {
  font-size: 28px;
  font-weight: bold;
  color: #333;
}

.logo a {
  text-decoration: none;
  color: #333;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  display: flex;
}

nav li {
  margin: 0 10px;
}

nav li a {
  display: block;
  color: white;
  text-decoration: none;
  text-transform: uppercase;
  font-weight: bold;
  padding: 10px;
  transition: all 0.3s ease-in-out;
}

nav li a:hover {
  background-color: #333;
  color: white;
  border-radius: 4px;
}
body{
background-image: url("https://c4.wallpaperflare.com/wallpaper/13/387/772/usa-vintage-criminal-police-wallpaper-preview.jpg");
background-repeat: no-repeat; 
background-size: 117%;



}
</style>
</head>
<body>
<% 
       int count=0;
       Connection con;
       
       
       con=Dbcon.create();
       PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `humansecurity`.`urequest` Where status='request to journey' ");
       
       ResultSet rs1=ps1.executeQuery();
       
       while(rs1.next())
       {
    
    	    count=rs1.getInt(1);  
    	 
       }
    	   %>  




<header>
  <nav>
    <div class="logo">
    <!--   <a href="#">My Logo</a> -->
    </div>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="verifieddriverlist.jsp">Driver Details</a></li>
      <li><a href="policeviewdriver.jsp">VERIFICATION REQUEST<span style="color:red">(<%=count %>)</span></a></li>
      <li><a href="policelogin.jsp">Logout</a></li>
    </ul>
  </nav>
</header>

</body>
</html>