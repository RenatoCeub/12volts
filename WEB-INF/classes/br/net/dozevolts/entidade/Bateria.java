package br.net.dozevolts.entidade;

import java.math.BigDecimal;

public class Bateria {

	private Integer id;
	private String codigo;

	private Marca marca;

	private Integer comprimento;
	private Integer largura;
	private Integer altura;
	private Integer peso;

	private Integer ah;
	private Integer cca;
	private Integer rc;

	private Integer valor;
	private Integer valorParcelado;
	private Integer garantia;
	private String poloPositivo;
	private Integer ordenarPor;
	private String nomeImagem;
	private Boolean imagemDisponivel;
	private Boolean bateriaDisponivel;
	private Boolean promocao;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public Marca getMarca() {
		return marca;
	}
	public void setMarca(Marca marca) {
		this.marca = marca;
	}
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
	public Integer getGarantia() {
		return garantia;
	}
	public void setGarantia(Integer garantia) {
		this.garantia = garantia;
	}
	public String getPoloPositivo() {
		return poloPositivo;
	}
	public void setPoloPositivo(String poloPositivo) {
		this.poloPositivo = poloPositivo;
	}
	public Integer getPeso() {
		return peso;
	}
	public void setPeso(Integer peso) {
		this.peso = peso;
	}
	public Integer getOrdenarPor() {
		return ordenarPor;
	}
	public void setOrdenarPor(Integer ordenarPor) {
		this.ordenarPor = ordenarPor;
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
	public String getNomeImagem() {
		return nomeImagem;
	}
	public void setNomeImagem(String nomeImagem) {
		this.nomeImagem = nomeImagem;
	}
	public Boolean getImagemDisponivel() {
		return imagemDisponivel;
	}
	public void setImagemDisponivel(Boolean imagemDisponivel) {
		this.imagemDisponivel = imagemDisponivel;
	}
	public Boolean getBateriaDisponivel() {
		return bateriaDisponivel;
	}
	public void setBateriaDisponivel(Boolean bateriaDisponivel) {
		this.bateriaDisponivel = bateriaDisponivel;
	}
	public Boolean getPromocao() {
		return promocao;
	}
	public void setPromocao(Boolean promocao) {
		this.promocao = promocao;
	}


}
