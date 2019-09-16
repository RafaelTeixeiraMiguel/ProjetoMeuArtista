<%-- 
    Document   : index
    Created on : 09/09/2019, 22:53:53
    Author     : Rafael Teixeira Miguel
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
        <title>Bandas</title>
    </head>
    <body>
        <h3>Listagem de Bandas</h3>
        <button onclick="location.href = 'incluir.jsp'" type="button" class="btn btn-success">Adicionar Banda</button>
            <div class="container">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Comandos</th>
                        </tr>
                    </thead>
                    <%for (Banda banda : Db.getBanda()) {%>
                    <tbody>
                        <tr>
                            <th scope="col"><%= Db.getBanda().indexOf(banda)%></th>
                            <td><%= banda.getNome()%></td>
                            <td>
                                <button onclick="location.href = 'alterar.jsp?index=<%= Db.getBanda().indexOf(banda)%>'" type="button" class="btn btn-primary">Alterar</button>
                                <button onclick="location.href = 'excluir.jsp?index=<%= Db.getBanda().indexOf(banda)%>'" type="button" class="btn btn-danger">Excluir</button>
                                <!--<button onclick="location.href = 'alterar.jsp?index=<%= Db.getBanda().indexOf(banda)%>'" type="button" class="btn btn-success">Adicionar disco</button>-->
                            </td>
                        </tr>  
                    </tbody>
                    <%}%>
                </table>
            </div>
    </body>
</html>
