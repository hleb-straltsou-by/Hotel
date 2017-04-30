<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <c:url value="/jstlReturnUsers" var="jstlReturnUsers" />

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><spring:message code="users.header" /></h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html"><spring:message code="users.page.home" /></a>
                        </li>
                        <li class="active"><spring:message code="users.page.this" /></li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->
            <div class="row">
                <!-- Sidebar Column -->
                <div class="col-md-3">
                    <div class="list-group">

                        <a href="index.html" class="list-group-item"><spring:message code="users.page.home" /></a>
                        <a href="${jstlReturnUsers}" class="list-group-item"><spring:message code="users.select.all" /></a>
                    </div>
                </div>
                <!-- Content Column -->
                <div class="col-md-9">
                    <c:if test="${not empty resultObjectList}">
                        <b>Result List:</b>
                        <table>
                            <c:forEach var="userVar" items="#{resultObjectList}">
                                <tr>
                                    <td><b>idUser: </b></td>
                                    <td><c:out value="${userVar.idUser}"/></td>
                                </tr>
                                <tr>
                                    <td><b>username: </b></td>
                                    <td><c:out value="${userVar.username}"/></td>
                                </tr>
                                <tr>
                                    <td><b>enabled: </b></td>
                                    <td><c:out value="${userVar.enabled}"/></td>
                                </tr>
                                <tr><td><b style="color:green">End user with id:${userVar.idUser}</b></td></tr>
                                <tr><td> <br /></td></tr>
                            </c:forEach>
                        </table>
                    </c:if>

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

