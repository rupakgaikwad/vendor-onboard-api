<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">

	<h3>${user.name} processing for online transactions</h3>
	<form action='/index/submit' method='post'>
		<br>
		<br>
		<h4>All types of online transactions</h4>



		<button type="submit" class="btn btn-primary">Done</button>
	</form>


</div>

