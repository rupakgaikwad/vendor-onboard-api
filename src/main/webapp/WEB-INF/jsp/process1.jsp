<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">

	<h3>${user.name} processing for Reward balance</h3>
	<form action='/index/submit' method='post'>
		<br> <br>
		<h4>Reward balance information</h4>



		<button type="submit" class="btn btn-primary">Done</button>
	</form>


</div>

