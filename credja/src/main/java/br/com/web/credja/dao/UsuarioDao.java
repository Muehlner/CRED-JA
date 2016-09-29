package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Usuario;

@Repository
public class UsuarioDao {

	@PersistenceContext
	private EntityManager manager;

	public void cadastrar(Usuario usuario) {
		manager.persist(usuario);
	}

	@SuppressWarnings("unchecked")
	public List<Usuario> lista() {
		
		List<Usuario> usuarios = manager.createNamedQuery("Usuario.findAll").getResultList();

		return usuarios;
	}
}
