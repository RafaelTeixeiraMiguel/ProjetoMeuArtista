<%-- 
    Document   : alterar
    Created on : 15/09/2019, 00:13:39
    Author     : AfonsoSantos
--%>


<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        if(request.getParameter("cancelar")!= null){
        response.sendRedirect("index.jsp");
        }if (request.getParameter("set")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("nome");
        String autor = request.getParameter("autor");
        int ano = Integer.parseInt(request.getParameter("ano"));
        Db.getBanda().set(index, new Banda(nome));
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
        <h1>Web Bandas</h1>
        <h2>Alterar Bandas</h2>
        <%try{%>
        <%int index = Integer.parseInt(request.getParameter("index"));%>
        <%Banda banda = Db.getBanda().get(index);%>
        <form>
            ID:<br/>
            <%=index%><br/>
            <input type="hidden" name="index" value="<%=index%>"/><br/>
            Nome<br/>
            <input type="text" name="nome" value="<%=banda.getNome()%>"/><br/>
            <input type="submit" name="cancelar" value="Cancelar"/><br/>
            <input type="submit" name="set" value="Alterar"/><br/> 
        </form>
        <%}catch(Exception ex){%>
        <h3>Erro ao processar o formulário</h3>
        <%}%>
    </body>
</html>
