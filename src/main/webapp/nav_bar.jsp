<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            background-color: #f5f5dc;
            color: #2c1a12;
            font-family: Arial, sans-serif;
        }

        nav {
            background-color: #8b4513; /* Dark brown background for the navigation bar */
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: #fff; /* White text color for navigation links */
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 5px;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transition effect for background and transform */
            display: inline-block;
        }

        nav a:hover {
            background-color: #654321; /* Darker brown on hover */
            transform: scale(1.1); /* Scale effect on hover */
        }
    </style>
</head>
<body>
	<nav>
		<a href="home.jsp">HOME</a> <a href="add_student.jsp">ADD</a> <a
			href="get_students">STUDENT LIST</a>
	</nav>
</body>
</html>
