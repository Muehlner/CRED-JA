package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Cliente;

@Repository
public class ClienteDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Cliente cliente) {
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

	@SuppressWarnings("unchecked")
	public List<Cliente> listaPorFuncionario(Integer idUsuario) {
		Query query = manager.createQuery("select c from Cliente c where c.usuario.id = :idUsuario");
		query.setParameter("idUsuario", idUsuario);
		List<Cliente> clientesDoFuncionario = query.getResultList();
		return clientesDoFuncionario;
	}

}
