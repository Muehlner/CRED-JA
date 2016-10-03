package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Banco;
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

	public List<Tabela> buscaPorIdBanco(Integer idBanco) {
		Banco banco = (Banco) manager.createQuery("select b from Banco b where b.id = :idBanco")
		.setParameter("idBanco", idBanco).getSingleResult();
		
		List<Tabela> tabelas = banco.getTabelas();

		
		return tabelas;
	}

	public Tabela buscaPorId(Integer id) {
		return manager.find(Tabela.class, id);
	}
}
