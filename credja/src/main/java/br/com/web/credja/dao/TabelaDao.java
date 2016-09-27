package br.com.web.credja.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Tabela;

@Repository
public class TabelaDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Tabela tabela) {
		manager.persist(tabela);
	}
}
