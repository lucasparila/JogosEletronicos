<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Criar Conta</title>
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
            <h2 class="text-center mb-4 fw-bold">Página de Cadastro</h2>
            
            <form action="<%= contextPath %>/criar-conta" method="post">
                <div class="mb-3">
                    <label for="nome" class="form-label fs-5">Nome</label>
                    <input type="text" class="form-control" id="nome" name="nome" required>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label fs-5">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>

                <div class="mb-3">
                    <label for="dataNascimento" class="form-label fs-5">Data de Nascimento</label>
                    <input type="date" class="form-control" id="dataNascimento" name="dataNascimento" required>
                </div>

                <div class="mb-3">
                    <label for="username" class="form-label fs-5">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>

                <div class="mb-4">
                    <label for="senha" class="form-label fs-5">Senha</label>
                    <input type="password" class="form-control" id="senha" name="senha" required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-success btn-lg">Criar Conta</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
