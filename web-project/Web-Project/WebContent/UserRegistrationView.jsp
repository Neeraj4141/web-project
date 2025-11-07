<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>User Registration</h1>
		<form action="UserRegistrationCtl" method="post">
			<table>
				<tr>
					<th>FirstName</th>
					<td><input type="text" name="firstName" value=""
						placeholder="enter firstname"></td>

				</tr>
				<tr>
					<th>LastName</th>
					<td><input type="text" name="lastName" value=""
						placeholder="enter lastname"></td>

				</tr>
				<tr>
					<th>Login</th>
					<td><input type="email" name="login" value=""
						placeholder="enter loginid"></td>

				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="password" value=""
						placeholder="password"></td>

				</tr>
				<tr>
					<th>DOb</th>
					<td><input type="date" name="dob" value=""></td>

				</tr>
				<tr>
					<th>Password</th>
					<td><input type="submit" name="submit" value="signUp"></td>

				</tr>
			</table>
		</form>
	</div>
</body>
</html>