<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Sign Up</title>
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
    <link rel="stylesheet" href="resources/css/style.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">

</head>
<body>
<section>
    <div class="container">
        <div class=" justify-content-center ">
            <h4 class="card-title">Sign Up</h4>
            <c:if test="${not empty param.error}">
                <label id="error" class="alert alert-danger">${param.error}</label>
            </c:if>
            <div class="brand">
                <img src="resources/images/logo.png">
            </div>
            <form action="/register" method="POST" modelAttribute="signUpDTO">
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input id="fullName" type="text" class="form-control" name="fullName" required
                           autofocus>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number</label>
                    <input id="phoneNumber" type="tel" class="form-control" name="phoneNumber" required>
                </div>
                <div class="form-group">
                    <label for="email">E-Mail Address</label>
                    <input id="email" type="email" class="form-control" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" type="password" class="form-control" name="password" required
                           data-eye>
                </div>
                <div class="form-group">
                    <label for="password">Confirm Password</label>
                    <input id="confirmPassword" type="password" class="form-control" name="confirmPassword" required
                           data-eye>
                </div>
                <div class="form-group">
                    <label for="role">Role</label>
                    <select id="role" name="role" class="custom-select form-control" required>
                        <option value="FREELANCER">Freelancer</option>
                        <option value="CUSTOMER">Customer</option>
                    </select>
                </div>
                <div class="form-group">
                    <label  for="image">Upload Image </label>
                    <input id="image" type="file" class="form-control"  name="image"/>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="form-group ">
                    <button type="submit" class="btn btn-primary btn-block">
                        Sign Up
                    </button>
                </div>
                <div class="form-group">
                    <a href="/login" class="page-link">already have account?</a>
                </div>
            </form>
        </div>
    </div>
</section>
</body>
</html>