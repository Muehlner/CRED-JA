package br.com.web.credja.controllers;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.model.Cliente;
import br.com.web.credja.service.ClienteService;

@Controller
@Transactional
@RequestMapping(value = { "cliente" })
public class ClienteController extends AbstractController {

	private static final String PAGINA_CADASTRO_CLIENTE = "cadastros/cliente/cadastro";
	private static final String PAGINA_LISTA_CLIENTE = "consultas/cliente/lista";

	@Resource
	private ClienteService clienteService;

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_CADASTRO_CLIENTE);
	}

	@RequestMapping(value = { "/cadastra" })
	public ModelAndView cadastro(Cliente cliente) {
		clienteService.cadastrar(cliente);
		return this.redirect("lista");
	}

	@RequestMapping(value = "lista")
	public ModelAndView lista() {
		return this.modelAndView(PAGINA_LISTA_CLIENTE);
	}
}
