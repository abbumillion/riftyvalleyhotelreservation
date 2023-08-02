<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Apply for Job</title>
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

</head>
<body>
<section>
    <div class="container">
        <div class=" justify-content-md-center">
            <div class="card-wrapper">
                <h4 class="card-title">Apply for Job</h4>
                <form action="/applyforjob" method="POST" modelAttribute="JobApplicationDTO">
                    <%--BIO--%>
                    <div class="form-group">
                        <label for="coverLetter">Cover Letter</label>
                        <textarea class="form-control w-100" name="coverLetter" id="coverLetter" cols="30"
                                  rows="15"
                                  onfocus="this.placeholder = ''"
                                  onblur="this.placeholder = 'Enter cover letter here.'"
                                  placeholder=" cover letter"></textarea>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="form-group ml-30 mr-30 mt-30 mb-30">
                        <button type="submit" class="btn btn-primary btn-block">
                            Apply
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
