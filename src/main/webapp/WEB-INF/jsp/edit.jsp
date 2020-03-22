<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"></jsp:include>

<div class="container">

<h3>Client On-boarding</h3>
<form action='/index/update' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
  
        <tr>
            <td><b>Name</b></td>
            <td><input type='text' name='name' class='form-control' value="${user.name}" /></td>
        </tr>
 
        <tr>
            <td><b>Type</b></td>
            <td><input type='text' name='type' class='form-control' value="${user.type}" /></td>
        </tr>
 
        <tr>
            <td><b>Function</b></td>
            <td><input type='text' name='function' class='form-control' size="20" value="${user.function}" /></td>
            
        </tr>
 
 			<input type='hidden' id='id' rows='5' class='form-control' name='id' value="${user.id}"/>
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Update Client Details</button>
            </td>
        </tr>
 
    </table>
</form>


</div>

<jsp:include page="footer.jsp"></jsp:include>