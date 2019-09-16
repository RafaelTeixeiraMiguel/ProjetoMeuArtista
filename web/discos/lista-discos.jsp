<%-- 
    Document   : disco
    Created on : 15/09/2019, 18:57:30
    Author     : marinacarregosalopes
--%>

<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discos</title>
    </head>
    <body>
        <h3>Discos</h3>
        <button onclick="location.href = 'incluirDisco.jsp'" type="button" class="btn btn-success">Adicionar Disco</button>
        <div class="container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Banda</th>
                        <th> Ano </th>
                        <th>Comandos</th>
                    </tr>
                </thead>
                <%for (Disco disco : Db.getDisco()) {%>
                <tbody>
                    <tr>
                        <td><%= Db.getDisco().indexOf(disco)%></td>
                        <td><%= disco.getNome()%></td>
                        <td><%= Db.getBanda().get(disco.getIdAutor()).getNome()%></td>
                        <td><%= disco.getAno()%></td>
                        <td>
                            <button onclick="location.href = 'alterarDisco.jsp?index=<%= Db.getDisco().indexOf(disco)%>'" type="button" class="btn btn-primary">Alterar</button>
                            <button onclick="location.href = 'excluirDisco.jsp?index=<%= Db.getDisco().indexOf(disco)%>'" type="button" class="btn btn-danger">Excluir</button>
                        </td>
                    </tr>   
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
