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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css">
<link rel="stylesheet" href="https://mdbootstrap.com/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
	<style>
	a:hover{
	text-decoration: none;
	color:white;
	}
	a{
	color:white;
	text-decoration: none;
	}
	
	</style>
</head>
<body>
	<div class="table-responsive">
		<table class="table table-hover table-dark border-light">
			<thead>
				<tr>
					<th scope="col">License</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Gender</th>
					<th scope="col">Village</th>
					<th scope="col">city</th>
					<th scope="col">Status</th>
					
					<th scope="col">Acitivate</th>

				</tr>
			</thead>



			<%

				Connection con;

				con = Dbcon.create();
				PreparedStatement ps = con.prepareStatement("SELECT * FROM `humansecurity`.`driverapplication` where status IN('request' , 'Accept')  ");

				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
			%>







			<tbody>
				<tr>
					<td><img src="Locals/<%=rs.getString(8)%>" alt="" width="70"
						height="80"></td>

					<th scope="row"><%=rs.getString(2)%></th>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(9)%></td>
					<td>
						<button type="button" class="btn btn-primary"><a href="update.jsp?data=<%="Accept"%>&&id=<%=rs.getString(1)%> ">Accept</a></button>
						<button type="button" class="btn btn-danger"><a href="update.jsp?data=<%="reject"%>&&id=<%=rs.getString(1)%> ">Reject</button>
					</td>
				</tr>

			</tbody>
			<%
				}
			%>

		</table>
	</div>
</body>
</html>