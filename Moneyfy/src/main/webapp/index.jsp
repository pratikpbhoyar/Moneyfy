<%@page import="com.db.HibernateUtil"%>
<%@page import="com.mysql.cj.xdevapi.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media (max-width: 768px) {
    body {
        height:100vh;
    }
}
</style>
<meta charset="ISO-8859-1">
<title>Moneyfy : Home</title>
<%@include file="component/all_css.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/ex1.jpeg" class="d-block w-100" alt="..."
					height="800px">
			</div>
			<div class="carousel-item">
				<img src="img/ex2.png" class="d-block w-100" alt="..."
					height="800px">
			</div>

		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="fixed-bottom" class="site-footer ">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>