<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>


<% request.setAttribute("action", request.getParameter("page"));%>

<c:choose>
	<c:when test = "${action eq 'administrative'}">
		<jsp:include page = "administrative.jsp"/>
	</c:when>
	<c:when test = "${action eq 'settings'}">
		<jsp:include page = "settings.jsp"/>
	</c:when>
	<c:otherwise>
		<jsp:include page= "dashboard.jsp" />
	</c:otherwise>

</c:choose>