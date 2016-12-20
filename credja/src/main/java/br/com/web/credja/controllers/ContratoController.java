package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
@RequestMapping(value = { "contrato" })
public class ContratoController extends AbstractController {

	private static final String PAGINA_LISTA_CONTRATO = "consultas/contrato/lista";

	@RequestMapping(value = "lista")
	public ModelAndView lista() {
		ModelAndView modelAndView = this.modelAndView(PAGINA_LISTA_CONTRATO);
		return modelAndView;
	}
}
