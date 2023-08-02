<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Post Job</title>
</head>
<body>
<jsp:include page="templates/customerheader.jsp"/>
<section class="h-100">
    <div class="container h-100 fa-align-center">
        <div class="card-wrapper">
            <div class="card fat">
                <div class="card-header">
                    <h4 class="float-left">List of Skills</h4>
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
                            <a href="/searchskillSubmit">Advanced Search</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <h4 class="card-title">Job Skill</h4>
                    <c:if test="${not empty param.error}">
                        <label id="error" class="alert alert-danger">${param.error}</label>
                    </c:if>
                    <form action="/postjob" method="POST" ModelAttribute="SkillDTO">
                        <div class="form-group">
                            <label>Choose Skills</label>
                        </div>
                        <div class="form-group ">
                            <c:choose>
                                <c:when test="${allSkills.getTotalPages() > 0}">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>Skill Id</th>
                                            <th>Skill Name</th>
                                            <th>Skill Category</th>
                                            <th>Skill Description</th>
                                            <th colspan="2">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="skill" items="${allSkills.getContent()}">
                                            <tr>
                                                <td>
                                                    <label>${skill.getId()}</label>
                                                </td>
                                                <td>
                                                    <label id="skillName${skill.getId()}">
                                                            ${skill.getSkillName()}
                                                    </label>
                                                    <input required type="text" name="skillName" class="form-control"
                                                           value="${skill.getSkillName()}"
                                                           style="display: none;"
                                                           id="skillName${skill.getId()}">
                                                </td>
                                                <td>
                                                    <label id="skillCategory${skill.getId()}">
                                                            ${skill.getSkillCategory()}
                                                    </label>
                                                    <input required class="form-control" type="text" name="skillCategory"
                                                           value="${skill.getSkillCategory()}"
                                                           style="display: none;"
                                                           id="skillCategory${skill.getId()}">
                                                </td>
                                                <td>
                                                    <label id="skillDescription${skill.getId()}">
                                                            ${skill.getSkillDescription()}
                                                    </label>
                                                    <input required class="form-control" type="text" name="skillDescription"
                                                           value="${skill.getSkillDescription()}"
                                                           style="display: none;"
                                                           id="skillDescription${skill.getId()}">
                                                </td>
                                                <td>
                                                    <a href="/update" id="update_${skill.getId()}" class="updateData"
                                                       onclick="event.preventDefault();"><i class="fa fa-edit"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </c:when>
                                <c:otherwise>
                                    <h5>No Skills Found... Search again!</h5>
                                </c:otherwise>
                            </c:choose>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div class="form-group no-margin">
                            <button type="submit" class="btn btn-primary btn-block">
                                Post
                            </button>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
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
