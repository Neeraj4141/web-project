<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="GetForm3Data.jsp">
		<div align="center">
			<h1 style="color: maroon;">My Third Form</h1>
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
					<th>Dob</th>
					<td><input type="date" name="dob" value=""></td>
				</tr>
				<tr>
					<th></th>

					<td><input type="submit" name="operation" value="save"></td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>