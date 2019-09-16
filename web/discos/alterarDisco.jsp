<%-- 
    Document   : alterarDisco
    Created on : 15/09/2019, 19:17:03
    Author     : marinacarregosalopes
--%>

<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page import="br.com.fatecpg.meuartista.Disco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("cancelar") != null) {
        response.sendRedirect("lista-discos.jsp");
    }
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("nome");
        int autor = Integer.parseInt(request.getParameter("autor"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        Db.getDisco().set(index, new Disco(nome, autor, ano));
        response.sendRedirect("lista-discos.jsp");
    }
%>
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
            <h2>Alterar Disco</h2>
            <%try {%>
            <%int index = Integer.parseInt(request.getParameter("index"));%>
            <%Disco disco = Db.getDisco().get(index);%>
            <form>
                <div class="form-group row">
                    <label for="id" class="col-sm-1 col-form-label">Código:</label>
                    <div class="col-sm-10">
                        <input name="index" type="text" readonly class="form-control-plaintext" id="id" value="<%=index%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label">Nome:</label>
                    <div class="col-sm-10">
                        <input name="nome" type="text" class="form-control" id="name" value="<%=disco.getNome()%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="autor" class="col-sm-1 col-form-label">Autor:</label>
                    <div class="col-sm-10">
                        <select name="autor" class="custom-select">
                            <option value="<%=index%>" selected><%=Db.getBanda().get(disco.getIdAutor()).getNome()%></option>
                            <%for(Banda banda : Db.getBanda()){%>
                            <option value="<%=Db.getBanda().indexOf(banda)%>"><%=banda.getNome()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="ano" class="col-sm-1 col-form-label">Ano:</label>
                    <div class="col-sm-10">
                        <input name="ano" type="text" class="form-control" id="ano" value="<%=disco.getAno()%>">
                    </div>
                </div>
                <button type="submit" class="btn btn-danger" name="cancelar" value="Cancelar">Cancelar</button>
                <button type="submit" class="btn btn-primary" name="set" value="Alterar"/>Alterar</button>
            </form>
            <%} catch (Exception ex) {%>
            <h3>Erro ao processar o formulário</h3>
            <%}%>
        </div>
    </body>
</html>
