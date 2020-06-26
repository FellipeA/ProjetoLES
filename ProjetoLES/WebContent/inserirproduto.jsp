<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="inserirproduto.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
	rel="stylesheet">
<title>Upsell Hardware</title>
</head>
<body>
	<div class="caixa">
		<h2>Produto</h2>
		<form action="./login" method="post">
			<div class="input">
				<label> Nome &nbsp</label> <input type="text" name="nomeProduto"
					required="" placeholder="Digite o nome do produto">
			</div>
			<div class="input">
				<label> Preço &nbsp</label>
				<input type="text" data-prefix="R$ " name="preco" id="preco" class="form-control" placeholder="R$ 0.00">
			</div>
			<div class="input">
				<label class="descp"> Descrição </label><br> <br>
				<textarea rows="4" cols="50"
					placeholder="Digite a descrição do produto"></textarea>
			</div>
		</form>
		<div class="botoes">
			<button type="submit" id="cmd" name="cmd" value="inserir">Inserir</button>
			<button type="submit" id="cmd" name="cmd" value="atualizar">Atualizar</button>
			<button type="submit" id="cmd" name="cmd" value="excluir">Excluir</button>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-maskmoney/3.0.2/jquery.maskMoney.min.js" ></script>
    <script>
        jQuery(function () {
            jQuery('#preco').maskMoney();
        });
    </script>
</body>
</html>