<%-- 
    Document   : incluir
    Created on : 14/09/2019, 23:27:26
    Author     : AfonsoSantos
--%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Banda</title>
    </head>
    <body>

        <div class="container-fluid">
            <h2>Incluir Banda</h2>
            <form>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Nome</label>
                    <div class="col-sm-10">
                        <input name="nome" type="text" class="form-control" id="name"/>
                    </div>
                </div>
                <button type="submit" class="btn btn-danger" name="cancelar" value="Cancelar">Cancelar</button>
                <button type="submit" class="btn btn-primary" name="add" value="Incluir"/>Incluir</button>
                <%
                    if (request.getParameter("cancelar") != null) {
                        response.sendRedirect("lista-bandas.jsp");
                    }
                    if (request.getParameter("add") != null) {
                        String nome = request.getParameter("nome");
                        String email = request.getParameter("email");
                        String fone = request.getParameter("fone");
                        Db.getBanda().add(new Banda(nome));
                        response.sendRedirect("lista-bandas.jsp");
                    }
                %>
            </form>
        </div>
    </body>
</html>
