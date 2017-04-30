<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<c:url value="/email.html" var="email" />
<c:url value="/users.html" var="users" />
<c:url value="/orders.html" var="orders" />
<c:url value="/security.html" var="security" />

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><spring:message code="navMenu.home"/></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')" var="isUSer"/>


                <c:if test="${not isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; color: red">
                        <c:if test="${empty param.error}">
                            <spring:message code="navMenu.notLogin"/>
                        </c:if>
                    </li>
                    <li> <a style="color: Green;" href="<c:url value="/login.html"/>"><spring:message code="navMenu.login"/></a> </li>
                </c:if>



                <c:if test="${isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; color: green">
                        <spring:message code="navMenu.existLogin"/>
                        <security:authentication property="principal.username"/>  <spring:message code="navMenu.existLoginRole"/>
                        <b><security:authentication property="principal.authorities"/></b>

                    </li>
                    <li> <a style="color: red;" href="<c:url value="/j_spring_security_logout"/>"><spring:message code="navMenu.logout"/></a> </li>
                </c:if>


                <c:url value="/about.html" var="about"/>
                <li><a href="${about}"><spring:message code="navMenu.about"/></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="navMenu.services"/><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${email}"><spring:message code="email.details.send.header" /></a>
                        </li>
                        <li>
                            <a href="${users}"><spring:message code="users.header" /></a>
                        </li>
                        <li>
                            <a href="${orders}"><spring:message code="orders.header" /></a>
                        </li>
                        <li>
                            <a href="${security}"><spring:message code="security.header" /></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.container -->
</nav>
