<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Criar Conta</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/criar-conta.css">
</head>
<body>



	<jsp:include page="header.jsp" />
    <h2 class="titulo-conta">Página de Cadastro</h2>
    <form class="form-conta" action="<%= request.getContextPath() %>/criar-conta" method="post" method="get">
    
    	<label>Nome</label>
    	 <input type="text" name="nome" required><br><br>
    	 
    	 <label>Email</label>
    	 <input type="text" name="email" required><br><br>
    	 
    	 <label>Data de Nascimento</label>
    	 <input type="text" name="dataNascimento" required><br><br>
    	 
    	
        <label>Username:</label>
        <input type="text" name="username" required><br><br>

        <label>Senha:</label>
        <input type="text" name="senha" required><br><br>

        <input type="submit" value="Criar Conta">
    </form>