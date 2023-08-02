<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List All Skills</title>
</head>
<body class="my-login-page">
<jsp:include page="templates/header.jsp"/>
<section>
    <div class="container">
        <div class="card">
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
                        <a href="/search">Advanced Search</a>
                    </li>
                </ul>
            </div>
            <div class="card card-body table-responsive">
                <c:choose>
                    <c:when test="${allSkills.getTotalPages() > 0}">
                        <table class="table table-sm table-hover">
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
                                               id="id${skill.getId()}">
                                    </td>
                                    <td>
                                        <label id="id${skill.getId()}">
                                                ${skill.getSkillCategory()}
                                        </label>
                                        <input required class="form-control" type="text" name="skillCategory"
                                               value="${skill.getSkillCategory()}"
                                               style="display: none;"
                                               id="id${skill.getId()}">
                                    </td>

                                    <td>
                                        <label id="id${skill.getId()}">
                                                ${skill.getSkillDescription()}
                                        </label>
                                        <input required class="form-control" type="text" name="skillDescription"
                                               value="${skill.getSkillDescription()}"
                                               style="display: none;"
                                               id="id${skill.getId()}">
                                    </td>
                                    <td>
                                        <a href="/update" id="update_${skill.getId()}" class="updateData"
                                           onclick="event.preventDefault();"><i class="fa fa-edit"></i></a>
                                        <a href="/save" id="save_${skill.getId()}" class="saveData"
                                           onclick="event.preventDefault();saveData(${skill.getId()});"
                                           style="display: none;"><i class="fa fa-save"></i></a>
                                    </td>
                                    <td><a href="/delete/${skill.getId()}" class="deleteData"><i
                                            class="fa fa-trash"></i></a>
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

            </div>
        </div>
        <c:if test="${allSkills.getTotalPages() > 0}">
            <nav aria-label="Page navigation example" style="margin:auto;">
                <ul class="pagination">
                    <c:set var="prev" value="0"/>
                    <c:if test="${param.page > 0}">
                        <c:set var="prev" value="${param.page -1}"/>
                    </c:if>
                    <c:if test="${allSkills.getTotalPages() > 0}">
                        <li class='page-item <c:if test="${empty param.page || param.page eq 0}">disabled</c:if>'>
                            <a class="page-link" href="/?page=${prev}&size=${maxTraySize}">Prev</a></li>
                    </c:if>
                    <c:forEach var="i" begin="0" end="${allSkills.getTotalPages() -1}">
                        <li class='page-item <c:if test="${param.page eq i || (empty param.page && i eq 0)}">active</c:if>'>
                            <a class="page-link" href="/?page=${i}&size=${maxTraySize}">${i+1}</a>
                        </li>
                    </c:forEach>
                    <c:if test="${allSkills.getTotalPages() > 0}">
                        <li class='page-item <c:if test="${allSkills.getTotalPages() <= (param.page + 1)}">disabled</c:if>'>
                            <a class="page-link" href="/?page=${param.page + 1}&size=${maxTraySize}">Next</a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </c:if>
        <input type="hidden" name="currentPage" value="${currentPage}" id="currentPageNo">
    </div>
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