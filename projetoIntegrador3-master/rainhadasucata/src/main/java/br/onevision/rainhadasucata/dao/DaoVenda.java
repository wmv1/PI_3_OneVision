/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.onevision.rainhadasucata.dao;

import static br.onevision.rainhadasucata.dao.DBConnector.FecharConexao;
import br.onevision.rainhadasucata.model.DataEHora;
import br.onevision.rainhadasucata.model.Venda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author everton
 */
public class DaoVenda {

    private final Connection connection;

    public DaoVenda() {

        this.connection = DBConnector.getConexaoDB();
    }

    // INSERIR VENDA
    public void inserir(Venda venda) throws RuntimeException {

        String sql = "INSERT INTO vendas ("
                + "data_hora_vendas, "
                + "metodo_pagamento, "
                + "desconto_vendas, "
                + "fk_id_cliente, "
                + "fk_id_usuario, "
                + "valor_total )"
                + " VALUES (?, ?, ?, ?, ?, ?);";

        try ( // prepared statement para inserção
                PreparedStatement stmt = connection.prepareStatement(sql)) {


            // criei uma classe que trabalha com data e hora
            DataEHora dataEHora = new DataEHora();

            //Seta valores para inserção
            stmt.setString(1, dataEHora.getDataEHoraAtual());
            stmt.setString(2, venda.getMetodoPagamento());
            stmt.setDouble(3, venda.getDesconto());
            stmt.setInt(4, venda.getCliente().getId());
            stmt.setInt(5, venda.getUsuario().getId());
            stmt.setDouble(6, venda.calculaTotal());

            //Executa SQL Statement
            stmt.execute();
            //Fecha stmt
            stmt.close();


        } catch (SQLException e) {
            System.out.println(e);

        } finally {
            FecharConexao();
        }
        //Fecha conexão
        FecharConexao();
    }

    //OBTEM O ID DA ULTIMA VENDA
    public Integer obterUltimoIdDeVenda()
            throws SQLException, Exception {

        String sql = "SELECT MAX(id_vendas) AS max_venda_id FROM vendas";

        try (
                //Cria um statement para executar as instruções SQL
                PreparedStatement stmt = connection.prepareStatement(sql)) {

            //Cria o objeto que recebe o resultado da  query executada
            ResultSet result = stmt.executeQuery();

            //Percorre o resultado da query e traz o resultado
            //e retorna o resultado
            while (result.next()) {

                return result.getInt("max_venda_id");
            }

            result.close();

        } catch (Exception e) {
            throw new SQLException(e);
        } finally {
            FecharConexao();
        }
        FecharConexao();

        return null;
    }
}
