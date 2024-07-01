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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/regstyle.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />

        



        <!-- Datepicker CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.min.css">
    </head>
    <body>
    <!--nav bar -->
    <nav class="navbar navbar-expand-md tm-navbar" id="tmNav">
      <div class="container">
        <a href="${pageContext.request.contextPath}/" class="navbar-brand">
          <i class="fa-solid fa-mug-saucer" id="icon"></i>The Wake-Up Call</a
        >
      </div>

      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars navbar-toggler-icon"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav testing">
          <li class="nav-item">
            <a
              class="nav-link tm-nav-link"
              href="${pageContext.request.contextPath}/index"
              >Home</a
            >
          </li>
          <li class="nav-item">
            <div class="dropdown">
              <button class="dropbtn" onclick="myFunction()">
                Menu
                <i class="fa fa-caret-down caret"></i>
              </button>
              <div class="dropdown-content" id="myDropdown">
                <a href="${pageContext.request.contextPath}/MenuHot"
                  >Hot Drinks</a
                >
                <a href="${pageContext.request.contextPath}/COLD"
                  >Cold Drinks</a
                >
                <a href="${pageContext.request.contextPath}/PASTRY">Pastries</a>
              </div>
            </div>
          </li>
          <li class="nav-item">
            <a
              class="nav-link tm-nav-link"
              href="${pageContext.request.contextPath}/carttab"
              ><i class="fa-solid fa-cart-shopping"></i
            ></a>
          </li>
          <li class="nav-item">
            <a
              class="nav-link tm-nav-link"
              id="userMargin"
              href="${pageContext.request.contextPath}/login"
              ><i class="fa-solid fa-user"></i
            ></a>
          </li>
        </ul>
      </div>
    </nav>
    <!--nav bar end -->

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
