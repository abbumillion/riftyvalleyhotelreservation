<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Job</title>
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
</head>
<body>
<jsp:include page="templates/freelancerheader.jsp"/>
<section>
    <div class="card">
        <div class="card-header">
            <h4 class="float-left">Job</h4>
        </div>
        <c:forEach var="job" items="${job}">
            <div class="card large-width">
                <div class="card-body">
                    <h5 class="card-title">${job.getSkill().getSkillName()}</h5>
                    <p class="card-text">${job.getDescription()}</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"> ${job.getCustomer.getUser().getFull}</li>
                    <li class="list-group-item"> ${job.getType()}</li>
                    <li class="list-group-item"> ${job.getJobId()}</li>
                    <li class="list-group-item"> ${job.getType()}</li>
                    <li class="list-group-item">${job.getBudget()}&nbsp;birr</li>
                    <li class="list-group-item">Education Level :${job.getEducationLevel()}</li>
                </ul>
                <div class="card-body">
                    <a href="#" class="btn">View</a>
                    <a href="apply" class="btn">Apply</a>
                </div>
                <div class="card-footer text-muted">
                    Posted on: ${job.getPosted()} &nbsp; &nbsp;  &nbsp;  &nbsp; &nbsp; End Date : ${job.getEndDate()}
                </div>
            </div>
        </c:forEach>
    </div>
</section>
<jsp:include page="templates/copyright.jsp"/>
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
