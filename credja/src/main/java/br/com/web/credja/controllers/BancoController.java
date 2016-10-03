package br.com.web.credja.controllers;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.model.Banco;
import br.com.web.credja.service.BancoService;

@Controller
@Transactional
@RequestMapping(value = "banco")
public class BancoController extends AbstractController {

	private static final String PAGINA_CADASTRO_BANCO = "cadastros/banco/cadastro";
	private static final String PAGINA_ALTERACAO_BANCO = "alteracoes/banco/mostra";
	private static final String PAGINA_LISTA_BANCO = "consultas/banco/lista";

	@Resource
	private BancoService bancoService;

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_CADASTRO_BANCO);
	}

	@RequestMapping(value = "cadastra", method = RequestMethod.POST)
	public ModelAndView cadastro(Banco banco) {
		bancoService.cadastrar(banco);
		return this.redirect("lista");
	}

	@RequestMapping(value = "lista")
	public ModelAndView lista() {
		return this.modelAndView(PAGINA_LISTA_BANCO).addObject("bancos", bancoService.lista());
	}

	@RequestMapping(value = "mostra")
	public ModelAndView mostra(Integer id) {
		return this.modelAndView(PAGINA_ALTERACAO_BANCO).addObject("banco", bancoService.buscaPorId(id));
	}

	@RequestMapping(value = "altera")
	public ModelAndView altera(Banco banco) {
		bancoService.altera(banco);
		return this.redirect("lista");
	}

	@RequestMapping(value = "remove")
	public ModelAndView remove(Banco banco) {
		bancoService.remove(banco);
		return this.redirect("lista");
	}
}
