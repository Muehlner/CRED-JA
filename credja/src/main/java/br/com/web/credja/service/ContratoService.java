package br.com.web.credja.service;

import java.util.List;

import br.com.web.credja.model.Contrato;

public interface ContratoService {

	public void cadastrar(Contrato contrato);

	public void remove(Contrato contrato);

	public void altera(Contrato contrato);

	public List<Contrato> lista();

	public Contrato buscaPorId(Integer id);
}
