/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.onevision.rainhadasucata.produto;

import br.onevision.rainhadasucata.dao.DaoProduto;

/**
 *
 * @author everton
 */
public class TesteExcluir {
    public static void main(String[] args) {
        DaoProduto dao = new DaoProduto();
        
        int id = 1; // id para deleção
        dao.excluirProduto(id);
    }
}
