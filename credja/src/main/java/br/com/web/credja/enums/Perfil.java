package br.com.web.credja.enums;

public enum Perfil {

	ADMINISTRADOR(1, "Administrador"), ATENDENTE(2, "Atendente");

	Integer index;

	String descricao;

	Perfil() {

	}
	
	Perfil(Integer index, String descricao) {
		this.index = index;
		this.descricao = descricao;
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
