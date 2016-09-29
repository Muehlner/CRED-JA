package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.dao.UsuarioDao;
import br.com.web.credja.model.Usuario;

@Controller
@Transactional
@RequestMapping(value = { "usuario" })
public class UsuarioController {

	private static final String PAGINA_LISTA_USUARIO = "consultas/usuario/lista";
	private static final String PAGINA_CADASTRO_USUARIO = "cadastros/usuario/cadastro";
	@Autowired
	private UsuarioDao usuarioDao;

	@RequestMapping(value = "")
	public ModelAndView page() {
		ModelAndView modelAndView = new ModelAndView(PAGINA_CADASTRO_USUARIO);
		
		modelAndView.addObject("");
		
		return modelAndView;
	}

	@RequestMapping(value = "cadastra", method = RequestMethod.POST)
	public String cadastro(Usuario usuario) {
		usuarioDao.cadastrar(usuario);
		return "redirect:lista";
	}

	@RequestMapping(value = "lista", method = RequestMethod.GET)
	public String lista(Model model) {
		model.addAttribute("bancos", usuarioDao.lista());
		return PAGINA_LISTA_USUARIO;
	}
}
