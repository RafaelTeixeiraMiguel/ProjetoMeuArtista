<%-- 
    Document   : index
    Created on : 09/09/2019, 22:53:53
    Author     : Rafael Teixeira Miguel
--%>
<%@page import="br.com.fatecpg.meuartista.Banda"%>
<%@page import="br.com.fatecpg.meuartista.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/base.css">
        <title>Home</title>
    </head>
    <body>
        <div class="container1">
            <div>
                <h3 class="p1">Projeto Meu Artista</h2>
                    <p>Atividade III - POO<br/>
                        CRUD simples para cadastro de Bandas, discos e músicas.<p>
                        </div><br/> 
                    <div>
                        <h4>Listas</h3><br/>
                            <div class="row">
                                <div class="col">
                                    <p>Total de bandas: <%=Db.getBanda().size()%></p>
                                    <button <button onclick="location.href='bandas/lista-bandas.jsp'" type="button" class="btn btn-dark">Bandas</button>
                                </div>
                                <div class="col">
                                    <p>Total de discos: <%=Db.getDisco().size()%></p>  
                                    <button <button onclick="location.href='discos/lista-discos.jsp'" type="button" class="btn btn-dark">Discos</button>
                                </div>
                                <div class="col">
                                    <p>Total de músicas <%=Db.getMusica().size()%></p>
                                    <button <button onclick="location.href='musicas/lista-musicas.jsp'" type="button" class="btn btn-dark">Musicas</button>
                                </div>
                            </div>      
                    </div>
                    <div>
                        <h4>Integrantes</h3><br/>
                            <div class="row">
                                <div class="col">
                                    <img src="img/afonso.jpg" class="foto"/><br/>
                                    <p class="a">Afonso Bento</p><br/>
                                    <ul>
                                        <li>CRUD Bandas</li>
                                    </ul>
                                </div>
                                <div class="col">
                                    <img src="img/marina.jpg" class="foto"/><br/>
                                    <p class="a">Marina Lopes</p><br/>   
                                    <ul>
                                        <li>CRUD Discos</li>
                                    </ul>
                                </div>
                                <div class="col">
                                    <img src="img/matusalem.jpg" class="foto"/><br/>
                                    <p class="a">Matusalem Andrade</p><br/>
                                    <ul>
                                        <li>CRUD Musicas</li>
                                    </ul>
                                </div>
                                <div class="col">
                                    <img src="img/rafael.jpg" class="foto"/><br/>
                                    <p class="a">Rafael Teixeira</p><br/>
                                    <ul>
                                        <li>Home</li>
                                        <li>Front-end</li>
                                    </ul>
                                </div> 
                            </div>      
                    </div>     
            </div>
    </body>
</html>
