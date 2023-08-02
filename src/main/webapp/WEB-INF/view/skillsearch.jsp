<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Skill Search Page</title>
</head>
<body class="my-login-page">
<jsp:include page="templates/header.jsp"/>
<section>
    <div class="container">
        <div class="row justify-content-md-center">
            <form action="/searchskillSubmit" method="POST">
                <h4 class="text-center">Advanced Search Page</h4>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr>
                            <th>Search Keyword</th>
                            <th>Select Search By</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" class="form-control" name="searchKeyword"
                                       placeholder="type keyword here...">
                            </td>
                            <td>
                                <select id="criteriaId" name="criteria" class="form-control">
                                    <option value="skillName">Name</option>
                                    <option value="skillCategory">Category</option>
                                    <option value="skillDescription">Description</option>
                                </select>
                            </td>
                            <td>
                                <input class="btn btn-outline-primary my-2 my-sm-0" name="searchButton"
                                       value="Search Now!"
                                       type="submit">
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</section>
<c:if test="${not empty result}">
    <section class="">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="card">
                    <div class="card-header">
                        <h4 class="float-left">Matched Skills</h4>
                    </div>
                    <div class="card card-body table-responsive">
                        <table class="table table-hover">
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
                    </table>
                </div>
            </div>
        </div>
        </div>
    </section>
</c:if>
<jsp:include page="templates/pageScript.jsp"/>
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