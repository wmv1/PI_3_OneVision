/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.onevision.rainhadasucata.conexao;

import br.onevision.rainhadasucata.dao.DBConnector;

/**
 *
 * @author everton
 */
public class TesteConexao {

    public static void main(String[] args) throws RuntimeException, Exception {
        DBConnector conexao = new DBConnector();

        conexao.getConexaoDB();
        System.out.println(conexao.statusConexao());

        
        
    }
}
