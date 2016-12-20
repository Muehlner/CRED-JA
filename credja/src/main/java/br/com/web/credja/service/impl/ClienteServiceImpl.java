package br.com.web.credja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.web.credja.dao.ClienteDao;
import br.com.web.credja.model.Cliente;
import br.com.web.credja.service.ClienteService;

@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	private ClienteDao clienteDao;

	@Override
	public void cadastrar(Cliente cliente) {
		clienteDao.cadastrar(cliente);
	}

	@Override
	public void remove(Cliente cliente) {
		clienteDao.remove(cliente);
	}

	@Override
	public void altera(Cliente cliente) {
		clienteDao.altera(cliente);
	}

	@Override
	public List<Cliente> lista() {
		return clienteDao.lista();
	}

	@Override
	public Cliente buscaPorId(Integer id) {
		return clienteDao.buscaPorId(id);
	}

	@Override
	public List<Cliente> listaPorFuncionario(Integer idFuncionario) {
		return clienteDao.listaPorFuncionario(idFuncionario);
	}

}
