<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.container {
  width: 100vw;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: sans-serif;
}

.card {
  background-color: #ddd;
  padding: 3rem;
  border-radius: 5px;
  border: 1px solid #bbb;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 2rem;
}

.left {
  width: 25vw;
  overflow: hidden;
  border-radius: 4px;
}

.left img {
  width: inherit;
  object-fit: cover;
  transform: scale(1.4);
}

.right .contact {
  display: flex;
  gap: 1rem;
  margin-right: 1rem;
}

.form, .address {
  display: flex;
  flex-direction: column;
  padding: 1rem 0 0;
}

.form input, textarea {
  width: 100%;
  outline: none;
  background: none;
  border: none;
  border-bottom: 2px solid #000;
  padding: 10px 0;
  margin: 5px 0;
}

.usersubmit input {
  background-color: #f25;
  color: white;
  font-weight: bold;
  border-radius: 5px;
  border: none;
  width: min-content;
  padding: 15px;
  margin-bottom: 0;
  cursor: pointer;
  transition: 0.3s;
}

.usersubmit input:hover {
  background-color: #f45;
}

.address {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

h4 {
  margin-bottom: 5px;
}

@media screen and (max-width: 700px) {
  .card {
    flex-direction: column;
  }
  
  .left {
    width: 60vw;
    height: 40vh;
  }
}

@media screen and (max-width: 350px) {
  .container {
    overflow: hidden;
  }
  .left {
    height: 20vh;
  }
  .contact {
    flex-direction: column;
  }
}
a{
text-decoration: none;
color:red;
;

}
</style>
</head>
<body>
<div class="container">
  <div class="card">
    <div class="left">
      <img src="https://www.shutterstock.com/image-photo/project-manager-working-on-laptop-260nw-2175846471.jpg">
    </div>
    <div class="right">
      <h2>Management</h2>
      <div class="contact">
        <div class="form-container">
          <form class="form" action="managereg" method="post">
            <div class="username">
              <input type="text" placeholder="Enter your Name" name="name">
            </div>
             <div class="username">
              <input type="email" placeholder="Enter Email" name="email">
            </div>
            <div class="useremail">
              <input type="password" placeholder="Enter Password" name="pass" required>
            </div>           
            <div class="usersubmit">
              <input type="submit" value="Register">
              <br><br>
              <hr>
              <br>
              <a href="managementlogin.jsp">Login</a>
            </div>
            
            
          </form>
          
        </div>
        <div class="address">
         <!--  <div class="email">
            <h4>Contact</h4>
            <p>hi@example.com</p>
          </div>
          <div class="location">
            <h4>Based in</h4>
            <p>Los Angeles,<br>California</p>
          </div> -->
          <div class="social">
            <span><a href="#"><i class="fab fa-facebook"></i></a></span>
            <span><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></span>
            <span><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>