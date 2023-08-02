<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">
        <img src="resources/images/logo.png" width="50" height="50" class="d-inline-block align-top" alt="">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">News Feed<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/jobform">Messages</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/jobs">Jobs</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/jobapplications">Job Applications</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/profile">My Profile</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/contactus">Contact Us</a>
            </li>
        </ul>
        <div>
            <a style="text-align: right; color: #fff;" href="<c:url value="logout" />">Logout <i
                    class="fa fa-sign-out fa-lg"></i>
            </a>
        </div>
    </div>
</nav>