package br.com.web.credja.controllers;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.model.Orgao;
import br.com.web.credja.service.OrgaoService;

@Controller
@Transactional
@RequestMapping(value = "orgao")
public class OrgaoController extends AbstractController {

	private static final String PAGINA_CADASTRO_ORGAO = "cadastros/orgao/cadastro";
	private static final String PAGINA_LISTA_ORGAO = "consultas/orgao/lista";
	private static final String PAGINA_ALTERACAO_ORGAO = "alteracoes/orgao/mostra";

	@Resource
	private OrgaoService orgaoService;

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_CADASTRO_ORGAO);
	}

	@RequestMapping(value = "cadastro")
	public ModelAndView cadastro(Orgao orgao) {
		orgaoService.cadastro(orgao);
		return this.redirect("lista");
	}

	@RequestMapping(value = "lista")
	public ModelAndView lista() {
		return this.modelAndView(PAGINA_LISTA_ORGAO).addObject("orgaos", orgaoService.lista());
	}

	@RequestMapping(value = "mostra")
	public ModelAndView mostra(Integer id) {
		return this.modelAndView(PAGINA_ALTERACAO_ORGAO).addObject("orgao", orgaoService.buscaPorId(id));
	}

	@RequestMapping(value = "altera")
	public ModelAndView altera(Orgao orgao) {
		orgaoService.altera(orgao);
		return this.redirect("lista");
	}

	@RequestMapping(value = "remove")
	public ModelAndView remove(Orgao orgao) {
		orgaoService.remove(orgao);
		return this.redirect("lista");
	}
}
