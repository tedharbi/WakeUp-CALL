<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page (No Functionalities Yet)</title>

        <!-- CSS BOOTSTRAP -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />

        <!-- JQUERY -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>

        <!-- JS BOOTSTRAP -->
        <script src="${pageContext.request.contextPath}/js/script.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

        <!-- STYLING CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous"
              referrerpolicy="no-referrer">

        <style>
            body {
                background-image: url('img/table.jpg');
                background-size: cover;
                background-position: center 47%; /* Center the background image */
                background-repeat: no-repeat;
                overflow-y: hidden;
                background-color: #f4e3b2;
            }
        </style>
    </head>
    <body>
           <%@include file="navbar.jsp"%>
    
        <div class="outer-log">
            <div class="containerlog mt-5">
                <h2 class="mb-4 text-start"><span class="title">Login</span></h2>
                <form>
    <div class="form-group mb-4">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text ico">
                    <i class="fa-solid fa-user "></i>
                </span>
            </div>
            <input type="text" class="type form-control" id="username" name="username" required>
        </div>
    </div>

    <div class="form-group">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text ico">
                    <i class="fa-solid fa-lock"></i>
                </span>
            </div>
            <input type="password" class="type form-control" id="password" name="password" required>
        </div>
    </div>

    <div class="outlog">
    <div class="lowbttn">
        <button type="submit" class="btn btn-primary btn-block" id="logbtn">Submit</button>
        <a href="${pageContext.request.contextPath}/register" class="btn  btn-block">Sign up</a>
    </div>
    </div>
</form>
            </div>
        </div>

    </body>
</html>


