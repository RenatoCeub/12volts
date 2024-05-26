package br.net.dozevolts.form;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts.action.ActionForm;

import br.net.dozevolts.entidade.Categoria;

public class AdminForm extends ActionForm {

	private static final long serialVersionUID = -768845575240404321L;
	
	private Integer idCategoria;
	private String descricaoCategoria;
	private List<Categoria> listaCategorias = new ArrayList<Categoria>();


	public Integer getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getDescricaoCategoria() {
		return descricaoCategoria;
	}

	public void setDescricaoCategoria(String descricaoCategoria) {
		this.descricaoCategoria = descricaoCategoria;
	}

	public List<Categoria> getListaCategorias() {
		return listaCategorias;
	}

	public void setListaCategorias(List<Categoria> listaCategorias) {
		this.listaCategorias = listaCategorias;
	}
	
}
