<%@page import="entity.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<title>Upsell Hardware - Home</title>
</head>
<body>
	<!-- Menu de Navegação -->
	<nav class="navbar navbar-expand-lg fixed-top">
		<div class="container" id="containerid">
			<a class="navbar-brand" href="#">Upsell Hardware</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Sobre</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Produtos</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Cadastro
							/ Login</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><img src="./img/carrinho.svg"></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Slider -->
	<div id="carouselExampleIndicators" class="carousel slide" 
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./img/intel.png" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="./img/nvidiaslider.png" class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!-- Sobre -->
	<Section id="sobre">
		<h2> Sobre Nós </h2>
		<p>Somos uma empresa com iniciativa de cunho particular destinada ao desenvolvimento de aplicações para facilitar 
			a compreensão e desenvolvimento do estudante em uma vasta gama de matérias.</p>
		<a href="#contato" class="botao">Cadastre-se</a>
	</section>
	<!-- Produtos -->
	<div class="container">
		<div class="row row-cols-1 row-cols-md-4">
			<div class="col mb-4">
				<div class="card">
					<img src="img/cel.jpg" class="card-img-top" alt="Repelente">
					<div class="card-body">
						<h5 class="card-title">Celular Motorola</h5>
						<p class="card-text">R$ 1500,00</p>
						<button class="btn btn-primary">Comprar</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Rodapé -->
	<footer class="footer">
		<div class="footerdireita">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-instagram"></i></a>
		</div>
		<div class="footeresquerda">
			<p class="footerbotoes">
				<a href="#home">Home</a> · <a href="#sobre">Sobre</a> · <a href="#produtos">Produtos</a> · <a
					href="#produtos">Carrinho</a> · <a href="#">Cadastro / Login</a>
			</p>
			<p>Upsell Hardware &copy; 2020</p>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>