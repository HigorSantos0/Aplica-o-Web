<!DOCTYPE html>
<html>
<head>
    <title>Pagamento</title>
</head>
<body>
    <h1>Pagamento</h1>
    <form method="post" action="ProcessarPagamentoServlet">
        <label for="nome">Nome no cart�o:</label>
        <input type="text" name="nome" id="nome" required><br><br>
        <label for="numeroCartao">N�mero do cart�o:</label>
        <input type="text" name="numeroCartao" id="numeroCartao" required><br><br>
        <label for="validade">Validade (MM/AA):</label>
        <input type="text" name="validade" id="validade" required><br><br>
        <label for="cvv">CVV:</label>
        <input type="text" name="cvv" id="cvv" required><br><br>
        <button type="submit">Finalizar Pagamento</button>
    </form>
</body>
</html>
