package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
@RequestMapping(value = "login")
public class LoginController extends AbstractController {

	private static final String PAGINA_LOGIN = "login";

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_LOGIN);
	}

}
