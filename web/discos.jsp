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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Discos</title>
    </head>
    <body>
        <h1>Discos</h1>
        <h3><a href="incluirDisco.jsp">Incluir Disco</a></h3>
        <table border="1"> 
            <tr>
                <td>ID</td>
                <td>Nome</td>
                <td>Banda</td>
                <td align="center" width="50"> Ano </td>
                <td align="center">Comandos</td>
            </tr>
        <%for(Disco disco: Db.getDisco()){%>
        <tr>
            <td><%= Db.getDisco().indexOf(disco)%></td>
            <td><%= disco.getNome()%></td>
            <td><%= disco.getAutor()%></td>
            <td align="center"><%= disco.getAno()%></td>
            
            <td>
                <a href="alterarDisco.jsp?index=<%= Db.getDisco().indexOf(disco)%>">Alterar</a>
                <a href="excluirDisco.jsp?index=<%= Db.getDisco().indexOf(disco)%>">Excluir</a>
            </td>
        </tr>   
        <%}%>
        </table>
    </body>
</html>
