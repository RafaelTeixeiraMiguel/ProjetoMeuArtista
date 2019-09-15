<%-- 
    Document   : incluir
    Created on : 14/09/2019, 23:27:26
    Author     : AfonsoSantos
--%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Banda</title>
    </head>
    <body>
             <h1>WebBanda</h1>
        <h2>Incluir Banda</h2>
        <form>
            Nome: <br/>
            <input type="text" name="nome"/><br/>
            <input type="submit" name="cancelar" value="Cancelar"/><br/>
            <input type="submit" name="add" value="Incluir"/><br/>
            <%
                if(request.getParameter("cancelar") != null){
                    response.sendRedirect("index.jsp");
                }if (request.getParameter("add")!= null){
                    String nome = request.getParameter("nome");
                    String email = request.getParameter("email");
                    String fone = request.getParameter("fone");
                    Db.getBanda().add(new Banda(nome));
                    response.sendRedirect("index.jsp");
                }
            %>
        </form>
    </body>
</html>
