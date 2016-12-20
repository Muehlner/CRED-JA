package br.com.web.credja.controllers;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.model.Cliente;
import br.com.web.credja.model.Role;
import br.com.web.credja.model.Usuario;
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

		Usuario usuario = this.getUser();

		cliente.setUsuario(usuario);

		clienteService.cadastrar(cliente);
		return this.redirect("lista");
	}

	@RequestMapping(value = "lista")
	public ModelAndView lista() {

		ModelAndView modelAndView = this.modelAndView(PAGINA_LISTA_CLIENTE);

		List<Role> roles = this.getUser().getRoles();

		for (Role role : roles) {
			if (role.getName().equalsIgnoreCase("ROLE_ADMINISTRADOR")) {

				modelAndView.addObject("clientes", clienteService.lista());

			} else if (role.getName().equalsIgnoreCase("ROLE_ATENDENTE")) {

				modelAndView.addObject("clientes", clienteService.listaPorFuncionario(this.getUser().getId()));
			}
		}

		return modelAndView;
	}
}
