<!DOCTYPE html>
<html>
<head>
    <title>Meu Parque</title>
</head>
<body>
 	<%@ page import="java.util.List" %>
	<%@ page import="model.Atracao" %>
	<%@ page import="model.Parque" %>
   
    <h2>Atra��es Cadastradas</h2>
    <form method="post" action="SelecionarAtracoesServlet">
    <ul>
   <%
  Parque parque = (Parque) request.getAttribute("parque");
  if (parque != null) {
    out.println("<h1>" + parque.getNome() + "</h1>"); // Use getNome() instead of toString()
    for (Atracao atracao : parque.getAtracoes()) {
        out.println("<li><input type=\"checkbox\" name=\"atracao\" value=\"" + atracao.getNome() + "\"> " + atracao.getNome() + " - " + atracao.getTipo() + " - R$" + atracao.getPreco() + "</li>");
    }
  } else {
    out.println("<h1>Parque n�o encontrado</h1>"); // Handle missing park
  }
%>
    </ul>
    <input type="submit" value="Selecionar Atra��es">
    </form>

    <h2>Nova Atra��o</h2>
    <% String precoError = (String) request.getAttribute("precoError"); %>
    <form method="post" action="ReqServlet">
        <label for="nome">Nome:</label>
        <input type="text" name="nome" id="nome" required><br><br>
        <label for="tipo">Tipo:</label>
        <input type="text" name="tipo" id="tipo" required><br><br>
        <label for="preco">Pre�o (R$):</label>
        <input type="number" name="preco" id="preco" required<% if (precoError != null) { out.println(" class=\"error\""); } %>><br>
        <% if (precoError != null) { %>
            <span class="error"><%= precoError %></span>
        <% } %><br><br>
        <button type="submit">Cadastrar Atra��o</button>
    </form>

</body>
</html>
