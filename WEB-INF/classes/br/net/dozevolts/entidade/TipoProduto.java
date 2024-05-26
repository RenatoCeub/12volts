package br.net.dozevolts.entidade;

import java.io.Serializable;

public class TipoProduto implements Serializable{

	private static final long serialVersionUID = 1394064454159507654L;
	
	private Categoria categoria;
	private Integer idTipoProduto;
	private String descricao;


	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public Integer getIdTipoProduto() {
		return idTipoProduto;
	}

	public void setIdTipoProduto(Integer idTipoProduto) {
		this.idTipoProduto = idTipoProduto;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	

}
