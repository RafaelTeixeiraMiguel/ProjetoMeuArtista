<%-- 
    Document   : alterarDisco
    Created on : 15/09/2019, 19:17:03
    Author     : marinacarregosalopes
--%>

<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        if(request.getParameter("cancelar")!= null){
        response.sendRedirect("discos.jsp");
        }if (request.getParameter("set")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("nome");
        String autor = request.getParameter("autor");
        int ano = Integer.parseInt(request.getParameter("ano"));
        Db.getDisco().set(index, new Disco(nome,autor, ano));
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
        <h1>Web Contatos</h1>
        <h2>Alterar Contatos</h2>
        <%try{%>
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Disco disco = Db.getDisco().get(index);%>
        <form>
            ID:<br/>
            <%=index%><br/>
            <input type="hidden" name="index" value="<%=index%>"/><br/>
            Nome<br/>
            <input type="text" name="nome" value="<%=disco.getNome()%>"/><br/>
            Autor<br/>
            <input type="text" name="autor" value="<%=disco.getAutor()%>"/><br/>
            Ano<br/>
            <input type="number" name="ano" value="<%=disco.getAno()%>"/><br/>
            <input type="submit" name="cancelar" value="Cancelar"/><br/>
            <input type="submit" name="set" value="Alterar"/><br/> 
        </form>
        <%}catch(Exception ex){%>
        <h3>Erro ao processar o formulário</h3>
        <%}%>
    </body>
</html>
