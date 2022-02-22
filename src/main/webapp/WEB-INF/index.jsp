<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
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
<title>Save Travels</title>
</head>
<body>
	<div>
            <h1>Save Travels</h1>
            <table>
              <thead>
                <tr>
                  <th>Expense</th>
                  <th>Vendor</th>
                  <th>Amount</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="expense" items="${expenses}">
                  <tr>
                    <td>
                      <a href="/expenses/${expense.id}">
                        <c:out value="${expense.name}" />
                      </a>
                    </td>
                    <td>
                      <c:out value="${expense.vendor}" />
                    </td>
                    <td>
                      $
                      <c:out value="${expense.amount}" />
                    </td>
                    <td>
                      <a href="/expenses/${expense.id}/edit">Edit</a>
                      <form action="/expenses/${expense.id}" method="post">
                        <input type="hidden" name="_method" value="delete">
                        <input type="submit" value="Delete">
                      </form>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
            <div>
              <h3>Add an expense:</h3>
              <div>
                <form:form action="/expenses/submit" method="POST" modelAttribute="expense">
                  <div>
                    <form:label path="name" for="formInput">Expense Name:</form:label>
                    <form:input type="text" id="formInput" path="name" />
                    <form:errors path="name"/>
                  </div>
                  <div>
                    <form:label path="vendor" for="formInput">Vendor:
                    </form:label>
                    <form:input type="text" id="formInput" path="vendor" placeholder="" />
                    <form:errors path="vendor"/>
                  </div>
                  <div>
                    <form:label path="amount" for="formInput">Amount:
                    </form:label>
                    <form:input type="amount" id="formInput" path="amount" placeholder="" />
                    <form:errors path="amount"/>
                  </div>
                  <div>
                    <form:label path="description" for="formControlTextarea">
                      Description:</form:label>
                    <form:textarea path="description" id="formControlTextarea" rows="3" />
                    <form:errors path="description"/>
                  </div>
                  <div>
                    <input type="submit" value="Submit">
                  </div>
                </form:form>
              </div>
            </div>
          </div>
</body>
</html>