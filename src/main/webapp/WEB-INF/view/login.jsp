<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Sign in Page</title>
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
<body>
<section>
    <div class="container ">
        <div class="row justify-content-md-center ">
            <div class="card-wrapper">
<%--                <div class="card fat">--%>
<%--                    <div class="card-body">--%>
                        <div class="brand">
                            <img src="resources/images/logo.png">
                        </div>
                        <h4 class="card-title">Sign In</h4>
                        <c:if test="${not empty param.error}">
                            <label style="color: red;"><%= request.getParameter("error") %>
                            </label>
                        </c:if>
                        <form action="<c:url value='/login' />" modelAttribute="loginDTO" method="POST">
                            <c:choose>
                                <c:when test="${not empty (param.error)}">
                                    <label style="color: red; display: none;" id="errorMsg">${param.error}</label>
                                </c:when>
                                <c:otherwise>
                                    <label style="color: red;" id="errorMsg">${error}</label>
                                </c:otherwise>
                            </c:choose>
                            <div class="form-group">
                                <label for="email">E-Mail Address</label>
                                <input id="email" type="email" class="form-control" placeholder="email" name="email"
                                       value="" required
                                       autofocus>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input id="password" type="password" class="form-control" placeholder="password"
                                       name="password" required
                                       data-eye>
                            </div>
                            <div class="form-group m-2">
                                <button id="loginSubmit" type="submit" class="btn btn-primary btn-block">Sign In
                                </button>
                            </div>
                            <div class="form-group m-2">
                                <a href="/signup" class="page-link">don't have account?</a>
                            </div>
                            <div class="form-group m-2">
                                <a href="/signup" class="page-link">forget password?</a>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>
</section>
</body>
</html>