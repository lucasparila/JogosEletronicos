<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.jogoseletronicos.model.Jogo" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detalhes do Jogo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<jsp:include page="header.jsp" />

<%
    String contextPath = request.getContextPath();
    Jogo jogo = (Jogo) request.getAttribute("jogo");
    String mensagem = (String) request.getAttribute("mensagem");
%>

<div class="container py-5">
    <% if (jogo != null) { %>
        <div class="card shadow-lg border-0 p-4 p-md-5">
            <div class="row g-4 align-items-center">
                <!-- Imagem -->
                <div class="col-12 col-md-5 text-center">
                    <img src="<%= contextPath + "/" + jogo.getImagemJogo() %>" alt="Arte do Jogo" 
                         class="img-fluid rounded w-100" style="max-height: 500px; object-fit: cover;">
                </div>

                <!-- Informações -->
                <div class="col-12 col-md-7">
                    <h1 class="fw-bold mb-3"><%= jogo.getTitulo() %></h1>
                    <p class="fs-4">
                        Feito por <strong><%= jogo.getDesenvolvedor() %></strong> em <%= jogo.getAnoLancamento() %>
                    </p>
                    <hr>
                    <p class="fs-5 mb-2"><strong>Gênero:</strong> <%= jogo.getGenero() %></p>
                    <p class="fs-5 mb-2"><strong>Sinopse:</strong> <%= jogo.getSinopse() %></p>
                    <p class="fs-5 mb-2"><strong>Idioma:</strong> <%= jogo.getIdioma() %></p>
                    <p class="fs-5 mb-2"><strong>Plataforma:</strong> <%= jogo.getPlataforma() %></p>
                    <p class="fs-5 mb-4"><strong>Classificação Indicativa:</strong> <%= jogo.getClassificacaoIndicativa() %></p>

                    <div class="row g-3 mt-3">
                        <div class="col-12 col-md-6">
                            <a href="editar-jogo?titulo=<%= jogo.getTitulo() %>" class="btn btn-warning btn-lg w-100">Editar</a>
                        </div>
                        <div class="col-12 col-md-6">
                            <form action="remover-jogo" method="POST">
                                <input type="hidden" name="titulo" value="<%= jogo.getTitulo() %>">
                                <button type="submit" class="btn btn-danger btn-lg w-100">Remover</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <% } else { %>
        <div class="alert alert-warning text-center fs-4 mt-5">
            <%= mensagem != null ? mensagem : "Jogo não encontrado ou não carregado corretamente." %>
        </div>
    <% } %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
