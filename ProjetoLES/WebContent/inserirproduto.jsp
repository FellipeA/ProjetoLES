<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upsell Hardware</title>
</head>
<body>
	<div class="caixa">
		<h2> Produto </h2>
		<form action="./login" method="post">
			<div class="input">
				<label> Nome </label>
				<input type="text" name="nomeProduto" required="">
			</div>
			<div class="input">
				<label> Descrição </label>
				<textarea class="descricao" rows="5" cols="50" required=""></textarea>
			</div>
			<div class="input">
				<label> Preço </label>
				<input type="money" name="preco" required="">
			</div>
			<button type="submit" id="cmd" name="cmd" value="inserir">Inserir</button>
			<button type="submit" id="cmd" name="cmd" value="atualizar">Atualizar</button>
			<button type="submit" id="cmd" name="cmd" value="excluir">Excluir</button>
		</form>
	</div>
	<script type="text/javascript" src="./resources/dinheiro.js"></script>
</body>
</html>