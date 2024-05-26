package br.net.dozevolts.entidade;

import java.io.Serializable;

public class Produto implements Serializable{

	private static final long serialVersionUID = -8084133517630721434L;

	private Categoria categoria;
	private Fabricante fabricante;
	private String titulo1;
	private String titulo2;
	private String titulo3;
	private Integer idProduto;
	private String imagemPequena;
	private TipoProduto tipoProduto;
	
	
	public String getImagemPequena() {
		return imagemPequena;
	}

	public void setImagemPequena(String imagemPequena) {
		this.imagemPequena = imagemPequena;
	}

	public String getTitulo1() {
		return titulo1;
	}

	public void setTitulo1(String titulo1) {
		this.titulo1 = titulo1;
	}

	public String getTitulo2() {
		return titulo2;
	}

	public void setTitulo2(String titulo2) {
		this.titulo2 = titulo2;
	}

	public String getTitulo3() {
		return titulo3;
	}

	public void setTitulo3(String titulo3) {
		this.titulo3 = titulo3;
	}

	public Integer getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(Integer idProduto) {
		this.idProduto = idProduto;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public TipoProduto getTipoProduto() {
		return tipoProduto;
	}

	public void setTipoProduto(TipoProduto tipoProduto) {
		this.tipoProduto = tipoProduto;
	}

	public Fabricante getFabricante() {
		return fabricante;
	}

	public void setFabricante(Fabricante fabricante) {
		this.fabricante = fabricante;
	}

}
