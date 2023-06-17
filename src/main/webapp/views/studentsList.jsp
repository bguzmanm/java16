<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bienvenidos - Lista de Estudiantes</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
	<jsp:include page="./header.jsp"></jsp:include>

	<div class="container">
		<h2>Lista de Estudiantes</h2>	
	</div>
	<table class="table">
		<thead class="table-dark">
			<tr>
				<th>Nombre</th>
				<th>Apellido</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${students}">
				<tr>
					<td><c:out value="${student.getName()}"/></td>
					<td><c:out value="${student.getLastName()}"></c:out></td>
					<td>
						<a href="${pageContext.request.contextPath}/students?a=read&id=${student.getId()}"><i class="fa-solid fa-book-open"></i></a>
						<a href="${pageContext.request.contextPath}/students?a=edit&id=${student.getId()}"><i class="fa-solid fa-pen-to-square"></i></a>
						<a href="${pageContext.request.contextPath}/students?a=delete&id=${student.getId()}"><i class="fa-solid fa-trash-can"></i></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<jsp:include page="./footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" />
</html>