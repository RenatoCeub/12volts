package br.net.dozevolts.entidade;

import java.io.Serializable;

public class Categoria implements Serializable{

	private static final long serialVersionUID = 7347296547645443753L;
	
	private Integer idCategoria;
	private String descricao;


	public Integer getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
