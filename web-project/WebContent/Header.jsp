<%@page import="com.rays.bean.UserBean"%>
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
		UserBean userBean = (UserBean) session.getAttribute("user");
	%>
	<%
		if (userBean != null) {
	%>
	<h2>
		<%="Hii, " + userBean.getFirstName()%>
	</h2>
	<%
		} else {
	%>
	<h2 style="color: maroon;">Hii, Guest</h2>
	<%
		}
	%>
	<%
		if (userBean != null) {
	%>
	<a href="LoginCtl?operation=Logout">Logout</a> |
	<a href="UserCtl.do">AddUser</a> |
	<a href="UserListCtl.do">UserList</a> |
	<%
		} else {
	%>
	<a href="LoginCtl">Login</a> |
	<a href="UserRegistrationCtl">SignUp</a> |
	<%
		}
	%>
	<a href="WelcomeCtl">Welcome |</a> |
	<hr>

</body>
</html>