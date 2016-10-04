package br.com.web.credja.dao;

import java.util.List;

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

	public void remove(Tabela tabela) {
		Tabela tabelaEncontrada = manager.find(Tabela.class, tabela.getId());
		manager.remove(tabelaEncontrada);
	}

	public void altera(Tabela tabela) {
		manager.merge(tabela);
	}

	@SuppressWarnings("unchecked")
	public List<Tabela> buscaPorIdBanco(Integer idBanco) {
		List<Tabela> tabelas = manager.createQuery("select t.id, t.descricao from Tabela t where t.banco.id = :idBanco")
				.setParameter("idBanco", idBanco).getResultList();
		return tabelas;
	}

	public Tabela buscaPorId(Integer id) {
		return manager.find(Tabela.class, id);
	}
}
