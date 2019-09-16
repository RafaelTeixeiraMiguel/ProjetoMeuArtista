<%-- 
    Document   : excluir
    Created on : 14/09/2019, 23:27:37
    Author     : AfonsoSantos
--%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("cancelar") != null) {
        response.sendRedirect("lista-bandas.jsp");
    }
    if (request.getParameter("remove") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        Db.getBanda().remove(index);
        response.sendRedirect("lista-bandas.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <h1>Exluir Banda</h1>
            <%try {%>
            <%int index = Integer.parseInt(request.getParameter("index"));%>
            <%Banda banda = Db.getBanda().get(index);%>
            <form>
                <div class="form-group row">
                    <label for="id" class="col-sm-1 col-form-label">Código:</label>
                    <div class="col-sm-10">
                        <input name="index" type="text" readonly class="form-control-plaintext" id="id" value="<%=index%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Nome:</label>
                    <div class="col-sm-10">
                        <input name="nome" type="text" readonly class="form-control-plaintext" id="name" value="<%=banda.getNome()%>">
                    </div>
                </div>
                <button type="submit" class="btn btn-danger" name="cancelar" value="Cancelar">Cancelar</button>
                <button type="submit" class="btn btn-primary" name="remove" value="Excluir"/>Excluir</button>
            </form>
        </div>
        <%} catch (Exception ex) {%>
        <h3>Erro ao processar o formulário</h3>
        <%}%>
    </body>
</html>