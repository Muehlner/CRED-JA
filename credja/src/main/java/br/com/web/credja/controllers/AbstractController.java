package br.com.web.credja.controllers;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

public abstract class AbstractController {

	protected ModelAndView modelAndView(String view) {
		
		final ModelAndView modelAndView = new ModelAndView(view);
		
		return modelAndView;
	}

    protected ModelAndView redirect(String url) {    	
        return new ModelAndView(new RedirectView(url));
    }
    
}
