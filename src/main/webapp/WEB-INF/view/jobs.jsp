<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jobs</title>
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
<jsp:include page="templates/freelancerheader.jsp"/>
<section>
    <div class="card">
        <div class="card-header">
            <h4 class="float-left">Jobs</h4>
            <ul class="float-right">
                <li>
                    <form action="/searchBox" class="form-inline my-2 my-lg-0 ">
                        <input class="form-control mr-sm-2" name="searchTerm" type="search" placeholder="Search"
                               aria-label="Search">
                        <input type="hidden" name="page" value="0"/>
                        <input type="hidden" name="size" value="${maxTraySize}"/>
                        <input class="btn btn-primary " value="Search" type="submit">
                    </form>
                </li>
                <li class="text-center">
                    <a class="page-link" href="/search">Advanced Search</a>
                </li>
            </ul>
        </div>
        <c:forEach var="job" items="${allJobs.content}">
            <div class="card large-width">
                <div class="card-body">
                    <h5 class="card-title">${job.getSkill().getSkillName()}</h5>
                    <p class="card-text">${job.getDescription()}</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"> ${job.getType()}</li>
                    <li class="list-group-item">${job.getBudget()}&nbsp;birr</li>
                    <li class="list-group-item">Education Level :${job.getEducationLevel()}</li>
                </ul>
                <div class="card-footer text-muted">
                    Posted on: ${job.getPosted()} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; End Date : ${job.getEndDate()}
                </div>
                <div class="card-body">
                    <button class="btn" onclick="applyForJob(${job.getJobId()})">Apply</button>
                </div>
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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

<%--<script>--%>
<%--    function applyForJob(id) {--%>
<%--        console.log('save Data -  ' + id)--%>
<%--        // new job data--%>
<%--        var job = $('#skill' + id).val();--%>
<%--        var educationlevel = $('#educationlevel_' + id).val();--%>
<%--        var description = $('#description' + id).val();--%>
<%--        var educationlevel = $('#educationlevel_' + id).val();--%>
<%--        if (fname == "") {--%>
<%--            $('#text_fname_' + id).css('border-color', 'red');--%>
<%--            return;--%>
<%--        }--%>
<%--        if (lname == "") {--%>
<%--            $('#text_lname_' + id).css('border-color', 'red');--%>
<%--            return;--%>
<%--        }--%>
<%--        $.ajax({--%>
<%--            type: "POST",--%>
<%--            url: "/applyforjob",--%>
<%--            contentType: "application/json",--%>
<%--            dataType: "json",--%>
<%--            data: JSON.stringify({--%>
<%--                id: id,--%>
<%--                firstName: fname,--%>
<%--                lastName: lname--%>
<%--            }),--%>
<%--            success: function (data, textStatus, xhr) {--%>
<%--                console.log("success  ---> ");--%>
<%--                window.location = "/";--%>

<%--            },--%>
<%--            error: function (data, xhr, textStatus) {--%>
<%--                console.log("failure ---> ");--%>
<%--                console.log(JSON.stringify(xhr));--%>
<%--            }--%>
<%--        });--%>
<%--    }--%>

<%--</script>--%>


</body>
</html>
