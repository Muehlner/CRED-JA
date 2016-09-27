package br.com.web.credja.model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import br.com.web.credja.enums.StatusContrato;

@Entity
public class Contrato implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private BigDecimal valorRefinanciamento;

	private BigDecimal valorCompra;

	private BigDecimal custoPortabilidade;

	@ManyToOne
	@JoinColumn(name = "cliente_id")
	private Cliente cliente;

	@Enumerated(EnumType.STRING)
	private StatusContrato status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public BigDecimal getValorRefinanciamento() {
		return valorRefinanciamento;
	}

	public void setValorRefinanciamento(BigDecimal valorRefinanciamento) {
		this.valorRefinanciamento = valorRefinanciamento;
	}

	public BigDecimal getValorCompra() {
		return valorCompra;
	}

	public void setValorCompra(BigDecimal valorCompra) {
		this.valorCompra = valorCompra;
	}

	public BigDecimal getCustoPortabilidade() {
		return custoPortabilidade;
	}

	public void setCustoPortabilidade(BigDecimal custoPortabilidade) {
		this.custoPortabilidade = custoPortabilidade;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public StatusContrato getStatus() {
		return status;
	}

	public void setStatus(StatusContrato status) {
		this.status = status;
	}
}
