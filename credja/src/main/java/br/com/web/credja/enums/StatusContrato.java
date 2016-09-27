package br.com.web.credja.enums;

public enum StatusContrato {

	PAGO(1, "Pago"), ANALISE(2, "Em analise"), CANCELADO(3, "Cancelado");

	Integer index;

	String descricao;

	StatusContrato(Integer index, String descricao) {
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
