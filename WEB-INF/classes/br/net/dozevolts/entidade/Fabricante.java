package br.net.dozevolts.entidade;

import java.io.Serializable;

public class Fabricante implements Serializable{

	private static final long serialVersionUID = -8475244458062842641L;
	
	private Integer id_fabricante;
	private String descricao;


	public Integer getId_fabricante() {
		return id_fabricante;
	}

	public void setId_fabricante(Integer id_fabricante) {
		this.id_fabricante = id_fabricante;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	

}
