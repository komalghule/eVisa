<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
        <form:form action="makeSchedule" modelAttribute="makeScheduleModel" method="post" >
		<table>
			<tbody>		
				<tr>
					<td>Enter Mission : </td>
					<td><form:input  type="textarea" path="mission"/></td>
				</tr>
				<tr>
					<td>Enter Date : </td>
					<td><form:input  type="date" path="date"/></td>
				</tr>
				<tr>
					<td>Enter Time : </td>
					<td><form:input  type="text" path="time"/></td>
				</tr>
			</tbody>
		</table>
				<center><input type="submit" class="success" value="OK" ></center>
        </form:form>

</body>
</html>