package br.com.web.credja.controllers;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.service.BancoService;
import br.com.web.credja.service.CoeficienteService;

@Controller
@Transactional
@RequestMapping(value = "coeficiente")
public class CoeficienteController extends AbstractController {

	private static final String PAGINA_CADASTRO_COEFICIENTE = "cadastros/coeficiente/cadastro";

	@Resource
	private CoeficienteService coeficienteService;

	@Resource
	private BancoService bancoService;

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_CADASTRO_COEFICIENTE).addObject("bancos", bancoService.lista());
	}
}
