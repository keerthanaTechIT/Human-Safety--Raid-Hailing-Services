<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int	reg=0;
		String uemail = session.getAttribute("uemail").toString();
		
		String dname=request.getParameter("dname");
		String demail=request.getParameter("demail");
		String image=request.getParameter("image");
		String dgender=request.getParameter("dgender");
		String darea=request.getParameter("darea");
	

		Connection con;

		con = Dbcon.create();
		PreparedStatement ps = con
				.prepareStatement("SELECT * FROM `humansecurity`.`userregister` where email='" + uemail + "' ");

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {

			con = Dbcon.create();

			java.sql.PreparedStatement ps1 = con.prepareStatement("INSERT INTO humansecurity.urequest VALUES(id,?,?,?,?,?,?,?,?)");
			ps1.setString(1, rs.getString(2));
			ps1.setString(2, rs.getString(3));
			ps1.setString(3, dname);
			ps1.setString(4, demail);
			ps1.setString(5, image);
			ps1.setString(6, dgender);
			ps1.setString(7, darea);
			ps1.setString(8, "request to journey");
			
			reg = ps1.executeUpdate();
			
	if(reg==1){
		
		response.sendRedirect("searchdrivers.jsp");
		
	}else{
		
		
	}

		}
	%>

</body>
</html>