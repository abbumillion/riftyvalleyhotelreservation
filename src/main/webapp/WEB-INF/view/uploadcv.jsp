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
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="templates/freelancerheader.jsp"/>
<section>
    <div class="container">
        <div class=" justify-content-center ">
            <h4 class="card-title">Upload ur CV here!</h4>
            <c:if test="${not empty param.error}">
                <label id="error" class="alert alert-danger">${param.error}</label>
            </c:if>
            <form action="/uploadCV" method="POST" >
                <div class="form-group">
                    <label for="cv">CV</label>
                    <input id="cv" type="file" class="form-control" name="cv" required>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="form-group m-2">
                    <button type="submit" class="btn btn-primary btn-block">
                        Upload
                    </button>
                </div>
            </form>
        </div>
    </div>
</section>
</body>
</html>