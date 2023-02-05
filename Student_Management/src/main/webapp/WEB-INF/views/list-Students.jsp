<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous">
	
		<meta charset="UTF-8">
		<title>Student Management System</title>

</head>

<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<!-- Brand -->
		<a class="navbar-brand" href="#">Student Management System</a>
		
	</nav>
	<div class="container">
		<div class="row">
			<h1>List of Students</h1>
		</div>
	
    
		<div class="container my-4">
		<!-- Add a button -->
		<a href="/StudentManagement/students/showFormForAdd"
			class="btn btn-primary btn-sm mb-3"> Add Student </a> <a
			href="/StudentManagement/logout"
			class="btn btn-primary btn-sm mb-3 mx-auto"> Logout </a>


		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Student Id</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Students}" var="tempStudent">
					<tr>
						<td><c:out value="${tempStudent.id}" /></td>
						<td><c:out value="${tempStudent.firstName}" /></td>
						<td><c:out value="${tempStudent.lastName}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>

						<td>
							<!-- Add "update" button/link --> <a
							href="/StudentManagement/students/showFormForUpdate?studentId=${tempStudent.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a
							href="/StudentManagement/students/delete?studentId=${tempStudent.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Student?'))) return false">
								Delete </a>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
</div>
	</div>

</body>
</html>



