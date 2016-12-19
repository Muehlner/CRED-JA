package br.com.web.credja.dto;

import java.math.BigDecimal;
import java.util.Calendar;

import org.springframework.format.annotation.DateTimeFormat;

public class CoeficienteDTO {

	private BigDecimal valor;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Calendar data;

	private Integer idTabela;

	private Integer prazo;
	
	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public Integer getIdTabela() {
		return idTabela;
	}

	public void setIdTabela(Integer idTabela) {
		this.idTabela = idTabela;
	}

	public Integer getPrazo() {
		return prazo;
	}

	public void setPrazo(Integer prazo) {
		this.prazo = prazo;
	}
}
