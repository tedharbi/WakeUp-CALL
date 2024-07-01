<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>

        <!-- CSS BOOTSTRAP -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />

        <!-- JQUERY -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>

        <!-- JS JS BOOTSTRAP -->
        <script src="${pageContext.request.contextPath}/js/script.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.min.js"></script>


        <!-- STYLING CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Datepicker CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.min.css">
    </head>
    <style>
    body {
      background-image: url("img/window.jpg");
      background-size: cover;
      background-position: center 47%;
      background-repeat: no-repeat;
      overflow-y: auto;
      background-color: #f4e3b2;
    }

    .button .close span {
      padding: 5px;
    }

    h5 {
      padding: 5px;
    }

    /* Custom Modal Styling */
    .modal-content {
      background-color: #fff; /* White background */
      border: 2px solid #4caf50; /* Green border */
      border-radius: 10px; /* Rounded corners */
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3); /* Shadow */
      padding: 20px; /* Padding inside modal */
    }

    .modal-header {
      border-bottom: 1px solid #4caf50; /* Green border at the bottom */
      background-color: #4caf50; /* Green background */
      color: white; /* White text */
      border-top-left-radius: 10px; /* Rounded corners on top-left */
      border-top-right-radius: 10px; /* Rounded corners on top-right */
      display: flex; /* Flexbox for alignment */
      justify-content: space-between; /* Space between elements */
      align-items: center; /* Center items vertically */
      padding: 15px; /* Padding for the header */
    }

    .modal-header .close {
      color: white; /* Close button color */
      opacity: 1; /* Fully opaque */
      font-size: 24px; /* Font size */
      background-color: transparent; /* No background color initially */
      border: none; /* No border */
      outline: none; /* No outline */
      border-radius: 50%; /* Circular shape */
      width: 30px; /* Width */
      height: 30px; /* Height */
      display: flex; /* Flexbox for alignment */
      align-items: center; /* Center items vertically */
      justify-content: center; /* Center items horizontally */
      transition: background-color 0.3s; /* Smooth background color transition */
    }

    .modal-header .close:hover,
    .modal-header .close:focus {
      background-color: #ff0000; /* Red background on hover/focus */
      color: white; /* White text color */
      cursor: pointer; /* Pointer cursor */
    }

    .modal-body {
      padding: 20px; /* Padding inside modal body */
      font-size: 16px; /* Font size */
      color: #333; /* Text color */
    }

    .modal-footer {
      border-top: 1px solid #4caf50; /* Green border at the top */
      background-color: #f1f1f1; /* Light gray background */
      border-bottom-left-radius: 10px; /* Rounded corners on bottom-left */
      border-bottom-right-radius: 10px; /* Rounded corners on bottom-right */
      padding: 15px; /* Padding for the footer */
    }

    .modal-footer .btn {
      background-color: #4caf50; /* Green background */
      color: white; /* White text */
      border: none; /* No border */
      transition: background-color 0.3s; /* Smooth background color transition */
    }

    .modal-footer .btn:hover {
      background-color: #45a049; /* Darker green on hover */
    }

    .modal-backdrop {
      background-color: rgba(0, 0, 0, 0.5); /* Darker backdrop */
    }

    .form-control {
      width: 100%;
    }

    .lowbttn1 {
      margin-top: 20px;
    }
  </style>
    <body>
            <%@include file="navbar.jsp"%>


    <div class="outer-reg">
      <div class="container1 mt-5">
        <h2 class="mb-4 text-start"><span class="title">Sign Up</span></h2>
        <form id="registrationForm">
          <div class="form-group">
            <input
              type="text"
              class="form-control text mb-3"
              id=""
              name="username"
              placeholder="Username"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="password"
              class="form-control text mb-3"
              id=""
              name="password"
              placeholder="Password"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="password"
              class="form-control text mb-3"
              id="confirmPassword"
              name="confirmPassword"
              placeholder="Confirm Password"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              class="form-control text mb-3"
              id="firstName"
              name="firstName"
              placeholder="First Name"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              class="form-control text mb-3"
              id="middleName"
              name="middleName"
              placeholder="Middle Name"
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              class="form-control text mb-3"
              id="lastName"
              name="lastName"
              placeholder="Last Name"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              class="form-control text mb-3"
              id="address"
              name="address"
              placeholder="Address"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              class="form-control text datepicker mb-3"
              id="birthday"
              name="birthday"
              placeholder="Birthday (yyyy-mm-dd)"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="text"
              class="form-control text mb-3"
              id="phone"
              name="phone"
              placeholder="Phone"
              required
            />
          </div>
          <div class="form-group">
            <input
              type="email"
              class="form-control text mb-3"
              id="email"
              name="email"
              placeholder="Email"
              required
            />
          </div>
          <div class="outlog">
            <div class="lowbttn">
              <button
                type="submit"
                class="btn btn-primary btn-block"
                id="logbtn"
              >
                Submit
              </button>
              <a href="${pageContext.request.contextPath}/login" class="btn btn-block">Login</a>
            </div>
          </div>
        </form>
      </div>
    </div>

    <script>
      $(document).ready(function () {
        $(".datepicker").datepicker({
          format: "yyyy-mm-dd",
          autoclose: true,
          todayHighlight: true,
        });
      });

      // Navbar toggle function
      function myFunction() {
        var x = document.getElementById("myDropdown");
        if (x.className.indexOf("show") == -1) {
          x.className += " show";
        } else {
          x.className = x.className.replace(" show", "");
        }
      }

      // Close the dropdown if the user clicks outside of it
      window.onclick = function (event) {
        if (!event.target.matches(".dropbtn")) {
          var dropdowns = document.getElementsByClassName("dropdown-content");
          for (var i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains("show")) {
              openDropdown.classList.remove("show");
            }
          }
        }
      };
    </script>
  </body>
</html>
