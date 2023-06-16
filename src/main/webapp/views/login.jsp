<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bienvenidos - Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

</head>
<body>
<div class="container">
	<jsp:include page="./header.jsp"></jsp:include>

	<div class="container">
		<h2>Autenticación</h2>	
	</div>
	<div class="container">
		<form action="login" method="post" class="form">
			<div class="mb-3">
	  			<label class="form-label" for="username">Username:</label>
	  			<input type="text" id="username" name="username" class="form-control">	
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password:</label>
				<input type="password" id="password" name="password" class="form-control">	
			</div>
	
		<button type="submit" class="btn btn-primary">Iniciar</button>
		</form>
	</div>
	
	<jsp:include page="./footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" />
</html>