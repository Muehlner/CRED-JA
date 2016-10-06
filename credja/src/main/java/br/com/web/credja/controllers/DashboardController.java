package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
@RequestMapping(value = "dashboard")
public class DashboardController extends AbstractController {

	private static final String PAGINA_DASHBOARD_HOME = "dashboard/home";

	@RequestMapping(value = "home")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_DASHBOARD_HOME);
	}

}
