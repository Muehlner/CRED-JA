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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cliente == null) ? 0 : cliente.hashCode());
		result = prime * result + ((custoPortabilidade == null) ? 0 : custoPortabilidade.hashCode());
		result = prime * result + ((dataCadastro == null) ? 0 : dataCadastro.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((numero == null) ? 0 : numero.hashCode());
		result = prime * result + ((parcelasPagas == null) ? 0 : parcelasPagas.hashCode());
		result = prime * result + ((parcelasTotais == null) ? 0 : parcelasTotais.hashCode());
		result = prime * result + ((saldoDevedor == null) ? 0 : saldoDevedor.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		result = prime * result + ((valorCompra == null) ? 0 : valorCompra.hashCode());
		result = prime * result + ((valorParcela == null) ? 0 : valorParcela.hashCode());
		result = prime * result + ((valorRefinanciamento == null) ? 0 : valorRefinanciamento.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Contrato other = (Contrato) obj;
		if (cliente == null) {
			if (other.cliente != null)
				return false;
		} else if (!cliente.equals(other.cliente))
			return false;
		if (custoPortabilidade == null) {
			if (other.custoPortabilidade != null)
				return false;
		} else if (!custoPortabilidade.equals(other.custoPortabilidade))
			return false;
		if (dataCadastro == null) {
			if (other.dataCadastro != null)
				return false;
		} else if (!dataCadastro.equals(other.dataCadastro))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (numero == null) {
			if (other.numero != null)
				return false;
		} else if (!numero.equals(other.numero))
			return false;
		if (parcelasPagas == null) {
			if (other.parcelasPagas != null)
				return false;
		} else if (!parcelasPagas.equals(other.parcelasPagas))
			return false;
		if (parcelasTotais == null) {
			if (other.parcelasTotais != null)
				return false;
		} else if (!parcelasTotais.equals(other.parcelasTotais))
			return false;
		if (saldoDevedor == null) {
			if (other.saldoDevedor != null)
				return false;
		} else if (!saldoDevedor.equals(other.saldoDevedor))
			return false;
		if (status != other.status)
			return false;
		if (valorCompra == null) {
			if (other.valorCompra != null)
				return false;
		} else if (!valorCompra.equals(other.valorCompra))
			return false;
		if (valorParcela == null) {
			if (other.valorParcela != null)
				return false;
		} else if (!valorParcela.equals(other.valorParcela))
			return false;
		if (valorRefinanciamento == null) {
			if (other.valorRefinanciamento != null)
				return false;
		} else if (!valorRefinanciamento.equals(other.valorRefinanciamento))
			return false;
		return true;
	}
}
