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
		for (int i = 0; i <= 100; i++) {
	%>
	<div align="center">
		<h1><%=i%>Neeraj
		</h1>
	</div>
	<div align="left">
		<h1><%=i%>Neeraj
		</h1>
	</div>
	<div align="right">
		<h1><%=i%>Neeraj
		</h1>
	</div>
	<%
		}
	%>

</body>
</html>