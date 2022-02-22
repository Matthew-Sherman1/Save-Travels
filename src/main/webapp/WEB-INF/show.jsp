<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Show Expense</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>

<body>
	<h3>Expense Details</h3>
	<a href="/expenses">Go back</a>

	<div>
		<strong>Expense Name</strong>
	</div>

	<div>
		<c:out value="${expense.name}" />
	</div>

	<div>
		<strong>Expense Description</strong>
	</div>

	<div>
		<c:out value="${expense.description}" />
	</div>

	<div>
		<strong>Vendor</strong>
	</div>

	<div>
		<c:out value="${expense.vendor}" />
	</div>

	<div>
		<strong>Amount Spent</strong>
	</div>

	<div>
		<c:out value="${expense.amount}" />
	</div>

</body>

</html>