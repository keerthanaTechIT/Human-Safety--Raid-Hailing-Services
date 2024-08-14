<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style9.css" rel="stylesheet" type="text/css">
		<script src="https://kit.fontawesome.com/fc383a6465.js" crossorigin="anonymous"></script>
<style>
:root {
	--navheight : 60px;
	--white :#fff;
	--black :#000;
}

* {
	margin:0px;
	padding:0px;
}

body {
	font-family:arial;
	background-image:url(https://t4.ftcdn.net/jpg/04/01/37/91/240_F_401379166_isPMoynVAB72grj5Gkr62P0TESD0Ud12.jpg);
	background-size:110%;
	background-repeat: no-repeat;
}

nav {
	height:var(--navheight);
	border-top:1px solid rgb(255,255,255,0.2);
	width:80%;
	margin:20px auto 0px;
}

nav h4 {
	color:var(--white);
	line-height:var(--navheight);
	text-transform:uppercase;
	letter-spacing:2px;
	float:left;
	padding:0px 60px;
}

nav i {
		font-size:11px;
	}
	
nav ul li ul li i {
	float:right;
}	
	
nav ul {
	float:left;
}

nav ul li {
	position:relative;
	float:left;
	list-style-type:none;
}

nav ul li a {
	display:block;
	text-decoration:none;
	color:var(--white);
	letter-spacing:2px;
	border:0px solid red;
	text-transform:uppercase;
	font-size:18px;
	padding:22px 12px;
}

nav ul li ul {
	display:none;
	position:absolute;
	background-color:var(--white);
	border-radius:2px;
}

nav ul li ul li {
	width:180px;
	border-radius:0px 0px 2px 2px;
	box-sizing:border-box;
	padding:2px;
}

nav ul li ul li a {
	padding:15px 12px;
	color:var(--black);
}

nav ul li ul li a:hover {
	background-color:gray;
	color:var(--white);
	border-radius:2px;
}

	
nav ul li ul li ul{
	display:none;
	position:absolute;
	background-color:var(--white);
	border-radius:2px;
	margin-left:180px;
}

nav ul li:hover>ul {
	display:block;
}

nav ul li ul li:hover>ul {
	display:block;
}
a:hover{
color:red;

}

fieldset:hover{

background-color: black;

border-radius:16px;

}

</style>

</head>
<body>
<%

String uname=session.getAttribute("uemail").toString();


int index=uname.indexOf("@");

String uname1=uname.substring(0,index);


session.setAttribute("data", "2");
%>

		<nav>
			<h4>Welcome Mr/Ms :  <%=uname1 %></h4>
			
			<ul>
				
			<!-- 	<li><a href="#">about us <i class="fas fa-chevron-down"></i></a>
					<ul>
						<li><a href="#">team 1</a></li>
						<li>
							<ul>
								<li><a href="#">menu 1</a></li>
								<li><a href="#">menu 2</a></li>
								<li><a href="#">menu 3</a></li>
								<li><a href="#">menu 4</a></li>
							</ul>
							<a href="#">team 2 <i class="fas fa-chevron-right"></i></a>
						</li>	
						<li><a href="#">team 3</a></li>
						<li><a href="#">team 4</a></li>
					</ul>	
				</li> -->
				<fieldset>
				<li><a href="header9.html">home</a></li>
				<li><a href="searchdrivers.jsp">Driver Booking</a></li>
				<li><a href="givelocation.jsp">Get Verified Driver  </a></li>
				<li><a href="driverstatus.jsp">Driver Status</a></li>
				<li><a href="userreglog.jsp">Logout</a></li>
				</fieldset>
				
			</ul>		
		</nav>

</body>
</html>