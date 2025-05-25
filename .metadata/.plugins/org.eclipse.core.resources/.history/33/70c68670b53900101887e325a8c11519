<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.jogoseletronicos.model.Usuario" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8" />
    <title>Perfil do Usuário</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

    <jsp:include page="header.jsp" />

    <%
        Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
        String contextPath = request.getContextPath();
    %>

    <main class="container my-5">
        <% if (usuario != null) { %>
            <h1 class="mb-4 text-center">Perfil do Usuário</h1>

            <section class="mb-4">
                <h4>Nome</h4>
                <p><%= usuario.getNome() %></p>
            </section>

            <section class="mb-4">
                <h4>Email</h4>
                <p><%= usuario.getEmail() %></p>
            </section>

            <section class="mb-4">
                <h4>Data de Nascimento</h4>
                <p><%= usuario.getDataNascimento() %></p>
            </section>

            <section class="mb-4">
                <h4>Username</h4>
                <p><%= usuario.getUsername() %></p>
            </section>

            <div class="text-center mt-5">
                <a href="<%= contextPath %>/view/atualizarPerfil.jsp" class="btn btn-primary btn-lg">
                    Atualizar Perfil
                </a>
            </div>
        <% } else { %>
            <div class="alert alert-warning text-center fs-5 mt-5">
                Nenhum usuário logado.
            </div>
        <% } %>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
