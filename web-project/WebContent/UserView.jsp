<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="Header.jsp"%>

	<%
		String SuccessMsg = (String) request.getAttribute("SuccessMsg");
		String ErrorMsg = (String) request.getAttribute("ErrorMsg");
		UserBean bean = (UserBean) request.getAttribute("bean");
	%>
	<div align="center">

		<%
			if (bean != null && bean.getId() > 0) {
		%>
		<h1>Update User</h1>
		<%
			} else {
		%>
		<h1>Add User</h1>
		<%
			}
		%>
		<%
			if (SuccessMsg != null) {
		%>
		<h3 style="color: green"><%=SuccessMsg%></h3>
		<%
			}
		%>
		<%
			if (ErrorMsg != null) {
		%>
		<h3 style="color: red"><%=ErrorMsg%></h3>
		<%
			}
		%>

		<form action="UserCtl.do" method="post">
			<input type="hidden" name="id"
				value="<%=bean != null ? bean.getId() : ""%>">
			<table>
				<tr>
					<th>FirstName</th>
					<td><input type="text" name="firstName"
						value="<%=bean != null ? bean.getFirstName() : ""%>"
						placeholder="enter firstname"></td>
				</tr>
				<tr>
					<th>LastName</th>
					<td><input type="text" name="lastName"
						value="<%=bean != null ? bean.getLastName() : ""%>"
						placeholder="enter lastname"></td>
				</tr>
				<tr>
					<th>LoginId</th>
					<td><input type="email" name="login"
						value="<%=bean != null ? bean.getLogin() : ""%>"
						placeholder="enter loginid"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password"
						value="<%=bean != null ? bean.getPassword() : ""%>"
						placeholder="enter password"></td>
				</tr>
				<tr>
					<th>DOB</th>
					<td><input type="date" name="dob"
						value="<%=bean != null ? bean.getDob() : ""%>"></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation"
						value="<%=bean != null ? "Update" : "Save"%>"></td>
				</tr>

			</table>
		</form>

	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>