package br.com.web.credja.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.dao.UsuarioDao;
import br.com.web.credja.enums.Perfil;
import br.com.web.credja.model.Role;
import br.com.web.credja.model.Usuario;

@Controller
@Transactional
@RequestMapping(value = { "usuario" })
public class UsuarioController extends AbstractController {

	private static final String PAGINA_CADASTRO_USUARIO = "cadastros/usuario/cadastro";
	private static final String PAGINA_LISTA_USUARIO = "consultas/usuario/lista";
	private static final String PAGINA_ALTERACAO_USUARIO = "alteracoes/usuario/mostra";

	@Autowired
	private UsuarioDao usuarioDao;

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_CADASTRO_USUARIO).addObject("perfis", Perfil.values());
	}

	@RequestMapping(value = "cadastra", method = RequestMethod.POST)
	public String cadastro(Usuario usuario, String perfilUser) {

		Role role = new Role();
		role.setName("ROLE_" + perfilUser.toUpperCase());

		List<Role> roles = new ArrayList<>();
		roles.add(role);

		usuario.setRoles(roles);

		usuarioDao.cadastrar(usuario);

		return "redirect:lista";
	}

	@RequestMapping(value = "lista", method = RequestMethod.GET)
	public ModelAndView lista() {
		ModelAndView modelAndView = new ModelAndView(PAGINA_LISTA_USUARIO);
		modelAndView.addObject("usuarios", usuarioDao.lista());
		return modelAndView;
	}

	@RequestMapping(value = "remove")
	public void remove(Integer id) {
		Usuario usuario = new Usuario();
		usuario.setId(id);
		usuarioDao.remove(usuario );
		
	}

	@RequestMapping(value = "mostra")
	public ModelAndView mostra(Integer id) {
		ModelAndView modelAndView = new ModelAndView(PAGINA_ALTERACAO_USUARIO);
		modelAndView.addObject("usuario", usuarioDao.buscaPorId(id)).addObject("perfis", Perfil.values());
		return modelAndView;
	}

	@RequestMapping(value = "altera", method = RequestMethod.POST)
	public String altera(Usuario usuario, String perfilUser) {
		Role role = new Role();
		role.setName("ROLE_" + perfilUser.toUpperCase());

		List<Role> roles = new ArrayList<>();
		roles.add(role);

		usuario.setRoles(roles);

		usuarioDao.altera(usuario);
		return "redirect:lista";
	}

}
