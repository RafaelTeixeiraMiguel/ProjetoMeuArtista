<%-- 
    Document   : excluirDisco
    Created on : 15/09/2019, 19:15:46
    Author     : marinacarregosalopes
--%>

<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        if(request.getParameter("cancelar")!= null){
        response.sendRedirect("discos.jsp");
        }if (request.getParameter("remove")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        Db.getDisco().remove(index);
        response.sendRedirect("discos.jsp");
        }
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exluir Disco</h1>
        <%try{%>
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Disco disco = Db.getDisco().get(index);%>
        <form>
            Indice:<br/>
            <%=index%><br/>
            <input type="hidden" name="index" value="<%=index%>"/>
            Nome<br/>
            <%=disco.getNome()%><br/>
            Autor<br/>
            <%=disco.getAutor()%><br/>
            Ano<br/>
            <%=disco.getAno()%><br/>
            <input type="submit" name="cancelar" value="Cancelar"/><br/>
            <input type="submit" name="remove" value="Exluir"/><br/> 
        </form>
        <%}catch(Exception ex){%>
        <h3>Erro ao processar o formulário</h3>
        <%}%>
    </body>
</html>
