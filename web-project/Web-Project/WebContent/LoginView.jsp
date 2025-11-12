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
	%>
	<div align="center">
		<h1>Login</h1>
		<%
			if (SuccessMsg != null) {
		%>
		<h3 style="color: green;"><%=SuccessMsg%></h3>
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

		<form action="LoginCtl" method="post">
			<table>
				<tr>
					<th>LoginId</th>
					<td><input type="email" name="login" value=""
						placeholder="enter loginid"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password" value=""
						placeholder="enter password"></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="signIn"></td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>