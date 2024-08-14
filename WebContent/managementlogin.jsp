<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management Login</title>
<style>
:root {
  --purple: #e57dff;
  --blue: #7d26ff;
  --red: #ff5c5c;
  --green: #37d67a;
}

#background {
  /*  background-image: linear-gradient(to top left, var(--purple), var(--blue)); */
  background-image: url("https://images.unsplash.com/photo-1693838974932-aa2bb01fc25a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80");
  background-size: 110%;
  align-content: center;
  justify-content: center;
  align-items: center;
  position: alternate;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  display: flex;
  position: fixed;
}

#container {
  display: none;
  position: relative;
  min-height: 350px;
  min-width: 350px;
  border-radius: 15px;
  padding: 2em;
  background-color: rgba(255, 255, 255, 0.15);
  backdrop-filter: blur(10px);
  box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.1);
  text-align: center;
  border-style: solid;
  border-color: rgba(255, 255, 255, 0.4);
}

#startpage {
  display: block;
  position: relative;
  min-height: 350px;
  min-width: 350px;
  border-radius: 15px;
  padding: 2em;
  background-color: rgba(255, 255, 255, 0.15);
  backdrop-filter: blur(10px);
  box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.1);
  text-align: center;
  border-style: solid;
  border-color: rgba(255, 255, 255, 0.4);
}

#buttons {
  bottom: 0;
}

#header {
  color: white;
  font-family: Inconsolata;
  font-size: 75px;
}

.input {
  border-radius: 25px;
  border-bottom: none;
  /* border-bottom: 3px white solid; */
  border-left: none;
  border-right: none;
  border-top: none;
  box-sizing: border-box;
  color: white;
  background-color: #e0e0e0;
  font-size: 15px;
  width: 95%;
  padding: 15px;
  outline: none;
  /*  background-color: rgba(255, 255, 255, 0.15); */
  backdrop-filter: blur(10px);
  background: none;
}

.btn {
  background-color: rgba(255, 255, 255, 0);
  font-size: 15px;
  border: none;
  padding: 10px;
  cursor: pointer;
  color: white;
}

#status {
  font-size: 15px;
  font-family: Inconsolata;
  padding: 1em;
}

.enterbtn {
  transition: 1s ease-in-out;
  background-color: var(--blue);
  font-family: Inconsolata;
  font-size: 20px;
  border-radius: 20px;
  border: none;
  padding: 10px;
  margin: 2px;
  color: white;
  cursor: pointer;
  width: 65%;
}

@keyframes wiggle {
  0% {
    transform: translate(0px);
  }
  25% {
    transform: translate(10px);
  }
  60% {
    transform: translate(-10px);
  }
  100% {
    transform: translate(0px);
  }
}

::placeholder {
  color: whitesmoke;
}

#page {
  padding: 2em;
  position: absolute;
  min-width: 350px;
  min-height: 350px;
  display: none;
  z-index: 1;
  background-color: rgba(255, 255, 255, 0.15);
  backdrop-filter: blur(10px);
  box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  border-color: rgba(255, 255, 255, 0.4);
  border-style: solid;
}

#pagetxt {
  font-family: Inconsolata;
  font-size: 45px;
  color: white;
}

#pagebody {
  font-family: Inconsolata;
  font-size: 20px;
  color: whitesmoke;
}

#bckbtn {
  color: white;
  font-family: Material Icons;
  font-size: 80px;
  background: none;
  border-style: none;
  cursor: pointer;
  animation: point 1s infinite ease-in-out;
  transition: 0.5s ease-in-out;
}

#bckbtn:hover {
  color: var(--blue);
}

@keyframes point {
  0% {
    transform: translate(-5px);
  }
  50% {
    transform: translate(-15px);
  }
  100% {
    transform: translate(-5px);
  }
}

@keyframes slideout {
  to {
    transform: translatey(100%);
    opacity: 0;
  }
}

.enterbtn:hover {
  box-shadow: 0px 0px 0px 3px var(--blue);
}
a{
text-decoration: none;
color:black;
font-size:20px;

}

</style>
</head>
<body>
<div id="background">
  <div id="startpage">
  <form action="managelogin" method="post">
    <span id="header">Management</span>
    <br>
    <br>
    <input type="input" id="inituser" placeholder="Username" name="email" class="input">
    <br>
    <br>
    <input type="password" id="initpass" placeholder="Password" name="pass" class="input">
    <br>
    <br>
    <br>
    <button onclick="signin()" id="button" class="enterbtn">Confirm</button>
    <br>
    <br>
    
    <button class="btn"><a href="managementreg.jsp">Register</a></button>
             </form>
    <div id="buttons">
      <button onclick="showStuff()" id="show_button" class="btn">Show Password</button>
      <button onclick="resetinputs()" id="enter_button" class="btn">Reset</button>
            
    </div>
    <br>
    <span id="status"></span>
    <br>
   
  </div>

  <div id="container">
  <form action="managelogin" method="post">
    <span id="header">Login</span>
    <br>
    <br>
    <input type="input" id="user" placeholder="Username" name="email" class="input">
    <br>
    <br>
    <input type="email" id="pass" placeholder="Password" name="pass" class="input">
    <br>
    <br>
    <br>
    <button onclick="check()" id="button" class="enterbtn">Continue</button>
    <br>
    <br>
      <button class="btn"><a href="managementreg.jsp">Register</a></button>
      </form>
    <div id="buttons">
      <button onclick="showStuff()" id="show_button" class="btn">Show Password</button>
      <button onclick="resettrys()" id="enter_button" class="btn">Reset</button>
    </div>
    <br>
    <span id="status"></span>
    <br>
  </div>

  <div id="page">
    <button id="bckbtn" onclick="back()">arrow_back</button>
    <br>
    <span id="pagetxt">Congrats, you've logged in!</span>
    <br>
    <br>
    <span id="pagebody">This is where the site would normaly take you to a diffrent webpage. But as far as im concerned you can't do that in CodePen, so enjoy this instead.</span>
  </div>
</div>
<script>
let initpass = document.getElementById("initpass");
let inituser = document.getElementById("inituser");
let startpage = document.getElementById("startpage");
let container = document.getElementById("container");
let status = document.getElementById("status");
let contents = document.getElementById("pass");
let usercontents = document.getElementById("user");
var l = 0;
var show = true;
var show_button = document.getElementById("show_button");
var background = document.getElementById("background");
var mockPage = document.getElementById("page");

console.clear();

//window.onload = () => {};

const sleep = (delay) => new Promise((resolve) => setTimeout(resolve, delay));

async function check() {
  if (
    contents.value === initpass.value &&
    usercontents.value === inituser.value
  ) {
    console.log("correct!");
    l = 0;
    openPage();
    container.style.display = "none";
    status.innerHTML = "";
  } else {
    console.log("incorrect password!");
    l++;
    status.innerHTML = "Incorrect Password or Username!";
    status.style.color = "var(--red)";
    screenShake();
    lock();
    waitOnPress();
  }
}

function signin() {
  if (inituser.value.length > 1 && initpass.value.length > 1) {
    startpage.style.display = "none";
    container.style.display = "block";
    console.log("Username: " + inituser.value);
    console.log("Password: " + initpass.value);
  } else {
    console.log("No vaild input");
    status.style.color = "var(--red)";
    status.innerHTML = "No Vaild Input";
  }
}

function lock() {
  if (l > 2) {
    console.log("too many incorrect attempts!");
    document.getElementById("button").disabled = true;
    document.getElementById("button").style.color = "white";
    status.innerHTML = "Too many attempts! Try again later.";
  }
}

contents.onkeydown = function (e) {
  // If enter key pressed then enter input
  if (e.keyCode == 13 && l < 3) {
    check();
  } else if (e.keyCode == 13 && startpage.style.display === "block") {
    signin();
  }
};

async function resettrys() {
  console.clear();
  console.log("login attempts reset, try again :)");
  l = 0;
  status.innerHTML = "";
  document.getElementById("button").disabled = false;
  document.getElementById("button").style.color = "white";
  await sleep(1000);
  console.clear();
}

function showStuff() {
  if (show) {
    contents.type = "input";
    initpass.type = "input";
    show_button.innerHTML = "Hide Password";
    show = false;
  } else {
    initpass.type = "password";
    contents.type = "password";
    show_button.innerHTML = "Show Password";
    show = true;
  }
}

async function screenShake() {
  container.style.animation = "wiggle 0.5s ease-in-out";
  await sleep(500);
  container.style.animation = "";
}

async function waitOnPress() {
  if (l < 3) {
    document.getElementById("button").disabled = true;
    await sleep(500);
    document.getElementById("button").disabled = false;
  } else {
    document.getElementById("button").disabled = true;
  }
}

function openPage() {
  mockPage.style.display = "block";
}

async function back() {
  mockPage.style.animation = "slideout 1s ease-in-out";
  await sleep(1000);
  container.style.display = "block";
  mockPage.style.display = "none";
  mockPage.style.animation = "";
}

function resetinputs() {
  inituser.value = "";
  initpass.value = "";
}

</script>
</body>
</html>