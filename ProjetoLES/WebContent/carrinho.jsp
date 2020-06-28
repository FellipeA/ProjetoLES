<%@page import="entity.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upsell Hardware - Carrinho</title>
<link rel="stylesheet" type="text/css" href="./css/index.css">
<link rel="stylesheet" type="text/css" href="./css/carrinho.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
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
					<%
						Usuario usuario = new Usuario();
						usuario = (Usuario) session.getAttribute("usuario");
						if (usuario != null) {
					%>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <span style="color: black;"><%=usuario.getUsuario()%></span>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="./usuario">Sair</a>
						</div></li>
					<%
						if (usuario.temPermissaoAdmin()) {
					%>
					<li class="nav-item"><a class="nav-link"
						href="./inserirproduto.jsp">Inserir Novo Produto</a></li>
					<%
						}
						} else {
					%>
					<li class="nav-item"><a class="nav-link" href="./login">Cadastro
							/ Login</a></li>
					<%
						}
					%>

					<li class="nav-item"><a class="nav-link" href="#"><img
							src="./img/carrinho.svg"></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- FIM NAV BAR -->

	<h1>Carrinho</h1>

	<div class="shopping-cart">

		<div class="column-labels">
			<label class="product-image">Image</label> <label
				class="product-details">Product</label> <label class="product-price">Price</label>
			<label class="product-quantity">Quantity</label> <label
				class="product-removal">Remove</label> <label
				class="product-line-price">Total</label>
		</div>

		<div class="product">
			<div class="product-image">
				<img src="img/cpu.jpg">
			</div>
			<div class="product-details">
				<div class="product-title">Processador I5 5GHZ</div>
				<p class="product-description">Super processador na promoção</p>
			</div>
			<div class="product-price">5.000,00</div>
			<div class="product-quantity">
				<input type="number" value="2" min="1">
			</div>
			<div class="product-removal">
				<button class="remove-product">Remove</button>
			</div>
			<div class="product-line-price">5.000,00</div>
		</div>


		<div class="totals">
			<div class="totals-item">
				<label>Subtotal</label>
				<div class="totals-value" id="cart-subtotal">71.97</div>
			</div>
			<div class="totals-item">
				<label>Tax (5%)</label>
				<div class="totals-value" id="cart-tax">3.60</div>
			</div>
			<div class="totals-item">
				<label>Shipping</label>
				<div class="totals-value" id="cart-shipping">15.00</div>
			</div>
			<div class="totals-item totals-item-total">
				<label>Grand Total</label>
				<div class="totals-value" id="cart-total">90.57</div>
			</div>
		</div>

		<button class="checkout">Checkout</button>

	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script type="text/javascript" src="./css/Carrinho.js"></script>
</body>
</html>