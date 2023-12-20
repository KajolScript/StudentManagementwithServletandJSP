<%@page import="java.util.List"%>
<%@page import="com.jspiders.studentmanagementsystem.object.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="nav_bar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<style>
        body {
            background-color: #f5f5dc;
            color: #2c1a12;
            font-family: Arial, sans-serif;
        }

        div {
            background-color: #d2b48c;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
        }

        table, th, td {
            border: 1px solid #2c1a12;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"] {
            padding: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px;
            background-color: #8b4513;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #654321;
        }

        h1 {
            color: #8b4513;
        }
    </style>
</head>
<body>
	<%
	Student student = (Student) request.getAttribute("student");
	if (student != null) {
	%>
	<div align="center">
		<form action="update_student" method="post">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" value="<%=student.getId()%>"
						readonly="true"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"
						value="<%=student.getName()%>"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"
						value="<%=student.getEmail()%>"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"
						value="<%=student.getMobile()%>"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
	<%
	}
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>