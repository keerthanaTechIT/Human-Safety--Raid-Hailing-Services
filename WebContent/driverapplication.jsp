<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

body{
	background: #84889c;
}
 
.wrapper{
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.registration_form{
	background: #545871;
	padding: 25px;
	border-radius: 5px;
	width: 400px;
}

.registration_form .title{
	text-align: center;
	font-size: 20px;
	text-transform: uppercase;
	color: #ebd0ce;
	letter-spacing: 5px;
	font-weight: 700;
}

.form_wrap{
	margin-top: 35px;
}

.form_wrap .input_wrap{
	margin-bottom: 15px;
}

.form_wrap .input_wrap:last-child{
	margin-bottom: 0;
}

.form_wrap .input_wrap label{
	display: block;
	margin-bottom: 3px;
	color: #9597a6;
}

.form_wrap .input_grp{
	display: flex;
	justify-content: space-between;
}

.form_wrap .input_grp  input[type="text"]{
	width: 165px;
}

.form_wrap  input[type="text"] , input[type="file"]{
	width: 100%;
	border-radius: 3px;
	border: 1px solid #9597a6;
	padding: 10px;
	outline: none;
}

.form_wrap  input[type="text"] , input[type="file"]:focus{
	border-color: #ebd0ce;
}

.form_wrap ul{
	background: #fff;
	padding: 8px 10px;
	border-radius: 3px;
	display: flex;
	justify-content: center;
}

.form_wrap ul li:first-child{
	margin-right: 15px;
}

.form_wrap ul .radio_wrap{
	position: relative;
	margin-bottom: 0;
}

.form_wrap ul .radio_wrap .input_radio{
	position: absolute;
	top: 0;
	right: 0;
	opacity: 0;
}

.form_wrap ul .radio_wrap span{
	display: inline-block;
	font-size: 14px;
	padding: 3px 20px;
	border-radius: 3px;
	color: #545871;
}

.form_wrap .input_radio:checked ~ span{
	background: #ebd0ce;
}

.form_wrap .submit_btn{
	width: 100%;
	background: #ebd0ce;
	padding: 10px;
	border: 0;
	border-radius: 3px;
	text-transform: uppercase;
	letter-spacing: 3px;
	cursor: pointer;
}

.form_wrap .submit_btn:hover{
	background: #ffd5d2;
}
</style>
</head>
<body>
<%
String demail=session.getAttribute("demail").toString();

%>
<div class="wrapper">
	<div class="registration_form">
		<div class="title">
			Registration Form
		</div>

<form action="driverapplication" method="post" enctype="multipart/form-data">
			<div class="form_wrap">
				<div class="input_grp">
					<div class="input_wrap">
						<label for="fname">First Name</label>
						<input type="text" id="fname" name="fname">
					</div>
					<div class="input_wrap">
						<label for="lname">Last Name</label>
						<input type="text" id="lname" name="lnme">
					</div>
				</div>
				<div class="input_wrap">
					<label for="email">Email Address</label>
					<input type="text" id="email" name="email" value="<%=demail%>" readonly>
				</div>
				<div class="input_wrap">
					<label>Gender</label>
					<ul>
						<li>
							<label class="radio_wrap">
								<input type="radio" name="gender" value="male" class="input_radio" checked>
								<span>Male</span>
							</label>
						</li>
						<li>
							<label class="radio_wrap">
								<input type="radio" name="gender" value="female" class="input_radio">
								<span>Female</span>
							</label>
						</li>
					</ul>
				</div>
				<div class="input_wrap">
					<label for="city">Address</label>
					<input type="text" id="city" name="village">
				</div>
				<div class="input_wrap">
					<label for="city">City</label>
					<input type="text" id="city" name="city">
					
				</div><div class="input_wrap">
					<label for="city">License</label>
					<input type="file" id="city" name="image">
				</div>
				<div class="input_wrap">
					<input type="submit" value="Register Now" class="submit_btn">
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>