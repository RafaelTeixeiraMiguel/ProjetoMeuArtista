<%-- 
    Document   : index
    Created on : 09/09/2019, 22:53:53
    Author     : Rafael Teixeira Miguel
--%>
<%@page import="br.com.fatecpg.meuartista.Musica"%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musicas</title>
    </head>
    <body>
        <h3>Listagem de Musicas</h3>
        <button onclick="location.href = 'incluir.jsp'" type="button" class="btn btn-success">Adicionar Musica</button>
        <div class="container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Disco/Banda</th>
                        <th scope="col">Comandos</th>
                    </tr>
                </thead>
                <%for (Musica musica : Db.getMusica()) {%>
                <tbody>
                    <tr>
                        <th scope="col"><%= Db.getMusica().indexOf(musica)%></th>
                        <td><%= musica.getNome()%></td>
                        <td><%= Db.getDisco().get(musica.getIdDisco()).getNome()+"/"+Db.getBanda().get(Db.getDisco().get(musica.getIdDisco()).getIdAutor()).getNome()%></td>
                        <td>
                            <button onclick="location.href = 'alterar.jsp?index=<%= Db.getMusica().indexOf(musica)%>'" type="button" class="btn btn-primary">Alterar</button>
                            <button onclick="location.href = 'excluir.jsp?index=<%= Db.getMusica().indexOf(musica)%>'" type="button" class="btn btn-danger">Excluir</button>
                        </td>
                    </tr>  
                </tbody>
                <%}%>
            </table>
        </div>
    </body>
</html>
