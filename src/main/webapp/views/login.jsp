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
		<form action="login" method="post" class="form align-self-center">
			<div class="mb-3 row">
		  		<label class="col-sm-2 col-form-label" for="username">Username:</label>
		  		<div class="col-sm-4">
	  				<input type="text" id="username" name="username" class="form-control">
	  			</div>	
			</div>
			<div class="mb-3 row">
				<label for="password" class="col-sm-2 col-form-label">Password:</label>
				<div class="col-sm-4">
					<input type="password" id="password" name="password" class="form-control">	
				</div>
			</div>
			<div class="mb-3 row justify-content-evenly">
				<div class="col-sm-4 align-self-rigth">
					<button type="submit" class="btn btn-primary">Iniciar</button>
				</div>
			</div>
	
		</form>
	</div>
	
	<jsp:include page="./footer.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" />
</html>