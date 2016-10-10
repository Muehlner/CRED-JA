package br.com.web.credja.enums;

import org.springframework.security.core.GrantedAuthority;

public enum Perfil implements GrantedAuthority {

	ROLE_ADMINISTRADOR(1, "Administrador"), ROLE_ATENDENTE(2, "Atendente");

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

	@Override
	public String getAuthority() {
		return descricao;
	}
}
