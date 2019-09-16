<%-- 
    Document   : lista-bandas
    Created on : 15/09/2019, 13:47:10
    Author     : AfonsoSantos
--%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu Artista</title>
    </head>
    <body>
         <h1>WebMeuArtista</h1>
        <h2>Indice</h2>
        <h3><a href="incluir.jsp">Incluir Banda</a></h3>
        <table border="1"> 
            <tr>
                <td>Indice</td>
                <td>Nome</td>
                <td>Comandos</td>
            </tr>
        <%for(Banda banda: Db.getBanda()){%>
        <tr>
            <td><%= Db.getBanda().indexOf(banda)%></td>
            <td><%= banda.getNome()%></td>
            
            <td>
                <a href="alterar.jsp?index=<%= Db.getBanda().indexOf(banda)%>">Alterar</a>
                <a href="excluir.jsp?index=<%= Db.getBanda().indexOf(banda)%>">Excluir</a>
                <a href="incluir.jsp?index=<%= Db.getBanda().indexOf(banda)%>">Incluir</a>
            </td>
        </tr>   
        <%}%>
        </table>

    </body>
</html>
