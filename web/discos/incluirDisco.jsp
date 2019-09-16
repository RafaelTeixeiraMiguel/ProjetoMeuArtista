<%-- 
    Document   : incluirDisco
    Created on : 15/09/2019, 19:17:24
    Author     : marinacarregosalopes
--%>
<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <body>
             <h1>WebDisco</h1>
        <h2>Incluir Disco</h2>
        <form>
            Nome: <br/>
            <input type="text" name="nome"/><br/>
            Autor: <br/>
            <input type="text" name="autor"/><br/>
            Ano <br/>
            <input type="number" name="ano"/><br/>
            <input type="submit" name="cancelar" value="Cancelar"/><br/>
            <input type="submit" name="add" value="Incluir"/><br/>
            <%
                if (request.getParameter("cancelar") != null){
                    response.sendRedirect("discos.jsp");
                }if (request.getParameter("add")!= null){
                    String nome = request.getParameter("nome");
                    String autor = request.getParameter("autor");
                    int ano = Integer.parseInt(request.getParameter("ano"));
                    Db.getDisco().add(new Disco(nome, autor, ano));
                    response.sendRedirect("discos.jsp");
                }
            %>
        </form>
    </body>
</html>
