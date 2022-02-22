<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>
	<form:form action="/expenses/${expense.id}" method="POST"
		modelAttribute="expense">
		<input type="hidden" name="_method" value="put">
		<div>
			<form:label path="name" for="formInput">Expense Name:</form:label>
			<form:input type="text" id="formInput"
				path="name" />
			<form:errors path="name" />
		</div>
		<div>
			<form:label path="vendor" for="formInput">Vendor:
                    </form:label>
			<form:input type="text" id="formInput"
				path="vendor" placeholder="" />
			<form:errors path="vendor" />
		</div>
		<div>
			<form:label path="amount" for="formInput">Amount:
                    </form:label>
			<form:input type="amount" id="formInput"
				path="amount" placeholder="" />
			<form:errors path="amount" />
		</div>
		<div>
			<form:label path="description" for="formControlTextarea">
                      Description:</form:label>
			<form:textarea path="description"
				id="formControlTextarea" rows="3" />
			<form:errors path="description" />
		</div>
		<div>
			<input type="submit" value="Submit" >
		</div>
	</form:form>
</body>
</html>