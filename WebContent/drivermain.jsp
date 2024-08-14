<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>drivermain</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

nav {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: transparent;
	color: black;
	padding: 10px 0;
	text-align: center;
	display: flex;
	justify-content: space-around;
	
	transition: background-color 0.75s ease-in-out;
	
}

nav:hover{		
			
		background-color: #C0C0C0;
	
}

nav a {
	color: black;
	text-decoration: none;
	padding: 10px 20px;
	
	opacity: 0.25;
	
	transition: opacity 1s ease-in-out;
	
}

nav:hover a{
	
		font-weight: bold;
	
		opacity: 1;
		
}

nav a:hover{		
		
	background-color: white;
	
}

section {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 2rem;
	color: white;
}

#portfolio, #press, #shop, #about{
		background-position: center;
		background-repeat: no-repeat;
	
		background-size: cover;
		width: 58.45%;
		margin: 0 auto;
}

#portfolio {
	/*background-color: #390099;*/
	background-image: url("https://www.lonestartravelguide.com/wp-content/uploads/2020/11/shutterstock_134982041-1024x682.jpg");
	background-attachment: fixed;
	background-clip: inherit;
	 
	
	
}

/* #press {
	/*background-color: #9e0059;*/
	background-image: url('https:-background-with-social-media-logos_69286-224.jpg?w=2000');
}

/* #shop {
	/* background-color: #ff0054; */
	background-image: url(https://img.freepik.com/premium-vectorline-shopping-background-with-concept-online-delivery_269039-162.jpg);
	
} */ */

#about {
	/*background-color: #390099;*/
	background-image: url('');
}

</style>
</head>
<body>
<header>
	<nav>
		<a href="driverapplication.jsp">Application</a>
		<a href="notverifiedpage.jsp">Application Status</a>
		<a href="userrequest.jsp">User Request</a>
		<a href="driverreglog.jsp">Logout</a>
	</nav>
</header>
<section id="portfolio">
	

<!-- </section>
<section id="press">
	<h2>Press</h2>

</section>
<section id="shop">
	<h2>Shop</h2>

</section>
<section id="about">
	<h2>About</h2> -->

</section>
</body>
</html>