package br.com.reclamacaojspjava.bean;

public class Reclamacao {

	private int id;
	private String titulo;
	private String descricao;
	private int prioridade;
	private String sugestao_melhoria;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getPrioridade() {
		return prioridade;
	}
	public void setPrioridade(int prioridade) {
		this.prioridade = prioridade;
	}
	public String getSugestao_melhoria() {
		return sugestao_melhoria;
	}
	public void setSugestao_melhoria(String sugestao_melhoria) {
		this.sugestao_melhoria = sugestao_melhoria;
	}
	
	
}
