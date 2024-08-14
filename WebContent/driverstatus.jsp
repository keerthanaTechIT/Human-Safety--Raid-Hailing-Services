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

<style>
html, body {
  height: 100%;
  padding: 0;
  margin: 0;
  width: 100%;
  text-align: center;
}
body {
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(to right, #536976, #292e49);
  font-family: Arial, Helvetica, sans-serif;
}


.msg-icn {
  display: inline-block;
  position: relative;
  padding:  10px 20px;
  color: #fff;
  box-sizing: border-box;
  max-width: 300px;
  min-width: 80px;
  min-height: 38px;
}
.msg-icn:before {
  content: "";
  position: absolute;
  display: block;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  border: 1px solid #e5a002;
  border-radius: 2px;
  box-sizing: border-box;
  clip-path: polygon(0% 105%, 0% 0%, 105% 0%, 105% 105%, 43px 105%, 43px 80%, 21px 80%, 21px 105%);
}
.msg-icn:after {
  content: "";
  position: absolute;
  display: block;
  width: 25px;
  height: 20px;
  background: #e5a002;
  top: calc(100% - 1px);
  left: 20px;
  box-sizing: border-box;
  clip-path: polygon(0 0, 0% 100%, 100% 0%, calc(100% - 2px) 0, 1px calc(100% - 2px), 1px 0);
}
</style>
</head>
<body>

<%
 String id=session.getAttribute("id").toString(); 

String data="",msg="";




Connection con;

con = Dbcon.create();
PreparedStatement ps = con
		.prepareStatement("SELECT * FROM `humansecurity`.`drrequest` where id='" + id + "' ");

ResultSet rs = ps.executeQuery();

while (rs.next()) {

data=rs.getString(7);
}

if(data.equals("Pickeped"))
{
	msg="Driver Picked Your Location Comming to Pickeup YOu";
}
else
{
	msg="Driver Still Not Get Your Solicitation";
	
}



%>


<span class="msg-icn">So nice</span>


<script>
//This isn't necessary but more for demonstration purposes

const typSpd = 70; 
const waitTime = 500;

const text = [
'<%=msg%>'
]

var mi = 0;

function writeString(e, str, i) {
  e.innerHTML = e.innerHTML + str[i];
  
  if (e.innerHTML.length == str.length && mi != text.length)
    setTimeout(slowlyDelete, waitTime, e);
}

function deleteString(e) {
  e.innerHTML = e.innerHTML.substring(0, e.innerHTML.length - 1);
  
  if (e.innerHTML.length == 0)
    slowlyWrite(e, text[mi++]);
}

function slowlyDelete(e) {
  for (var i = 0; i < e.innerHTML.length; i++) {
    setTimeout(deleteString, typSpd / 2 * i, e);
  }
}

function slowlyWrite(e, str) {
  for (var i = 0; i < str.length; i++) {
    setTimeout(writeString, typSpd * i, e, str, i);
  }
}

const msg = document.querySelector(".msg-icn");

slowlyDelete(msg);
</script>
</body>
</html>