package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Banco;

@Repository
public class BancoDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Banco banco) {
		manager.persist(banco);
	}

	public void remove(Banco banco) {
		Banco bancoEncontrado = manager.find(Banco.class, banco.getId());
		manager.remove(bancoEncontrado);
	}

	public void altera(Banco banco) {
		manager.merge(banco);
	}

	@SuppressWarnings("unchecked")
	public List<Banco> lista() {
		List<Banco> bancos = manager.createQuery("select b from Banco b").getResultList();
		return bancos;
	}

	public Banco buscaPorId(Integer id) {
		return manager.find(Banco.class, id);
	}
}
