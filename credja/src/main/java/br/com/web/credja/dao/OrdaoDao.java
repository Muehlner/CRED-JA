package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Orgao;

@Repository
public class OrdaoDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Orgao orgao) {
		manager.persist(orgao);
	}

	public void remove(Orgao orgao) {
		Orgao orgaoEncontrado = manager.find(Orgao.class, orgao.getId());
		manager.remove(orgaoEncontrado);
	}

	public void altera(Orgao orgao) {
		manager.merge(orgao);
	}

	@SuppressWarnings("unchecked")
	public List<Orgao> lista() {
		List<Orgao> orgaos = manager.createQuery("select o from Orgao o").getResultList();
		return orgaos;
	}

	public Orgao buscaPorId(Integer id) {
		return manager.find(Orgao.class, id);
	}
}
