<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<%
    String contextPath = request.getContextPath();
%>

<jsp:include page="header.jsp" />

<div class="container-fluid py-5">
    <div class="mx-auto w-100 px-5" style="max-width: 600px;">
        <div class="card shadow-lg border-0 p-5 bg-white">
            <h2 class="text-center mb-4 fw-bold">Página de Login</h2>
            
            <form action="<%= contextPath %>/login" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label fs-5">Nome de usuário</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>

                <div class="mb-4">
                    <label for="senha" class="form-label fs-5">Senha</label>
                    <input type="password" class="form-control" id="senha" name="senha" required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary btn-lg">Entrar</button>
                </div>
            </form>

            <div class="text-center mt-4">
                <a href="<%= contextPath %>/view/criar-conta.jsp" class="text-decoration-none">Criar Conta</a>
            </div>

            <% String mensagem = (String) session.getAttribute("mensagem"); %>
            <% if (mensagem != null) { %>
                <div class="alert alert-warning text-center mt-4">
                    <%= mensagem %>
                </div>
                <% session.removeAttribute("mensagem"); %>
            <% } %>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
