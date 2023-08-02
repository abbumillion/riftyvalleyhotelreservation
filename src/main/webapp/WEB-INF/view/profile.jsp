<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Freelancer Home</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/price_rangs.css">
    <link rel="stylesheet" href="resources/css/slicknav.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="resources/css/themify-icons.css">
    <link rel="stylesheet" href="resources/css/slick.css">
    <link rel="stylesheet" href="resources/css/nice-select.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">
    <link rel="stylesheet" href="resources/css/style.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="my-login-page">
<jsp:include page="templates/freelancerheader.jsp"/>
<section class="h-100">
    <%--    <div class="container h-100">--%>
    <div class="justify-content-md-center">
        <div class="card">
            <div class="card-header">
                <h4 class="float-left">Account Details</h4>
            </div>
            <div class="card card-body table-responsive">
                <c:if test="${ user != null}">
                    <div class="form-group ">
                        <label for="id">Id</label>
                        <input id="id" value="${user.getId()}" type="number" class="form-control" name="id" required
                               data-eye>
                    </div>
                    <div class="form-group ">
                        <label for="fullName">Full Name</label>
                        <input id="fullName" value="${user.getFullName()}" type="text" class="form-control"
                               name="fullName" required
                               data-eye>
                    </div>
                    <div class="form-group ">
                        <label for="email">Email</label>
                        <input id="email" value="${user.getEmail()}" type="email" class="form-control" name="email"
                               required
                               data-eye>
                    </div>
                    <div class="form-group ">
                        <label for="phoneNumber">Phone Number</label>
                        <input id="phoneNumber" value="${user.getPhoneNumber()}" type="number" class="form-control"
                               name="phoneNumber" required
                               data-eye>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</section>
<jsp:include page="templates/pageScript.jsp"/>
<!-- JS here -->
<script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="resources/js/vendor/jquery-1.12.4.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="resources/js/jquery.slicknav.min.js"></script>
<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/slick.min.js"></script>
<script src="resources/js/price_rangs.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/animated.headline.js"></script>
<script src="resources/js/jquery.magnific-popup.js"></script>
<!-- Scrollup, nice-select, sticky -->
<script src="resources/js/jquery.scrollUp.min.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/jquery.sticky.js"></script>
<!-- contact js -->
<script src="resources/js/contact.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/jquery.validate.min.js"></script>
<script src="resources/js/mail-script.js"></script>
<script src="resources/js/jquery.ajaxchimp.min.js"></script>
<!-- Jquery Plugins, main Jquery -->
<script src="resources/js/plugins.js"></script>
<script src="resources/js/main.js"></script>
</body>
</html>