<%@page import="entity.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="index.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"> 
<title>Upsell Hardware - Home</title>
</head>
<body>
	<!-- Menu de Nevagação -->
	<div id="navdiv">
		<nav>
			<ul>
				<h1><img src="./img/logo.png"></img></h1>
				<li><a href="#home"> Home </a></li>
				<li><a href="#produtos"> Produtos </a></li>
				<li><a href="#carrinho"> Carrinho </a></li>
				<%
					Usuario usuario = new Usuario();
					usuario = (Usuario) session.getAttribute("usuario");
					if(usuario != null){
						%><li style="color: black">Olá, <%=usuario.getUsuario()%></li><%
						%><li><a href="./usuario">Sair</a></li><%
						if(usuario.temPermissaoAdmin()){
							%><li style="color: black"><a href="inserirproduto.jsp"> Inserir Novo Produto </a></li><%
						}
					} else {
						%><li style="color: black"><a href="login.jsp"> Cadastro / Login </a></li><%
					}
				%>
			</ul>
		</nav>
	</div>
	<!-- Produtos -->
	<div class="caixa-produtos">
		<ul>
			<h1> Nossos Produtos </h1>
			<div class="listaprodutos">
				<div class="produto">
					
				</div>
			</div>
		</ul>
	</div>
	<!-- Slider -->
	<div class="slides">
		<ul>
			<li><a><img src="./img/nvidia.jpg" /></a></li>
			<li><a><img src="./img/amd.jpg" /></a></li>
			<li><a><img src="./img/intel.jpg" /></a></li>
		</ul>
	</div>
	<!-- Rodapé -->
	<footer class="footer">
		<div class="footerdireita">
			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-instagram"></i></a>
		</div>
		<div class="footeresquerda">
			<p class="footerbotoes">
				<a href="#home">Home</a>
				·
				<a href="#produtos">Produtos</a>
				·
				<a href="#produtos">Carrinho</a>
				·
				<a href="#">Cadastro / Login</a>
			</p>
			<p>Upsell Hardware &copy; 2020</p>
		</div>
	</footer>
	<script type='text/javascript' src='http://code.jquery.com/jquery-1.9.1.min.js'></script>
	<script type='text/javascript' src='http://malsup.github.com/jquery.cycle.all.js'></script>
	<script type="text/javascript" src="slider.js"></script>
</body>
</html>