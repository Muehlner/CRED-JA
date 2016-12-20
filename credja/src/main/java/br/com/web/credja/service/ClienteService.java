package br.com.web.credja.service;

import java.util.List;

import br.com.web.credja.model.Cliente;

public interface ClienteService {

	public void cadastrar(Cliente cliente);

	public void remove(Cliente cliente);

	public void altera(Cliente cliente);

	public List<Cliente> lista();

	public Cliente buscaPorId(Integer id);

	public List<Cliente> listaPorFuncionario(Integer idFuncionario);
}
