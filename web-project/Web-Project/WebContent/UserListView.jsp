<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List list = (List) request.getAttribute("list");
		String SuccessMsg = (String) request.getAttribute("SuccessMsg");
		String ErrorMsg = (String) request.getAttribute("ErrorMsg");
	%>
	<%@ include file="Header.jsp"%>
	<div align="center">
		<h2>User List</h2>

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
		<form action="UserListCtl" method="post">
			<table>
				<tr>
					<th>FirstName</th>
					<td><input type="text" name="firstName" value=""
						placeholder="search by firstName"></td>
					<th>LastName</th>
					<td><input type="text" name="lastName" value=""
						placeholder="search by lastName"></td>
					<th>LoginId</th>
					<td><input type="email" name="login" value=""
						placeholder="search by loginid"><input type="submit"
						name="operation" value="search"></td>
				</tr>
			</table>
			<table border="1px" width="100%">
				<tr style="background-color: skyblue">
					<th>Delete</th>
					<th>S.No</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Login Id</th>
					<th>DOB</th>
				</tr>

				<%
					Iterator<UserBean> it = list.iterator();
					while (it.hasNext()) {
						UserBean bean = it.next();
				%>


				<tr align="center" style="background-color: #D3D3D3">
					<td><input type="checkbox" name="ids"
						value="<%=bean.getId()%>"></td>
					<td><%=bean.getId()%></td>
					<td><%=bean.getFirstName()%></td>
					<td><%=bean.getLastName()%></td>
					<td><%=bean.getLogin()%></td>
					<td><%=bean.getDob()%></td>
				</tr>
				<%
					}
				%>
			</table>
			<br>
			<table width="100%">
				<input type="submit" name="operation" value="delete">
			</table>
		</form>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>