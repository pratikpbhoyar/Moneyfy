<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Moneyfy : Login</title>
<%@include file="component/all_css.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}
body{
	background: url("img/ex1.jpeg");
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
	<%@include file="component/navbar.jsp"%>
	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Login User</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-danger fs-5">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="login" method="post">

							<div class="mb-3">
								<label>Email</label> <input type="email" name="email"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Password</label> <input type="password" name="password"
									class="form-control" required>
							</div>

							<button class="btn btn-danger col-md-12">Login</button>
							<div class="text-center mt-2">
								Don't have Account ? <a href="register.jsp"
									class="text-decoration-none">Create One</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fixed-bottom">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>