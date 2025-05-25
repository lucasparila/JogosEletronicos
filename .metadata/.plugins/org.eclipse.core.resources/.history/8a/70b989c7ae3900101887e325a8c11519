<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Jogo</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/login.css">
</head>
<body>

<%
    String contextPath = ((HttpServletRequest) request).getContextPath();
%>

    <jsp:include page="header.jsp" />
    <h2 class="titulo-login">Página de Login</h2>
    
    <form class="form-login" action="<%= request.getContextPath() %>/login" method="post">
        <label>Username:</label>
        <input type="text" name="username" required><br><br> 
        <label>Senha:</label>
        <input type="password" name="senha" required><br><br>
        <input type="submit" value="Entrar"><br><br>
        
        <a href="<%= contextPath %>/view/criar-conta.jsp">Criar Conta</a>
    </form>
    
    <% String mensagem = (String) session.getAttribute("mensagem"); %>
<% if (mensagem != null) { %>
    <p class="mensagem"><%= mensagem %></p>
    <% session.removeAttribute("mensagem"); %> <!-- Remove após exibir -->
<% } %>
</body>
</html>