<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<form class="form" action="students" method="POST">
			<input type="hidden" id="id" name="id" value="${student.getId()}">
			<div class="row">
				<div class="col">
					<label class="form-label" for="name">Nombre:</label>
					<c:if test="${action == 'read'}">
						<input class="form-control" type="text" value="${student.getName()}" id="name" name="name" disabled>
					</c:if>
					<c:if test="${action == 'edit'}">
						<input class="form-control" type="text" value="${student.getName()}" id="name" name="name">
					</c:if>
					
						
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label" for="lastName">Apellido:</label>
					<c:if test="${action == 'read'}">
						<input class="form-control" type="text" value="${student.getLastName()}" id="lastName" name="lastName" disabled>
					</c:if>
					<c:if test="${action == 'edit'}">
						<input class="form-control" type="text" value="${student.getLastName()}" id="lastName" name="lastName">
					</c:if>	
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label" for="address">Dirección:</label>
					<c:if test="${action == 'read'}">
						<input class="form-control" type="text" value="${student.getAddress()}" id="address" name="address" disabled>
					</c:if>
					<c:if test="${action == 'edit'}">
						<input class="form-control" type="text" value="${student.getAddress()}" id="address" name="address">
					</c:if>		
				</div>
			</div>		
			<div class="row">
				<div class="col">
					<label class="form-label" for="birthday">Cumpleaños:</label>
					<c:if test="${action == 'read'}">
						<input class="form-control" type="date" value="${student.getBirthday()}" id="birthday" name="birthday" disabled>
					</c:if>
					<c:if test="${action == 'edit'}">
						<input class="form-control" type="date" value="${student.getBirthday()}" id="birthday" name="birthday">
					</c:if>	
				</div>
			</div>	
			<div class="row pt-4">
				<div class="col">
					<a href="students" class="btn btn-secondary">Volver</a>
				</div>
				<div class="col">
					<c:if test="${action == 'edit'}">
						<button type="submit" class="btn btn-primary">Guardar</button>
					</c:if>
				</div>
			</div>	
		</form>
	</div>
		
	<jsp:include page="./footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>