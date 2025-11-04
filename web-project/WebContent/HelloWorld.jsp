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
		for (int i = 1; i <= 10; i++) {
	%>
	<div align="center">
		<h1><%=i%>
			HelloWorld
		</h1>
		<h2><%=i%>
			HelloWorld
		</h2>
		<h3><%=i%>
			HelloWorld
		</h3>

	</div>
	<div align="right">
		<h1><%=i%>
			HelloWorld
		</h1>
		<h2><%=i%>
			HelloWorld
		</h2>
		<h3><%=i%>
			HelloWorld
		</h3>

	</div>
	<div align="left">
		<h1><%=i%>
			HelloWorld
		</h1>
		<h2><%=i%>
			HelloWorld
		</h2>
		<h3><%=i%>
			HelloWorld
		</h3>

	</div>
	<%
		}
	%>

</body>
</html>