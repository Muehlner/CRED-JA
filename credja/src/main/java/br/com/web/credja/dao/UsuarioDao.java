package br.com.web.credja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.web.credja.model.Usuario;

@Repository
public class UsuarioDao implements UserDetailsService {

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

	public void remove(Usuario usuario) {
		Usuario usuarioEncontrado = manager.find(Usuario.class, usuario.getId());
		manager.remove(usuarioEncontrado);
	}

	public Usuario buscaPorId(Integer id) {
		return manager.find(Usuario.class, id);
	}

	public void altera(Usuario usuario) {
		manager.merge(usuario);
	}

	@Override
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {

		String findUserByLogin = "select u from Usuario u where u.login = :login";

		List<Usuario> users = manager.createQuery(findUserByLogin, Usuario.class).setParameter("login", login)
				.getResultList();

		if (users.isEmpty()) {
			throw new UsernameNotFoundException("O usuario " + login + " não existe");
		}

		return users.get(0);
	}
}
