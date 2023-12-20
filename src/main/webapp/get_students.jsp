<%@page import="com.jspiders.studentmanagementsystem.object.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="nav_bar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Page</title>

<style>
        body {
            background-color: #f5f5dc;
            color: #2c1a12;
            font-family: Arial, sans-serif;
        }

        div {
            background-color: #d2b48c;
            padding: 10px;
            margin: 10px;
            border-radius: 5px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        table, th, td {
            border: 1px solid #2c1a12;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #8b4513;
            color: #fff;
        }

        td a {
            padding: 5px 10px;
            background-color: #8b4513;
            color: #fff;
            text-decoration: none;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        td a:hover {
            background-color: #654321;
        }

        h1 {
            color: #8b4513;
        }
    </style>
 
</head>
<body>
	<%
	@SuppressWarnings("unchecked")
	List<Student> students = (List<Student>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div align="center">
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Action1</th>
				<th>Action2</th>
			</tr>
			<%
			for (Student student : students) {
			%>
			<tr>

				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getMobile()%></td>
				<td><a href="delete_student?id=<%=student.getId()%>">DELETE</a></td>
				<td><a href="edit_student?id=<%=student.getId()%>">UPDATE</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Students not found.</h1>
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