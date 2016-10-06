package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Coeficiente;

@Repository
public class CoeficienteDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Coeficiente coeficiente) {
		manager.persist(coeficiente);
	}

	public void remove(Coeficiente coeficiente) {
		Coeficiente coeficienteEncontrada = manager.find(Coeficiente.class, coeficiente.getId());
		manager.remove(coeficienteEncontrada);
	}

	public void altera(Coeficiente coeficiente) {
		manager.merge(coeficiente);
	}

	@SuppressWarnings("unchecked")
	public List<Coeficiente> lista() {
		List<Coeficiente> coeficiente = manager.createQuery("select c from Coeficiente c").getResultList();
		return coeficiente;
	}

	public Coeficiente buscaPorId(Integer id) {
		return manager.find(Coeficiente.class, id);
	}
}
