package br.net.dozevolts.entidade;

public class Marca {

	private Integer id;
	private String nome;
	
	public Marca() {
	}
	
	public Marca(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}

}
