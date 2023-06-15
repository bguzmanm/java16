<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bienvenidos - Estudiante</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

</head>
<body>
<div class="container">
	<jsp:include page="./header.jsp"></jsp:include>

	<div class="container">
		<h2>Vista Estudiante</h2>	
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<label for="name">Nombre:</label>
				<input type="text" value="${student.getName()}" id="name">	
			</div>
		</div>
		<div class="row">
			<div class="col">
				<label for="lastName">Apellido:</label>
				<input type="text" value="${student.getLastName()}" id="lastName">	
			</div>
		</div>
		<div class="row">
			<div class="col">
				<label for="address">Dirección:</label>
				<input type="text" value="${student.getAddress()}" id="address">	
			</div>
		</div>		
		<div class="row">
			<div class="col">
				<label for="birthday">Cumpleaños:</label>
				<input type="date" value="${student.getBirthday()}" id="birthday">	
			</div>
		</div>		
	</div>
	<a href="students" class="btn btn-primary">Volver</a>
	<jsp:include page="./footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" />
</html>