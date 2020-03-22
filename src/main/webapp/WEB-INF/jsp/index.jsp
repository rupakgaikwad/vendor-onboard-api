<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp"></jsp:include>

<h3>Client Registration</h3>
<br>
<form action='/index/add' method='post'>

	<table class='table table-hover table-responsive table-bordered'>

		<tr>
			<td><b>Name</b></td>
			<td><input type='text' name='name' class='form-control' required /></td>
		</tr>

		<tr>
			<td><b>Type</b></td>
			<td><input type='text' name='type' class='form-control'
				required /></td>
		</tr>

		<tr>
			<td><b>Function</b></td>
			<td><input type='text' name='function' class='form-control'
				size="20" required /></td>

		</tr>


		<tr>
			<td></td>
			<td>
				<button type="submit" class="btn btn-primary">Register</button>
			</td>
		</tr>

	</table>
	<b><c:out value="${danger}"></c:out></b>
</form>



<h3>List Of On-boarded Clients</h3>
<br>
<table class="table table-hover">

	<thead>
		<tr>
			<th><b>Client Name</b></th>
			<th><b>Client Type</b></th>
			<th><b>Client Function</b></th>
			<th><b>Transactions</b></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="lou">
			<tr>
				<td><c:out value="${lou.name}"></c:out></td>
				<td><c:out value="${lou.type}"></c:out></td>
				<td><c:out value="${lou.function}"></c:out></td>

				<td><a href="/index/${lou.id}/process">
						<button type="submit" class="btn btn-primary">Proceed Further
							</button>
				</a></td>
				<td><a href="/index/${lou.id}/edit">
						<button type="submit" class="btn btn-primary">Edit Client
							Details</button>
				</a></td>
				<td><a href="/index/${lou.id}/delete">
						<button type="submit" class="btn btn-primary">Delete
							Client</button>
				</a></td>
			</tr>

		</c:forEach>
	</tbody>
</table>
</div>

<jsp:include page="footer.jsp"></jsp:include>