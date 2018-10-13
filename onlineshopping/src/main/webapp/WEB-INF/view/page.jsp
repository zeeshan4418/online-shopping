<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
	<!-- Header -->
	<%@include file="./components/header.jsp" %>

<div class="wrapper">
	
	<!-- Navbar -->
    <%@include file="./components/navbar.jsp" %>
	
	<div class="content">
		<!-- Content Home Page  -->
	   	<c:if test="${userClickHome == true}">
	    	<%@include file="home.jsp" %>
	   	</c:if>
	   	
	   	<!-- Content About Page  -->
	   	<c:if test="${userClickAbout == true}">
	    	<%@include file="about.jsp" %>
	   	</c:if>
	   	
	   	<!-- Content Contact Page  -->
	   	<c:if test="${userClickContact == true}">
	    	<%@include file="contact.jsp" %>
	   	</c:if>
	</div>
	      
    <!-- Footer -->
	<%@include file="./components/footer.jsp" %>
	
</div>

	<!-- Footer Links -->
	<%@include file="./components/footer-links.jsp" %>