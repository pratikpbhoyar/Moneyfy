<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Moneyfy : Add Expense</title>
<%@include file="../component/all_css.jsp"%>
<style>
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
body{
	background: url("../img/ex1.jpeg");
	height: 100%;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

@media (max-width: 768px) {
    body {
        height:100vh;
    }
}

</style>
</head>
<body>
	<c:if test="${empty loginUser }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="fs-3">Add Expense</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-success fs-5">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="../saveExpense" method="post">
							<div class="mb-3">
								<label>Title</label> <input type="text" name="title" class="form-control" required>
							</div>
							
							<div class="mb-3">
								<label>Date</label> <input type="date" name="date" class="form-control" required>
							</div>
							
							<div class="mb-3">
								<label>Time</label> <input type="time" name="time" class="form-control" required>
							</div>
							
							<div class="mb-3">
								<label>Description</label> <input type="text" name="description" class="form-control">
							</div>
							
							<div class="mb-3">
								<label>Price</label> <input type="number" name="price" class="form-control" required>
							</div>
							
							<button class="btn btn-danger col-md-12">Add Expense</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fixed-bottom">
		<%@include file="../component/footer.jsp"%>
	</div>
</body>
</html>