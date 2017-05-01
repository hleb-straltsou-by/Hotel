<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Login Page</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap" />
    <spring:url value="/resources/css/signin.css" var="signin" />
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${signin}" rel="stylesheet" />
</head>
<body>
<form name="form" action="j_spring_security_check" method="post" class="form-signin">
    <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')" var="isUSer"/>
    <font size="2" color="red">
        <c:if test="${not isUSer}">
            <c:if test="${empty param.error}">
                <spring:message code="login.notLogIn" />
            </c:if>
        </c:if>
    </font>

    <font size="2" color="green">
        <c:if test="${isUSer}"><spring:message code="login.logAs" />
            <security:authentication property="principal.username"/> с ролью:
            <b><security:authentication property="principal.authorities"/></b>
        </c:if>
    </font>
    <br/>
    <c:if test="${not empty param.error}">
        <font size="2" color="red"><b><spring:message code="login.invalid" /></b></font>
    </c:if>

    <h2 class="form-signin-heading"><spring:message code="login.enter" /></h2>

    <label for="inputEmail" class="sr-only"><spring:message code="email.field" /></label>
    <input id="inputEmail" class="form-control" name="j_username" value="admin@gmail.com" required autofocus/>
    <p></p>
    <label for="inputPassword" class="sr-only"><spring:message code="password.field" /></label>
    <input type="password" id="inputPassword" class="form-control" name="j_password" value="12345" required/>

    <div class="checkbox">
        <label>
            <input type="checkbox" id="rememberme"  name="_spring_security_remember_me"/><spring:message code="login.remember" />
        </label>
    </div>
    <input type="submit" value="Войти" class="btn btn-lg btn-primary btn-block" >
    <br/>
    <a href="/index.html" ><spring:message code="login.back" /></a>

    <hr><p>
    <div class="col-lg-12">
        <a href="<%=request.getContextPath()%>?languageVar=en">EN</a>
        <a href="<%=request.getContextPath()%>?languageVar=ru">RU</a>
        <p>Copyright © com.gv 2017</p>
    </div>
    <!--
    <br /><br />
    <p>Доступные роли:</p>

    <b>ROLE_ADMIN</b> <br />
    Login:<span style="color: royalblue">admin@gmail.com</span> Password: <span style="color: royalblue">12345</span> <br />
    <b>ROLE_USER</b> <br />
    Login: <span style="color: royalblue">roleuser@outlook.com</span> Password: <span style="color: royalblue">12345</span>
    -->
</form>
</body>

</html>
