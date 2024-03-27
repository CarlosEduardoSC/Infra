<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Infra - Avalia��es </title>
    <link rel="icon" href="imagens/Logo/Logo 3 PNG.png">

    <!-- Refer�ncias CSS Bootstrap -->
    <link href="estilo.css/estilo.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>

<body>
<%@ page import="br.com.reclamacaojspjava.dao.*, br.com.reclamacaojspjava.bean.*, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%List<Reclamacao> list = ReclamacaoDao.getAllReclamacao(); request.setAttribute("list", list);
%>

    <!-- Refer�ncia JS Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>

    <!-- Header / Barra de Navega��o -->
    <div class="barra_navegacao">
        <nav class="container-xl navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="index.html" ;>
                <img class="logo" src="imagens/Logo/Logo 3 PNG.png" alt="" loading="lazy">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active texto_barra_navegacao" href="index.html"
                        style="padding: 20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Inicio
                        <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link texto_barra_navegacao" href="relate_aqui.jsp"
                        style="padding: 20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Relate Aqui
                    </a>
                    <a class="nav-item nav-link texto_barra_navegacao" href="avaliacoes.jsp"
                        style="padding:20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Avalia��es </a>
                    <a class="nav-item nav-link texto_barra_navegacao" href="conhecanos.html"
                        style="padding:20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Conhe�a-nos </a>

                    <a class="nav-item nav-link texto_barra_navegacao" href="contato.html"
                        style="padding:20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Contato e
                        Informa��es </a>
        </nav>
    </div>

    <nav aria-label="breadcrumb" class="barra_navegacao_secundaria">
        <ol class="breadcrumb container-xl barra_navegacao_secundaria">
            <li class="breadcrumb-item"><a href="index.html"> P�gina Inicial </a></li>
            <li class="breadcrumb-item active" aria-current="page"> Avalia��es </li>
        </ol>
    </nav>

    <!-- Avalia��es -->
    
    <div class="container-xl pag_inicial pag_contato">
        <h1 style="text-align: left;">Avalia��es </h1>
        <h5 style="text-align: left;"> Avalie aqui os problemas relatados</h5>

<c:forEach items="${list}" var="reclamacao">
        <form class="form_view_avaliacoes" action="deletarReclamacao.jsp" method="post">
        <input style="display:none;" name="id" class="form-control" id="id" type="text" aria-label="default input example" value="${reclamacao.getId()}">
            <fieldset disabled>
            <!-- Titulo da reclama��o -->
            <div class="mb-3">
            <h4> Reclama��o N�mero ${reclamacao.getId()}</h4>
            <label for="exampleFormControlTextarea1" class="form-label">Titulo da reclama��o</label>
            <input class="form-control" id="titulo_reclamacao" type="text" aria-label="default input example" value="${reclamacao.getTitulo()}">
            </div>

            <!-- Descri��o da reclama��o -->
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Descri��o da reclama��o</label>
                <textarea class="form-control" id="descricao_reclamacao" rows="3"> ${reclamacao.getDescricao()} </textarea>
            </div>

            <!-- Prioridade da reclama��o -->
            <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Prioridade da reclama��o</label>
            <input class="form-control" id="titulo_reclamacao" type="text" aria-label="default input example" value="${reclamacao.getPrioridade()}">
            </div>

            <!-- Sugest�o de Melhoria para a reclama��o -->
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Sugest�o de melhoria para a reclama��o</label>
                <textarea class="form-control" id="sugestao_melhoria_reclamacao" rows="3"> ${reclamacao.getSugestao_melhoria()} </textarea>
            </div>
        </fieldset>
            <div style="text-align:center;">
                <button id="button" type="submit"> Excluir Reclama��o </button>
            </div>
        </form>
</c:forEach> 


    </div>

    <!-- Rodap� -->
    <div class="rodape">
        <footer class="container-lg">
            <!-- Texto 1 Rodap� -->
            <div class="texto_rodape">
                <div>
                    <p> <span> Endere�o </span> <br> Av. Vida Nova, 166 - Jardim Maria Rosa,
                        <br>
                        Tabo�o da
                        Serra - SP, 06764-045</p>
                </div>
                <!-- Texto 2 Rodap� -->
                <div>
                    <p id="texto_rodape_direitos"> <span>Infra </span>- Todos os Direitos Reservados &copy 2022
                    </p>
                </div>
            </div>
            <!-- Links Rodap� -->
            <div class="links_rodape">
                <ul type="none">
                    <h1><span> Infra </span></h1>
                    <li><a href="relate_aqui.jsp"> Relate Aqui </a></li>
                    <li><a href="avaliacoes.jsp"> Avalia��es </a></li>
                    <li><a href="./conhecanos.html"> Conhe�anos </a></li>
                    <li><a href="./contato.html"> Contato e Informa��es </a></li>
                </ul>
            </div>
            <!-- Redes Sociais Rodap� -->
            <div class="redes_sociais_rodape">
                <ul type="none">
                    <h2><span> Redes Sociais </span></h2>
                    <li>
                        <a href="https://pt-br.facebook.com/"><img src="imagens/Icones/Facebook.png"></a>
                        <a href="https://www.instagram.com/"><img src="imagens/Icones/Instagram.png"></a>
                        <a href="https://twitter.com/"><img src="imagens/Icones/Twitter.png"></a>
                    </li>
                    <li> &nbsp </li>
                    <li> &nbsp </li>
                </ul>
            </div>
        </footer>
    </div>
</body>

</html>