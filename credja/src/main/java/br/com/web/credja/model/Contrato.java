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

import br.com.web.credja.enums.StatusContrato;

@Entity
public class Contrato implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private Integer numero;

	private Integer dataCadastro;

	private Integer parcelasPagas;

	private Integer parcelasTotais;

	private BigDecimal valorParcela;

	private BigDecimal saldoDevedor;

	@ManyToOne
	@JoinColumn(name = "banco_id")
	private Banco banco;

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

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public Integer getDataCadastro() {
		return dataCadastro;
	}

	public void setDataCadastro(Integer dataCadastro) {
		this.dataCadastro = dataCadastro;
	}

	public Integer getParcelasPagas() {
		return parcelasPagas;
	}

	public void setParcelasPagas(Integer parcelasPagas) {
		this.parcelasPagas = parcelasPagas;
	}

	public Integer getParcelasTotais() {
		return parcelasTotais;
	}

	public void setParcelasTotais(Integer parcelasTotais) {
		this.parcelasTotais = parcelasTotais;
	}

	public BigDecimal getValorParcela() {
		return valorParcela;
	}

	public void setValorParcela(BigDecimal valorParcela) {
		this.valorParcela = valorParcela;
	}

	public BigDecimal getSaldoDevedor() {
		return saldoDevedor;
	}

	public void setSaldoDevedor(BigDecimal saldoDevedor) {
		this.saldoDevedor = saldoDevedor;
	}

	public Banco getBanco() {
		return banco;
	}

	public void setBanco(Banco banco) {
		this.banco = banco;
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
