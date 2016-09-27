package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Cliente;
import br.com.web.credja.model.Observacao;

@Repository
public class ClienteDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Cliente cliente) {
		
		List<Observacao> observacoes = cliente.getObservacoes();
		
		manager.persist(observacoes);
		
		manager.persist(cliente);
	}

	public void remove(Cliente cliente) {
		Cliente clienteEncontrado = manager.find(Cliente.class, cliente.getId());
		manager.remove(clienteEncontrado);
	}

	public void altera(Cliente cliente) {
		manager.merge(cliente);
	}

	@SuppressWarnings("unchecked")
	public List<Cliente> lista() {
		List<Cliente> clientes = manager.createQuery("select c from Cliente c").getResultList();
		return clientes;
	}

	public Cliente buscaPorId(Integer id) {
		return manager.find(Cliente.class, id);
	}

}
