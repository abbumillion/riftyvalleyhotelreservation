<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Create ur profile</title>
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
                <h4 class="card-title">Create ur profile here</h4>
                <form action="/freelancerregistration" method="POST" modelAttribute="FreelancerProfileDTO">
                    <%--MAJORSKILL--%>
                    <div class="form-group">
                        <label for="skill">Major Skill</label>
                        <p>what is ur major skill?</p>
                        <select name="skill" id="skill" class="form-control" required>
                            <c:forEach var="skill" items="${skills}">
                                <option value="${skill.getSkillName()}">${skill.getSkillName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <%--educationlevel--%>
                    <div class="form-group">
                        <label for="educationLevel">Education</label>
                        <p>what is ur Education Level as of now?</p>
                        <select name="educationLevel" id="educationLevel" class="form-control" required>
                            <c:forEach var="el" items="${els}">
                                <option value="${el}">${el}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <%--AVAILABILITY--%>
                    <div class="form-group">
                        <label for="availability">Availability</label>
                        <p>how about ur availability?</p>
                        <select name="availability" id="availability" class=" form-control" required>
                            <option value="REMOTE">Remote</option>
                            <option value="FULLTIME">Full Time</option>
                            <option value="PERTIME">Per Time</option>
                            <option value="HOURLY">Hourly</option>
                            <option value="WEEKENDS">Weekends</option>
                            <option value="EXTRATIME">Extra Time</option>
                        </select>
                    </div>
                    <%--BIO--%>
                    <div class="form-group">
                        <label for="bio">Bio</label>
                        <p>write something about ur self.</p>
                        <textarea class="form-control w-100" name="bio" id="bio" cols="30"
                                  rows="9"
                                  onfocus="this.placeholder = ''"
                                  onblur="this.placeholder = 'Enter something about ur self'"
                                  placeholder=" self description"></textarea>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="form-group ml-30 mr-30 mt-30 mb-30">
                        <button type="submit" class="btn btn-primary btn-block">
                            Save Details
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
