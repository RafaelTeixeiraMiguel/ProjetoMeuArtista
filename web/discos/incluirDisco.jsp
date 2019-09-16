<%-- 
    Document   : incluirDisco
    Created on : 15/09/2019, 19:17:24
    Author     : marinacarregosalopes
--%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <h2>Incluir Disco</h2>
            <form>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Nome</label>
                    <div class="col-sm-10">
                        <input name="nome" type="text" class="form-control" id="name"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Autor</label>
                    <div class="col-sm-10">
                        <select name="autor" class="custom-select" required>
                            <option selected value="-1">Selecione uma banda</option>
                            <%for (Banda banda : Db.getBanda()) {%>
                            <option value="<%=Db.getBanda().indexOf(banda)%>"><%=banda.getNome()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="ano" class="col-sm-1 col-form-label">Ano</label>
                    <div class="col-sm-10">
                        <input name="ano" type="numeric" class="form-control" id="ano"/>
                    </div>
                </div>
                <button type="submit" class="btn btn-danger" name="cancelar" value="Cancelar">Cancelar</button>
                <button type="submit" class="btn btn-primary" name="add" value="Incluir"/>Incluir</button>
                <%
                    if (request.getParameter("cancelar") != null) {
                        response.sendRedirect("lista-discos.jsp");
                    }
                    if (request.getParameter("add") != null) {
                        String nome = request.getParameter("nome");
                        int autor = Integer.parseInt(request.getParameter("autor").trim());
                        int ano = Integer.parseInt(request.getParameter("ano"));
                        Db.getDisco().add(new Disco(nome, autor, ano));
                        response.sendRedirect("lista-discos.jsp");
                    }
                %>
            </form>
    </body>
</html>
