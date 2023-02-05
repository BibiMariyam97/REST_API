<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Update Student Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">


</head>

<body>

	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<!-- Brand -->
		<a class="navbar-brand" href="#">Student Management System
			
		</a>
	</nav>
	<div class="container my-5">
       
        
		<div class="card">
	
					<div class="card-body">
						 <h2 class="card-title"> Student's Details </h2>
								<div class="col-md-10">

		<form action="/StudentManagement/students/save" method="POST">
			<div class="row">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Student.id}" />

			<div class="form-group col-md-8">
				<input type="text" name="firstName" value="${Student.firstName}"
					class="form-control" placeholder="firstName">

			</div>
			
			<div class="form-group col-md-8">
				<input type="text" name="lastName" value="${Student.lastName}"
					class="form-control" placeholder="lastName">

			</div>

			<div class="form-group col-md-8">

				<input type="text" name="course" value="${Student.course}"
					class="form-control " placeholder="course">

			</div>

			<div class="form-group col-md-8">

				<input type="text" name="country" value="${Student.country}"
					class="form-control" placeholder="country">

			</div>

			<div class="col-md-6">
				<input type="submit" class="btn btn-primary" value=" Submit ">
			</div>

		</form>

								</div>
					</div>
		</div>

	</div>
</body>

</html>










