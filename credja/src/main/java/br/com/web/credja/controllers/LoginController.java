package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
public class LoginController extends AbstractController {

	private static final String PAGINA_DASHBOARD = "dashboard/home";
	private static final String PAGINA_LOGIN = "login";

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView page() {
		return this.modelAndView(PAGINA_LOGIN);
	}

	@RequestMapping(value = "")
	public ModelAndView login() {
		return this.modelAndView(PAGINA_DASHBOARD);
	}
}
