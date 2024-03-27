<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Infra - Relate Aqui </title>
    <link rel="icon" href="imagens/Logo/Logo 3 PNG.png">

    <!-- Referências CSS Bootstrap -->
    <link href="estilo.css/estilo.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>
<%@ page import="br.com.reclamacaojspjava.dao.ReclamacaoDao, br.com.reclamacaojspjava.bean.Reclamacao"%>


    <!-- Referência JS Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
        <script src="javascript.js/javascript.js" defer></script>

    <!-- Header / Barra de Navegação -->
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
                        style="padding:20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Avaliações </a>
                    <a class="nav-item nav-link texto_barra_navegacao" href="conhecanos.html"
                        style="padding:20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Conheça-nos </a>

                    <a class="nav-item nav-link texto_barra_navegacao" href="contato.html"
                        style="padding:20px; padding-inline-start:30px; padding-inline-end: 30px;" ;> Contato e
                        Informações </a>
        </nav>
    </div>

    <nav aria-label="breadcrumb" class="barra_navegacao_secundaria">
        <ol class="breadcrumb container-xl barra_navegacao_secundaria">
            <li class="breadcrumb-item"><a href="index.html"> Página Inicial </a></li>
            <li class="breadcrumb-item active" aria-current="page"> Relate Aqui </li>
        </ol>
    </nav>

    <!-- Relate Aqui -->

    <div class="container-xl pag_inicial pag_contato">
        <h1 style="text-align: left;">Relate Aqui </h1>
        <h5 style="text-align: left;"> Preencha os campos a seguir com seu relato </h5>

        <form action="addReclamacao.jsp" method="post">
            <!-- Titulo da Reclamação -->
            <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Titulo da reclamação</label>
            <input name="titulo" class="form-control" id="titulo" type="text" aria-label="default input example">
            </div>

            <!-- Descrição da Reclamação -->
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Descrição da reclamação</label>
                <textarea name="descricao" class="form-control" id="descricao" rows="3"></textarea>
            </div>

            <!-- Prioridade da Reclamação -->
            <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Prioridade da reclamação</label>
            <select name="prioridade" id="prioridade" class="form-select form-select-sm" aria-label=".form-select-sm example">
                <option selected></option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
            </select>
            </div>

            <!-- Sugestão de Melhoria para a Reclamação -->
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Sugestão de melhoria para a reclamação</label>
                <textarea name="sugestao_melhoria" class="form-control" id="sugestao_melhoria" rows="3"></textarea>
            </div>

            <div class="mb-3 pag_inicial">
                <button id="button" type="submit">Enviar</button>
            </div>
        </form>
        
        <b> FALHA AO CADASTRAR RECLAMAÇÃO <br><br> PREENCHA TODOS OS CAMPOS CORRETAMENTE! </b>

    </div>

    <!-- Rodapé -->
    <div class="rodape">
        <footer class="container-lg">
            <!-- Texto 1 Rodapé -->
            <div class="texto_rodape">
                <div>
                    <p> <span> Endereço: </span> <br> Av. Vida Nova, 166 - Jardim Maria Rosa,
                        <br>
                        Taboão da
                        Serra - SP, 06764-045</p>
                </div>
                <!-- Texto 2 Rodapé -->
                <div>
                    <p id="texto_rodape_direitos"> <span>Infra </span>- Todos os Direitos Reservados &copy 2022
                    </p>
                </div>
            </div>
            <!-- Links Rodapé -->
            <div class="links_rodape">
                <ul type="none">
                    <h1><span> Infra </span></h1>
                    <li><a href="relate_aqui.jsp"> Relate Aqui </a></li>
                    <li><a href="avaliacoes.jsp"> Avaliações </a></li>
                    <li><a href="./conhecanos.html"> Conheça-nos </a></li>
                    <li><a href="./contato.html"> Contato e Informações </a></li>
                </ul>
            </div>
            <!-- Redes Sociais Rodapé -->
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