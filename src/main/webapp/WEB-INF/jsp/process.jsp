<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">

	<h3>${user.name} processing....</h3>
	<form action='/index/submit' method='post'>
		<br> <br>
		<h4>here common functionality will be shown...</h4>
<br> <br>
		

	</form>
	<h5>here specific client functionality will be shown...</h5>
	<c:set var="processUrl" value="/WEB-INF/jsp/process${user.id}.jsp"></c:set>

	<jsp:include page="${processUrl}"></jsp:include>
	
</div>

