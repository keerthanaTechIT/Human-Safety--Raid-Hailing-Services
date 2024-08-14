<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://bootswatch.com/5/lux/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js" ></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" ></script>



<style>
body {
  background-color: #f7f7f7;
  display: flex;
  align-items: center;
}

.radius {
  border-radius: 20px !important;
}

.card {
  border-radius: 20px !important;
}
.card-body .form-icon {
  text-align: center;
  width: 100%;
  line-height: 0;
  margin-top: calc(-42px - 35px);
  margin-bottom: 28px;
}
.form-icon .icon-holder {
  position: relative;
  display: inline-block;
  width: 85px;
  height: 85px;
  border-radius: 85px;
  background-color: #292828;
  padding: 20px;
  margin-top: 15px;
}
.icon-holder img {
  position: absolute;
  width: 50%;
  top: 50%;
  left: 50%;
  margin-top: -23%;
  margin-left: -25%;
}
input:hover {
  border-bottom: 1px solid #292828;
}
#imageAsBackground {
  z-index: -1;
  position: fixed;
  top: 50%;
  right: -1%;
  transform: translateY(-50%);
  max-height: 600px;
}
a:hover {
  text-decoration: none;
}
.form-control:focus {
  border-color: #292828;
  box-shadow: none;
}

.form-control.is-invalid {
  background-image: none;
}
.form-control.is-invalid:focus {
  box-shadow: 0 3px 2px -2px red;
}
.pass {
  float: right;
  margin-right: 15px;
  margin-top: -35px;
  position: relative;
  z-index: 5;
  font-size: 18px;
}

.masked {
  -webkit-text-security: disc;
}

.tablepass {
  margin-left: 5px;
}

</style>
</head>
<body>

<%
String uemail=request.getParameter("uemail");
String demail=request.getParameter("demail");


%>
<div class="container">
<!--   <div class="row"><img src="https://iephosting.com/app/views/client/bootstrap/images/graphic8.svg" id="imageAsBackground" alt="" /></div>
 -->  <div class="row align-items-center justify-content-center" style="height:100vh;">
    <div class="col-sm-12 col-md-8 col-lg-6 col-xl-4">
      <div class="card">
        <div class="card-body">
         <!--  <div class="form-icon">
            <div class="icon-holder">
              <i class="fa-2x fa-solid fa-user-plus text-light" style="margin-top: 5px;"></i>
            </div>
          </div> -->
          <h3 class="text-center">Address</h3>
          <form id="registerForm" action="requestdetails" method="post">
            <div class="form-floating mb-3">
              <input type="text" class="form-control" id="userInput" placeholder="" autocomplete="off" name="name" required>
              <label for="userInput">Username</label>
            </div>
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="emailInput" placeholder="" autocomplete="off" value="<%=uemail %>" name="uemail" required readonly>
              <label for="emailInput">Email address</label>
            </div>
            <div class="form-floating mb-3">
              <input type="text" class="form-control" id="nameInput" placeholder="" autocomplete="off" name="address" required>
              <label for="nameInput">To Address</label>
            </div>
            
             <div class="form-floating mb-3">
              <input type="text" class="form-control" id="passwordInput" name="location"  placeholder="" required>
              <label for="passwordInput">Pickup Location</label>
            </div>
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="passwordInput" name="demail" value="<%=demail %>" placeholder="" required readonly>
              <label for="passwordInput">Driver Email</label>
            </div>
             <div class="form-floating mb-3">
              <input type="email" class="form-control" id="passwordInput" name="" value="<%="Verified Driver" %>" placeholder="" required readonly>
              <label for="passwordInput">Status</label>
            </div>
           <!--  <div class="form-floating mb-3">
              <input type="password" class="form-control" id="cpasswordInput" name="cpassword" placeholder="Input your password" required>
              <label for="cpasswordInput">Confirm Password</label>
            </div> -->

            <div class="text-center mb-5">
              <button class="btn btn-outline-primary" type="submit">Submit</button>
            </div>
          </form>
        </div>
        <!-- <div class="card-footer text-center">
          <button class="btn btn-sm btn-primary radius" data-bs-toggle="modal" data-bs-target="#staticBackdrop">See List of Accounts</button>
        </div>
      </div> -->
    </div>
  </div>
</div>

<div class="modal" id="staticBackdrop">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">List of registered accounts</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">

        <div class="table-responsive">
          <table id="accountTable" class="table table-striped" style="width:100%">
            <thead>
              <tr>
                <th>#</th>
                <th>Email</th>
                <th>Username</th>
                <th>Name</th>
                <th>Password</th>
              </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script>

$(document).ready(function () {
	  const table = $("#accountTable").DataTable();
	  let count = 0;

	  $("#registerForm").validate({
	    rules: {
	      email: {
	        required: true,
	        email: true
	      },
	      name: {
	        minlength: 5,
	        required: true
	      },
	      username: {
	        required: true
	      },
	      password: {
	        minlength: 6,
	        required: true
	      },
	      cpassword: {
	        required: true,
	        equalTo: "#passwordInput"
	      }
	    },
	    errorElement: "div",
	    errorPlacement: function (error, element) {
	      error.addClass("invalid-feedback");
	      error.insertAfter(element);
	    },
	    highlight: function (element) {
	      $(element).removeClass("is-valid").addClass("is-invalid");
	    },
	    unhighlight: function (element) {
	      $(element).removeClass("is-invalid");
	    },
	    submitHandler: function (form, e) {
	      e.preventDefault();
	      const username = $("#userInput").val();
	      const email = $("#emailInput").val();
	      const pass = $("#passwordInput").val();
	      const name = $("#nameInput").val();
	      const passInsert =
	        "<span class='masked' id='passhide" +
	        count +
	        "'>" +
	        pass +
	        "</span><i class='fa fa-eye tablepass' id='iconPass" +
	        count +
	        "' onclick='tablePass(passhide" +
	        count +
	        ", iconPass" +
	        count +
	        ");'></i>";
	      if (
	        !$("#accountTable").colCheck(2, email, "email") &&
	        !$("#accountTable").colCheck(3, username, "username")
	      ) {
	        count += 1;
	        swal(
	          "SUCCESS!",
	          "We've successfully registered your account.",
	          "success"
	        );
	        table.row.add([count, email, username, name, passInsert]).draw(false);
	        const form = $("#registerForm");
	        form.validate().resetForm();
	        form[0].reset();
	      }
	      return false;
	    }
	  });
	});

	$.fn.colCheck = function (col, text, type) {
	  var c = Array.isArray(col) ? col : [col],
	    t = this,
	    a = [];

	  $.each(c, function (_, v) {
	    a.push(
	      t.find("tr td").filter(function () {
	        return $(this).index() === v - 1 && $.trim($(this).text()) === text;
	      }).length
	    );
	  });

	  if (a[0] !== 0) {
	    swal(
	      "Error!",
	      "The " + type + " you've entered already exists, please try again.",
	      "error"
	    );
	    return true;
	  }
	  return false;
	};

	function tablePass(PassId, IconId) {
	  $(IconId).toggleClass("fa-eye fa-eye-slash");
	  if ($(PassId).hasClass("masked")) {
	    $(PassId).removeClass("masked");
	  } else {
	    $(PassId).addClass("masked");
	  }
	}

</script>
</body>
</html>