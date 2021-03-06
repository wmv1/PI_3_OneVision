<%-- 
    Document   : permissao
    Created on : 25/04/2017, 00:26:07
    Author     : everton
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Permissões</title>

        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- CSS Materialize e Font-Awersome -->
        <link href="dist/css/plugins.css" rel="stylesheet" type="text/css"/>

        <!-- CSS da pagina -->
        <link href="dist/css/tela-chamada.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <%@include file="comum.jsp" %>
        <div class="row">
            <div  class="col s10 offset-s2">
                <div id="container-main">

                    <!-- btn e txt -->
                    <!-- inicio da linha -->
                    <div class="row box-topo-tela-chamada">
                        <div class="col s12">
                            <div class="col s5 box-btn-adicionar">
                                <a href="permissao-cadastro.jsp">
                                    <button class="btn btn-adicionar-cliente waves-effect waves-light" type="button" name="btn-adicionar">
                                        Adicionar
                                        <i class="fa fa-plus" aria-hidden="true"></i> 
                                    </button>
                                </a>
                            </div>
                            <div class="col s6">
                                <form>
                                    <div class="input-field">
                                        <input id="txt-cliente-procurar" type="text" class="validate">
                                        <label for="txt-cliente-procurar">Permissão...</label>
                                        <button class="btn-procurar waves-effect waves-light right" type="button" name="btn-procurar-cliente">
                                            <i class="fa fa-search fa-2x" aria-hidden="true"></i> 
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="row"><!-- inicio da linha -->
                        <div class="card">
                            <div class="cabecalho cabecalho-informacoes">
                                <i class="fa fa-unlock-alt left" aria-hidden="true"></i>
                                <header> Permissão</header>

                            </div>

                            <div class="corpo-card">
                                <table class="tabela-produtos horizontal striped">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nome</th>
                                            <th>Data Criação</th>
                                            <th>Status</th>
                                            <th>Ação</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>1</td>  
                                            <td>Administrador</td>
                                            <td>15/07/2016</td>
                                            <td>
                                                <div class="switch">
                                                    <label>
                                                        <input type="checkbox">
                                                        <span class="lever"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <button class="waves-effect waves-light btn-editar tooltipped" data-position="bottom" data-delay="50" data-tooltip="editar permissão" type="submit" name="btn-editar">
                                                    <i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
                                                </button>
                                                <button class="waves-effect waves-light btn-deletar tooltipped" data-position="top" data-delay="50" data-tooltip="deletar permissão" type="submit" name="btn-deletar">
                                                    <i class="fa fa-trash-o fa-2x" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Produtos</td>
                                            <td>10/05/2016</td>
                                            <td>
                                                <div class="switch">
                                                    <label>
                                                        
                                                        <input type="checkbox" checked>
                                                        <span class="lever"></span>
                                                        
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <button class="waves-effect waves-light btn-editar tooltipped" data-position="bottom" data-delay="50" data-tooltip="editar permissão" type="submit" name="btn-editar">
                                                    <i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
                                                </button>
                                                <button class="waves-effect waves-light btn-deletar tooltipped" data-position="top" data-delay="50" data-tooltip="deletar permissão" type="submit" name="btn-deletar">
                                                    <i class="fa fa-trash-o fa-2x" aria-hidden="true"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div><!--Fim .card -->
                    </div><!-- fim da linha -->
                </div><!-- fim do main-->
            </div>
        </div>

        <!-- javascript das libs -->
        <script src="dist/js/lib.min.js" type="text/javascript"></script>
    </body>
</html>

