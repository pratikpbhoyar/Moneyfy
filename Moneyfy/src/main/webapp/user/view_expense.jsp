<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@page import="com.entity.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Moneyfy : View Expense</title>
<%@include file="../component/all_css.jsp"%>
<style>
body {
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

table.scrolldown {
	width: 100%;
	/* border-collapse: collapse; */
}

/* To display the block as level element */
table.scrolldown tbody, table.scrolldown thead {
	display: block;
}

thead tr th {
	height: 40px;
	line-height: 40px;
}

table.scrolldown tbody {
	/* Set the height of table body */
	height: 340px;
	/* Set vertical scroll */
	overflow-y: auto;
	/* Hide the horizontal scroll */
	overflow-x: hidden;
}

tbody td, thead th {
	width: 250px;
}

td {
	text-align: center;
}

th {
	text-align: center;
	border-top: 2px solid black;
	border-bottom: 2px solid black;
}

::-webkit-scrollbar {
	display: none;
}


</style>
</head>
<body>
	<c:if test="${empty loginUser }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar.jsp"%>

	<div class="container pt-5">
		<div class="card">
			<div class="card-header text-center p-0">
				<p class="fs-3">All Expenses</p>
				<c:if test="${not empty msg }">
					<p class="text-center text-success fs-5">${msg}</p>
					<c:remove var="msg" />
				</c:if>
			</div>
			<div class="card-body ">
				<table class="scrolldown table table-success table-striped">
					<%
					int sum = 0;
					%>
					<!-- Table head content -->
					<thead>
						<tr>
							<th scope="col">Title</th>
							<th scope="col">Description</th>
							<th scope="col">Date</th>
							<th scope="col">Time</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>

					<!-- Table body content -->
					<tbody>
						<%
						User user = (User) session.getAttribute("loginUser");

						ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
						List<Expense> list = dao.getAllExpenseByUser(user);

						for (Expense ex : list) {
							sum = sum + Integer.parseInt(ex.getPrice());
						%>
						<tr>
							<td schope="row"><%=ex.getTitle()%></td>
							<td><%=ex.getDescription()%></td>
							<td><%=ex.getDate()%></td>
							<td><%=ex.getTime()%></td>
							<td><%=ex.getPrice()%></td>
							<td><a href="edit_expense.jsp?id=<%=ex.getId()%>" class="btn btn-sm btn-primary me-1">Edit</a> 
							<a href="../deleteExpense?id=<%=ex.getId() %>" class="btn btn-sm btn-danger me-1">Delete</a></td>
						</tr>
						<%
						}
						%>

					</tbody>
					<!-- Table head content -->
					<thead>
						<tr>
							<th scope="col">Title</th>
							<th scope="col">Description</th>
							<th scope="col">Date</th>
							<th scope="col">Time</th>
							<th scope="col" class="text-primary fs-3"><%=sum%></th>
							<th scope="col">Action</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>


	<div class="fixed-bottom">
		<%@include file="../component/footer.jsp"%>
	</div>
</body>
</html>