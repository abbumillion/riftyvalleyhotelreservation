<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Post Job</title>
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
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>

</head>
<body>
<jsp:include page="templates/customerheader.jsp"/>
<section>
    <div class="container">
        <div class=" justify-content-md-center">
            <div class="card-wrapper">
                <h4 class="card-title">Post Job</h4>
                <form action="/postjob" method="POST" modelAttribute="JobDTO">
                    <div class="form-group">
                        <label for="skill">Job Skill</label>
                        <select name="skill" id="skill" class="form-control" required>
                            <c:forEach var="skill" items="${skills}">
                                <option value="${skill.getSkillName()}">${skill.getSkillName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="type">Type</label>
                        <select name="type" id="type" class=" form-control" required>
                            <option value="REMOTE">Remote</option>
                            <option value="FULLTIME">Full Time</option>
                            <option value="PERTIME">Per Time</option>
                            <option value="HOURLY">Hourly</option>
                            <option value="WEEKENDS">Weekends</option>
                            <option value="EXTRATIME">Extra Time</option>
                        </select>
                    </div>
                    <div class="form-group ">
                        <label for="budget">Salary</label>
                        <input id="budget" type="number" class="form-control" name="budget" required
                               data-eye>
                    </div>
                    <div class="form-group">
                        <label for="educationLevel">Education</label>
                        <p>what is educational level required for the job?</p>
                        <select name="educationLevel" id="educationLevel" class="form-control" required>
                            <c:forEach var="el" items="${els}">
                                <option value="${el}">${el}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group ">
                        <label for="enddate">End Date</label>
                        <input id="enddate" type="date" class="form-control" name="enddate" required
                               data-eye>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control w-100" name="description" id="description" cols="30"
                                  rows="9"
                                  onfocus="this.placeholder = ''"
                                  onblur="this.placeholder = 'Enter description'"
                                  placeholder=" job description"></textarea>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="form-group ml-30 mr-30 mt-30 mb-30">
                        <button type="submit" class="btn btn-primary btn-block">
                            Post
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="templates/copyright.jsp"/>
</body>
</html>
