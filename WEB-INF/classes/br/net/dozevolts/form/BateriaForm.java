package br.net.dozevolts.form;

import org.apache.struts.action.ActionForm;

public class BateriaForm extends ActionForm {

	private static final long serialVersionUID = -768845575240404321L;
	
	private Integer marcaVeiculo;
	private Integer modeloVeiculo;
	private Integer anoVeiculo;
	
	private Integer comprimento;
	private Integer largura;
	private Integer altura;
	
	private Integer ah;
	private Integer cca;
	private Integer rc;
	
	private Integer peso;
	private Integer marcaBateria;
	private Integer garantia;
	
	private Integer valor;
	private Integer valorParcelado;
	
	private Integer ordenarPor = new Integer(0);
	private Boolean promocao = new Boolean(false);
	
	public Integer getComprimento() {
		return comprimento;
	}
	public void setComprimento(Integer comprimento) {
		this.comprimento = comprimento;
	}
	public Integer getLargura() {
		return largura;
	}
	public void setLargura(Integer largura) {
		this.largura = largura;
	}
	public Integer getAltura() {
		return altura;
	}
	public void setAltura(Integer altura) {
		this.altura = altura;
	}
	public Integer getAh() {
		return ah;
	}
	public void setAh(Integer ah) {
		this.ah = ah;
	}
	public Integer getCca() {
		return cca;
	}
	public void setCca(Integer cca) {
		this.cca = cca;
	}
	public Integer getRc() {
		return rc;
	}
	public void setRc(Integer rc) {
		this.rc = rc;
	}
	public Integer getPeso() {
		return peso;
	}
	public void setPeso(Integer peso) {
		this.peso = peso;
	}
	public Integer getMarcaVeiculo() {
		return marcaVeiculo;
	}
	public void setMarcaVeiculo(Integer marcaVeiculo) {
		this.marcaVeiculo = marcaVeiculo;
	}
	public Integer getModeloVeiculo() {
		return modeloVeiculo;
	}
	public void setModeloVeiculo(Integer modeloVeiculo) {
		this.modeloVeiculo = modeloVeiculo;
	}
	public Integer getAnoVeiculo() {
		return anoVeiculo;
	}
	public void setAnoVeiculo(Integer anoVeiculo) {
		this.anoVeiculo = anoVeiculo;
	}
	public Integer getOrdenarPor() {
		return ordenarPor;
	}
	public void setOrdenarPor(Integer ordenarPor) {
		this.ordenarPor = ordenarPor;
	}
	public Integer getMarcaBateria() {
		return marcaBateria;
	}
	public void setMarcaBateria(Integer marcaBateria) {
		this.marcaBateria = marcaBateria;
	}
	public Integer getGarantia() {
		return garantia;
	}
	public void setGarantia(Integer garantia) {
		this.garantia = garantia;
	}
	public Integer getValor() {
		return valor;
	}
	public void setValor(Integer valor) {
		this.valor = valor;
	}
	public Integer getValorParcelado() {
		return valorParcelado;
	}
	public void setValorParcelado(Integer valorParcelado) {
		this.valorParcelado = valorParcelado;
	}
	public Boolean getPromocao() {
		return promocao;
	}
	public void setPromocao(Boolean promocao) {
		this.promocao = promocao;
	}
	
	

}
