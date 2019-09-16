<%-- 
    Document   : alterar
    Created on : 15/09/2019, 00:13:39
    Author     : AfonsoSantos
--%>


<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("cancelar") != null) {
        response.sendRedirect("lista-bandas.jsp");
    }
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("nome");
        Db.getBanda().set(index, new Banda(nome));
        response.sendRedirect("lista-bandas.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar banda</title>
    </head>
    <body>
        <div class="container-fluid">
            <h2>Alterar Banda</h2>
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
                <input type="hidden" name="index" value="<%=index%>"/>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Nome:</label>
                    <div class="col-sm-10">
                        <input name="nome" type="text" class="form-control" id="name" value="<%=banda.getNome()%>">
                    </div>
                </div>
                <button type="submit" class="btn btn-danger" name="cancelar" value="Cancelar">Cancelar</button>
                <button type="submit" class="btn btn-primary" name="set" value="Alterar"/>Alterar</button>
            </form>
        </div>
        <%} catch (Exception ex) {%>
        <h3>Erro ao processar o formulário</h3>
        <%}%>
    </body>
</html>
