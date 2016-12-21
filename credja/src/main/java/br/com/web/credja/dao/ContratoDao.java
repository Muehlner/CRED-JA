package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Contrato;

@Repository
public class ContratoDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Contrato contrato) {
		manager.persist(contrato);
	}

	public void remove(Contrato contrato) {
		Contrato contratoEncontrada = manager.find(Contrato.class, contrato.getId());
		manager.remove(contratoEncontrada);
	}

	public void altera(Contrato contrato) {
		manager.merge(contrato);
	}

	@SuppressWarnings("unchecked")
	public List<Contrato> lista() {
		List<Contrato> contrato = manager.createQuery("select c from Contrato c").getResultList();
		return contrato;
	}

	public Contrato buscaPorId(Integer id) {
		return manager.find(Contrato.class, id);
	}
}
