<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="updateStatus" modelAttribute="command">
		<h3>All Request</h3>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Valid Id</th>
					<th>User Name</th>
					<th>From Country</th>
					<th>Apply Date</th>
					<th>Payment Detail</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var='application' items='${requestScope.ApplicationList}'>
					<tr>
						<td><c:out value='${application.id}'/></td>
						<td><c:out value='${application.personal.givenname}' /></td>
						<td><c:out value='${application.personal.nationality}' /></td>
						<td><c:out value='${application.date}' /></td>
						<td><c:out value='${application.payment}' /></td>
						<td><form:select path='status' ><option>In Process</option>
								<option>Complete</option>
								<option>Rejected</option></form:select></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form:form>
</body>
</html>