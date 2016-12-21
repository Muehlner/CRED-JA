package br.com.web.credja.controllers;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.dto.ContratoDTO;
import br.com.web.credja.service.ContratoService;

@Controller
@Transactional
@RequestMapping(value = { "contrato" })
public class ContratoController extends AbstractController {

	private static final String PAGINA_LISTA_CONTRATO = "consultas/contrato/lista";

	@Resource
	private ContratoService contratoService;

	@RequestMapping(value = "lista")
	public ModelAndView lista() {
		ModelAndView modelAndView = this.modelAndView(PAGINA_LISTA_CONTRATO);
		return modelAndView;
	}

	@RequestMapping(value = { "/cadastra" })
	public ModelAndView cadastro(ContratoDTO contratoDTO) {
		return this.redirect("lista");
	}
}
