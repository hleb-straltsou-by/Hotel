<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<page:template>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><spring:message code="service.orders.header" /></h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html"><spring:message code="users.page.home" /></a>
                        </li>
                        <li class="active"><spring:message code="service.orders.this" /></li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:if test="${not empty serverMessage}">
                <h3 style="color:green">
                    <c:out value="${serverMessage}"/>
                </h3>
            </c:if>
            <!-- Content Row -->
            <div class="row">
                <!-- Sidebar Column -->
                <div class="col-md-9">
                    <c:url value="/order/do" var="send"/>
                    <!-- Contact Form -->
                    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
                    <div class="row">
                        <div class="col-md-8">
                            <h3><spring:message code="service.orders.make.header" /><p></p></h3>
                            <ul class="list-unstyled list-inline list-social-icons">
                                <form:form name="sentMessage" id="contactForm" action="${send}"
                                           method="post" modelAttribute="emailModel" novalidate="true" >
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="email.details.send.name" />:</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                   required data-validation-required-message="Please enter your name.">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="email.details.send.phone" />:</label>
                                            <input type="tel" class="form-control" id="phone" name="phoneNumber"
                                                   required data-validation-required-message="Please enter your phone number.">
                                        </div>
                                    </div>
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="service.order.from" />:</label>
                                            <input type="text" class="form-control" id="from" name="from"
                                                   required data-validation-required-message="Please enter begin of period for order.">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="service.order.from" />:</label>
                                            <input type="text" class="form-control" id="for" name="for"
                                                   required data-validation-required-message="Please enter begin of period for order.">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div id="success"></div>
                                    <!-- For success/fail messages -->
                                    <button type="submit" class="btn btn-primary"><spring:message code="service.order.do" /></button>
                                </form:form>
                            </ul>
                        </div>

                    </div>
                    <!-- /.row -->

                    <br />
                    <c:set var="dateVar" value="<%=new java.util.Date()%>"/>
                    Date format: <span><fmt:formatDate value="${dateVar}" pattern="dd MMM yyyy"/> </span>
                    <br />
                </div>
            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->

    </jsp:body>
</page:template>