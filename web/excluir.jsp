<%-- 
    Document   : excluir
    Created on : 14/09/2019, 23:27:37
    Author     : AfonsoSantos
--%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        if(request.getParameter("cancelar")!= null){
        response.sendRedirect("index.jsp");
        }if (request.getParameter("remove")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        Db.getDisco().remove(index);
        response.sendRedirect("lista-bandas.jsp");
        }
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPPage</title>
    </head>
    <body>
        <h1>Exluir Banda</h1>
        <%try{%>
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Banda banda = Db.getBanda().get(index);%>
        <form>
            Indice:<br/>
            <%=index%><br/>
            <input type="hidden" name="index" value="<%=index%>"/>
            Nome<br/>
            <%=banda.getNome()%><br/>
            <input type="submit" name="cancelar" value="Cancelar"/><br/>
            <input type="submit" name="remove" value="Exluir"/><br/> 
        </form>
        <%}catch(Exception ex){%>
        <h3>Erro ao processar o formulário</h3>
        <%}%>
    </body>
</html>