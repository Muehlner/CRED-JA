package br.com.web.credja.service;

import java.util.List;

import br.com.web.credja.model.Banco;

public interface BancoService {

	public void cadastrar(Banco banco);

	public void remove(Banco banco);

	public void altera(Banco banco);

	public List<Banco> lista();

	public Banco buscaPorId(Integer id);

}
