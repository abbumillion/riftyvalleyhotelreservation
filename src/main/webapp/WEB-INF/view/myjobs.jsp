<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My Jobs</title>
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
<jsp:include page="templates/freelancerheader.jsp"/>
<section>
    <div class="card">
        <div class="card-header">
            <h4 class="float-left">My Jobs</h4>
            <ul class="float-right">
                <li>
                    <form action="/searchBox" class="form-inline my-2 my-lg-0 ">
                        <input class="form-control mr-sm-2" name="searchTerm" type="search" placeholder="Search"
                               aria-label="Search">
                        <input type="hidden" name="page" value="0"/>
                        <input type="hidden" name="size" value="${maxTraySize}"/>
                        <input class="btn btn-outline-primary my-2 my-sm-0" value="Search" type="submit">
                    </form>
                </li>
                <li class="text-right">
                    <a href="/search">Advanced Search</a>
                </li>
            </ul>
        </div>
        <div class="card card-body table-responsive">
            <c:choose>
                <c:when test="${allJobs.totalPages > 0}">
                    <table class="table table-sm table-hover">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>type</th>
                            <th>Skill</th>
                            <th>budget</th>
                            <th>vacancy</th>
                            <th>posted</th>
                            <th>endDate</th>
                            <th rowspan="">description</th>
                            <th colspan="2">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="job" items="${allJobs.content}">
                            <tr>
                                <td>
                                    <label>${job.getJobId()}</label>
                                </td>
                                <td>
                                    <label>${job.getType()}</label>
                                </td>
                                <td>
                                    <label>${job.getSkill().getSkillName()}</label>
                                </td>
                                <td>
                                    <label>${job.getBudget()}</label>
                                </td>
                                <td>
                                    <label>${job.getEducationalLevel()}</label>
                                </td>
                                <td>
                                    <label>${job.getPosted()}</label>
                                </td>
                                <td>
                                    <label>${job.getEndDate()}</label>
                                </td>
                                <td>
                                    <label>${job.getDescription()}</label>
                                </td>
                                <td>
                                    <a href="/update" id="update_${job.getJobId()}" class="updateData"
                                       onclick="event.preventDefault();"><i class="fa fa-edit"></i></a>
                                    <a href="/save" id="save_${job.getJobId()}" class="saveData"
                                       onclick="event.preventDefault();saveData(${job.getJobId()});"
                                       style="display: none;"><i class="fa fa-save"></i></a>
                                </td>
                                <td><a href="/delete/${job.getJobId()}" class="deleteData"><i
                                        class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <h5>No users Found... Search again!</h5>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <c:if test="${allJobs.totalPages > 0}">
        <nav aria-label="Page navigation example" style="margin:auto;">
            <ul class="pagination">
                <c:set var="prev" value="0"/>
                <c:if test="${param.page > 0}">
                    <c:set var="prev" value="${param.page -1}"/>
                </c:if>
                <c:if test="${allJobs.totalPages > 0}">
                    <li class='page-item <c:if test="${empty param.page || param.page eq 0}">disabled</c:if>'>
                        <a class="page-link" href="/?page=${prev}&size=${maxTraySize}">Prev</a></li>
                </c:if>
                <c:forEach var="i" begin="0" end="${allJobs.totalPages -1}">
                    <li class='page-item <c:if test="${param.page eq i || (empty param.page && i eq 0)}">active</c:if>'>
                        <a class="page-link" href="/?page=${i}&size=${maxTraySize}">${i+1}</a>
                    </li>
                </c:forEach>
                <c:if test="${allJobs.totalPages > 0}">
                    <li class='page-item <c:if test="${allJobs.totalPages <= (param.page + 1)}">disabled</c:if>'>
                        <a class="page-link" href="/?page=${param.page + 1}&size=${maxTraySize}">Next</a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </c:if>
    <input type="hidden" name="currentPage" value="${currentPage}" id="currentPageNo">
</section>
<jsp:include page="templates/copyright.jsp"/>
<!-- JS here -->
<!-- All JS Custom Plugins Link Here here -->
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