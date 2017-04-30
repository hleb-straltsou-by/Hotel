<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

  <jsp:attribute name="title">Hotel</jsp:attribute>

  <jsp:body>

    <header id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/view-3.jpg');"></div>
          <div class="carousel-caption">
            <h2>1</h2>
          </div>
        </div>
        <div class="item">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/view-1.jpg');"></div>
          <div class="carousel-caption">
            <h2>2</h2>
          </div>
        </div>
        <div class="item active">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/minsk-center.jpg');"></div>
          <div class="carousel-caption">
            <h2>3</h2>
          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
      </a>
    </header>
    <!-- Page Content -->
    <div class="container">

      <!-- Marketing Icons Section -->
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">
            <spring:message code="content.introMsg"/>
          </h1>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-check"></i><spring:message code="content.sport" /></h4>
            </div>
            <div class="panel-body">
              <p><spring:message code="content.sport.description" /></p>
              <a href="#" class="btn btn-default">Подробнее</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-gift"></i><spring:message code="content.health" /></h4>
            </div>
            <div class="panel-body">
              <p><spring:message code="content.health.description" /></p>
              <a href="#" class="btn btn-default">Подробнее</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-compass"></i><spring:message code="content.relax" /></h4>
            </div>
            <div class="panel-body">
              <p><spring:message code="content.relax.description" /></p>
              <a href="#" class="btn btn-default">Подробнее</a>
            </div>
          </div>
        </div>
      </div>

      <!-- Image Section -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-header"><spring:message code="content.gallery" /></h2>
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/hole.jpg" alt="">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/room.jpg" alt="">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/pool-1.jpg" alt="">
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact us Section -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-header"><spring:message code="content.come" /></h2>
      </div>
        <div class="col-md-6">
          <p><spring:message code="content.assortment.header" /></p>
          <ul>
            <li><spring:message code="content.assortment.lunch" /></li>
            <li><spring:message code="content.assortment.gym" /></li>
            <li><spring:message code="content.assortment.relax" /></li>
            <li><spring:message code="content.assortment.pool" /></li>
            <li><spring:message code="content.assortment.stuff" /></li>
          </ul>
         </div>
        <div class="col-md-6">
          <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/hole.jpg" alt="">
        </div>
      </div>

      <hr>

    </div>
    <!-- /.container -->

    <!-- Script to Activate the Carousel -->
    <script>
      $('.carousel').carousel({
        interval: 4000 //changes the speed
      })
    </script>
  </jsp:body>

</page:template>
