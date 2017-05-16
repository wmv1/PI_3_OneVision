<%-- 
    Document   : cliente-cadastro
    Created on : 21/04/2017, 23:48:43
    Author     : augusto.palencar1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Cliente</title>

        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- CSS Materialize e Font-Awersome -->
        <link href="dist/css/plugins.css" rel="stylesheet" type="text/css"/>

        <!-- CSS da pagina -->
        <link href="dist/css/tela-cadastro.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <%@include file="comum.jsp" %>
        <div class="row">
            <div  class="col s10 offset-s2">
                <div id="container-main">

                    <!-- Programar aqui!! -->

                    <div class="main">
                        <div class="row">
                            <div class="card">
                                <div class="cabecalho cabecalho-informacoes">
                                    <i class="fa fa-user-o left" aria-hidden="true"></i>
                                    <header>Cadastro de cliente</header>
                                </div>

                                <div class="corpo-card">
                                    <form method="post" action="cliente-cadastrar">
                                        <!-- dados pessoais -->
                                        <div class="row bloco-dados">
                                            <div class="row">
                                                <div class="topo-descricao left">
                                                    <i class="fa fa-user-circle fa-2x left" aria-hidden="true"></i>
                                                    <label>Dados Pessoais</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s9 offset-s1">
                                                    <input id="nome" type="text" class="validate" name="nome">
                                                    <label for="nome">Nome</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s9 offset-s1">
                                                    <input id="sobrenome" type="text" class="validate" name="sobrenome">
                                                    <label for="sobrenome">Sobrenome</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="cpf-cnpj" type="text" class="validate" name="cpf-cnpj">
                                                    <label for="cpf-cnpj">CPF/CNPJ</label>
                                                </div>
                                                <div class="box-data col s4 offset-s1">
                                                    <label for="data-nascimento" class="active">Data de Nascimento</label>
                                                    <input type="date" class="datepicker data-nascimento" name="data-nascimento">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col offset-s1">
                                                    <input class="with-gap" name="sexo" type="radio" id="masculino" value="M"/>
                                                    <label for="masculino">Masculino</label>

                                                    <input class="with-gap" name="sexo" type="radio" id="feminino" value="F"/>
                                                    <label for="feminino">Feminino</label>
                                                </div>
                                            </div>
                                        </div>


                                        <!-- contato -->
                                        <div class="row bloco-dados">
                                            <div class="row">
                                                <div class="topo-descricao left">
                                                    <i class="fa fa-phone-square fa-2x left" aria-hidden="true"></i>
                                                    <label>Contato</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="telefone" type="text" class="validate" name="telefone">
                                                    <label for="telefone">Telefone</label>
                                                </div>
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="celular" type="text" class="validate" name="celular">
                                                    <label for="celular">Celular</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s9 offset-s1">
                                                    <input id="email" type="email" class="validate" name="email">
                                                    <label for="email">E-mail</label>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- dados de endereço -->
                                        <div class="row bloco-dados">
                                            <div class="row">
                                                <div class="topo-descricao left">
                                                    <i class="fa fa-map-marker fa-2x left" aria-hidden="true"></i>
                                                    <label>Endereço</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="cep" type="text" class="validate" name="cep">
                                                    <label for="cep">CEP</label>
                                                </div>                          
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s9 offset-s1">
                                                    <input id="logradouro" type="text" class="validate" name="logradouro">
                                                    <label for="logradouro">Logradouro</label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="numero" type="text" class="validate" name="numero">
                                                    <label for="numero">Número</label>
                                                </div>
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="bairro" type="text" class="validate" name="bairro">
                                                    <label for="bairro">Bairro</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s4 offset-s1">
                                                    <input id="cidade" type="text" class="validate" name="cidade">
                                                    <label for="cidade">Cidade</label>
                                                </div>
                                                <div class="input-field col s4 offset-s1">
                                                    <select name="estado">
                                                        <option value="" disabled selected> </option>
                                                        <option value="">São Paulo</option>
                                                        <option value="">Rio de Janeiro</option>
                                                        <option value="">Salvador</option>
                                                    </select>
                                                    <label>Estado</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="input-field col s9 offset-s1">
                                                    <input id="complemento" type="text" class="validate" name="complemento">
                                                    <label for="complemento">Complemento</label>
                                                </div>
                                            </div>                                           
                                        </div>
                                        <!-- botoes -->
                                        <div class="row">
                                            <div class="btn-finalizar-cadastro right">
                                                <a href="clientes.jsp">
                                                    <button class="btn btn-cancelar waves-effect waves-light" type="button" name="action">
                                                        Cancelar
                                                        <i class="fa fa-ban" aria-hidden="true"></i>
                                                    </button>
                                                </a>

                                                <button class="btn btn-adicionar waves-effect waves-light" type="submit" name="action">Salvar
                                                    <i class="fa fa-floppy-o" aria-hidden="true"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div> 
            </div>
        </div>

        <!-- Javascript da lib -->
        <script src="dist/js/lib.min.js" type="text/javascript"></script>

        <!-- Javascript da página -->
        <script src="dist/js/usuario.js" type="text/javascript"></script>
    </body>
</html>
