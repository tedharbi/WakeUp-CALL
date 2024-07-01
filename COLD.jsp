<%-- 
    Document   : dropdown.jsp
    Created on : May 4, 2024, 2:34:20?AM
    Author     : tedzkie
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <!-- CSS BOOTSTRAP-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    
    <!-- JQUERY-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
    
    <!-- JS JS BOOTSTRAP -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>

    
    <!-- STYLING CSS -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carttab.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
              integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

   <body style="background-color: #C2A172">
        <%@include file="navbar.jsp"%>
        
<body class="">

    
    
    <div class="containercart">
        <header>
            <div class="titlecart"><a href="${pageContext.request.contextPath}/MenuHot" class"link">COLD DRINKS  </a></div>
            <div class="icon-cart">
                <span style="display: none;">0</span>
    
            </div>
        </header>
        <div class="listProduct">

        </div>
    </div>
    <div class="cartTab">
        <h1>Shopping Cart</h1>
        <div class="listCart">
        </div>
        
         <div class="total-price">Total Price: <span id="totalPriceElement">$0</span></div>
        
    
        <div id="clearCartIcon" class="trash-icon">
                <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewbox="0 0 24 24">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"/>
                  </svg>                             
            </div>
          
        <div class="btn">
            
            <button class="close">CLOSE</button>
            <button class="checkOut">CHECK OUT</button>
        </div>
    </div>
            
      <%@include file="footer.jsp"%>      

    
   
    <script src="${pageContext.request.contextPath}/js/COLD.js"></script>
    
    <script src="${pageContext.request.contextPath}/js/carttab.js"></script>
</body>
</html>