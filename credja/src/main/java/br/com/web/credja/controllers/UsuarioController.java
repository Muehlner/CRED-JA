package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.dao.UsuarioDao;
import br.com.web.credja.enums.Perfil;
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
		ModelAndView modelAndView = new ModelAndView(PAGINA_CADASTRO_USUARIO);

		modelAndView.addObject("perfis", Perfil.values());

		return modelAndView;
	}

	@RequestMapping(value = "cadastra", method = RequestMethod.POST)
	public String cadastro(Usuario usuario, String perfilUser) {

		usuario.setPerfil(Perfil.valueOf(perfilUser.toUpperCase()));

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
	public String remove(Usuario usuario) {
		usuarioDao.remove(usuario);
		return "redirect:lista";
	}

	@RequestMapping(value = "mostra")
	public ModelAndView mostra(Integer id) {
		ModelAndView modelAndView = new ModelAndView(PAGINA_ALTERACAO_USUARIO);
		modelAndView.addObject("usuario", usuarioDao.buscaPorId(id));
		return modelAndView;
	}

	@RequestMapping(value = "altera")
	public String altera(Usuario usuario) {
		usuarioDao.altera(usuario);
		return "redirect:lista";
	}

}
