<%-- 
    Document   : incluirDisco
    Created on : 15/09/2019, 19:17:24
    Author     : marinacarregosalopes
--%>
<%@page import="br.com.fatecpg.meuartista.Musica"%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Musica</title>
    </head>
    <body>
        <div class="container-fluid">
            <h2>Incluir Musica</h2>
            <form>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Nome</label>
                    <div class="col-sm-10">
                        <input name="nome" type="text" class="form-control" id="name"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="disco" class="col-sm-1 col-form-label">Disco</label>
                    <div class="col-sm-10">
                        <select name="disco" class="custom-select">
                            <option selected value="-1">Selecione uma banda</option>
                            <%for (Disco disco : Db.getDisco()) {%>
                            <option value="<%=Db.getDisco().indexOf(disco)%>"><%=disco.getNome()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-danger" name="cancelar" value="Cancelar">Cancelar</button>
                <button type="submit" class="btn btn-primary" name="add" value="Incluir"/>Incluir</button>
                <%
                    if (request.getParameter("cancelar") != null) {
                        response.sendRedirect("lista-musicas.jsp");
                    }
                    if (request.getParameter("add") != null) {
                        String nome = request.getParameter("nome");
                        int disco = Integer.parseInt(request.getParameter("disco").trim());
                        Db.getMusica().add(new Musica(nome, disco));
                        response.sendRedirect("lista-musicas.jsp");
                    }
                %>
            </form>
        </div>
    </body>
</html>
