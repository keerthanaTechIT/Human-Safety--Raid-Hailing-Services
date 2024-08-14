<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
      integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
      integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="l_login.css" />
    <link rel="icon" href="img/mangekyou_sharingan_itachi.png" />
    <!-- <script src="https://gist.github.com/MandarKelkarOfficial/9925407eb11b082531fc36323482447c.js"></script> -->

    <title>ILOGIN</title>
<style>
*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html,
body {
  height: 100%;
  overflow: hidden;
}

body {
  background: linear-gradient(
      45deg,
      hsl(352, 100%, 50%) 0%,
      hsla(0, 0%, 0%, 0) 70%
    ),
    linear-gradient(135deg, hsl(0, 0%, 100%) 10%, hsla(12, 95%, 42%, 0) 80%),
    linear-gradient(225deg, hsl(0, 100%, 64%) 10%, hsla(0, 0%, 0%, 0) 80%),
    linear-gradient(315deg, hsl(0, 0%, 0%) 100%, hsla(119, 96%, 49%, 0) 70%);
}

.absolute-center,
.menu .btn.trigger .line,
.menu .btn .fa,
.menu {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translateX(-50%) translateY(-50%);
}

.menu {
  width: 5em;
  height: 5em;
}
.menu .btn {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.15);
  opacity: 0;
  z-index: -10;
  cursor: pointer;
  transition: opacity 1s, z-index 0.3s, transform 1s;
  transform: translateX(0);
}
.menu .btn .fa {
  font-size: 3em;
  transition: color 0.3s;
}
.menu .btn:hover .fa {
  color: rgba(255, 255, 255, 0.7);
}
.menu .btn.trigger {
  opacity: 1;
  z-index: 100;
  cursor: pointer;
  transition: transform 0.3s;
}
.menu .btn.trigger:hover {
  transform: scale(1.2);
}
.menu .btn.trigger:hover .line {
  background-color: rgba(255, 255, 255, 0.7);
}
.menu .btn.trigger:hover .line:before,
.menu .btn.trigger:hover .line:after {
  background-color: rgba(255, 255, 255, 0.7);
}
.menu .btn.trigger .line {
  width: 60%;
  height: 6px;
  background: #000;
  border-radius: 6px;
  transition: background-color 0.3s, height 0.3s, top 0.3s;
}
.menu .btn.trigger .line:before,
.menu .btn.trigger .line:after {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  width: 100%;
  height: 6px;
  background: #000;
  border-radius: 6px;
  transition: background-color 0.3s, transform 0.3s;
}
.menu .btn.trigger .line:before {
  top: -12px;
  transform-origin: 15% 100%;
}
.menu .btn.trigger .line:after {
  top: 12px;
  transform-origin: 25% 30%;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.card {
  text-align: center;
}

/* //Animate the size, outside */
.pulse:hover,
.pulse:focus {
  animation: pulse 1s;
  box-shadow: 0 0 0 2em transparent;
}

@keyframes pulse {
  0% {
    box-shadow: 0 0 0 0 var(--hover);
  }
}
.pulse {
  --color: #f81111;
  --hover: #ff2121;
}

button {
  color: var(--color);
  transition: 0.25s;
}
button:hover,
button:focus {
  border-color: var(--hover);
  color: #fff;
}

button {
  background: none;
  border: 2px solid;
  font: inherit;
  line-height: 1;
  margin: 0.5em;
  margin-top: 5px;
  padding: 1em 2em;
}

</style>
</head>
<body>

    <div class="container">
      <div class="card text-bg-dark mb-3 mt-3">
        <div class="card-header" align="center">Police Login</div>
        <div class="card-body">
          <div class="form">
            <form action="policelog" method="post">
              <div class="input-group flex-nowrap">
<!--                 <span class="input-group-text" id="addon-wrapping">&#xf406;</span>
 -->                <input
                  type="text"
                  class="form-control"
                  placeholder="Username"
                  aria-label="Username"
                  aria-describedby="addon-wrapping"
                  name="name"
                />
              </div>
              <div class="input-group mt-3 mb-4 flex-nowrap">
<!--                 <span class="input-group-text" id="addon-wrapping">🗝️</span>
 -->                <input
                  type="text"
                  class="form-control"
                  placeholder="Password"
                  aria-label="Password"
                  aria-describedby="addon-wrapping"
                  name="pass"
                />
              </div>
              <button class="pulse">LOGIN</button>


            </form>
            

          </div>
        </div>
      </div>
    </div>

</body>
</html>