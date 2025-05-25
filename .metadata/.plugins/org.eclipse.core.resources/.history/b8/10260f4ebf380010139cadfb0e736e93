<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.jogoseletronicos.model.Jogo" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detalhes do Jogo</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/header.css">
</head>
<body>

    <jsp:include page="header.jsp" />

    <%
        Jogo jogo = (Jogo) request.getAttribute("jogo");
        String mensagem = (String) request.getAttribute("mensagem");

        if (jogo != null) {
    %>
        <h2><strong><%= jogo.getTitulo() %></strong></h2>
        <img src="uploads/<%= jogo.getImagemJogo() %>" alt="Arte do Jogo" width="200">            
        <p><strong>Desenvolvedor:</strong> <%= jogo.getDesenvolvedor() %></p>
        <p><strong>Ano de Lançamento:</strong> <%= jogo.getAnoLancamento() %></p>
        <p><strong>Gênero:</strong> <%= jogo.getGenero() %></p>
        <p><strong>Sinopse:</strong> <%= jogo.getSinopse() %></p>
        <p><strong>Idioma:</strong> <%= jogo.getIdioma() %></p>
        <p><strong>Plataforma:</strong> <%= jogo.getPlataforma() %></p>
        <p><strong>Classificação Indicativa:</strong> <%= jogo.getClassificacaoIndicativa() %></p>
        <a href="editar-jogo?titulo=<%= jogo.getTitulo() %>">Editar</a><br><br>

        <form action="remover-jogo" method="POST">
            <input type="hidden" name="titulo" value="<%= jogo.getTitulo() %>">
            <button type="submit">Remover</button>
        </form>

    <% 
        } else { 
    %>
        <p><%= mensagem != null ? mensagem : "Jogo não encontrado ou não carregado corretamente." %></p>
    <% 
        } 
    %>

</body>
</html>
