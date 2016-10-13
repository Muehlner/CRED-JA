package br.com.web.credja.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import br.com.web.credja.model.Usuario;

public abstract class AbstractController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AbstractController.class);

	protected ModelAndView modelAndView(String view) {

		final ModelAndView modelAndView = new ModelAndView(view);

		return modelAndView;
	}

	protected ModelAndView redirect(String url) {

		ModelAndView modelAndView = new ModelAndView(new RedirectView(url));

		return modelAndView;
	}

//	protected Usuario getUser() {
//		LOGGER.debug("obtendo usuario autenticado");
//
//		final Authentication authentication = this.getAuthentication();
//
//		if (authentication != null) {
//			final Object principal = authentication.getPrincipal();
//
//			LOGGER.debug(String.format("objeto user principal obtido [%s]", principal));
//
//			if (principal instanceof Usuario) {
//				LOGGER.debug(String.format("usuario autenticado [%s]", authentication.getName()));
//
//				return ((Usuario) principal).getUsuario();
//			}
//
//			LOGGER.debug(String.format("objeto de autenticacao [principal] nao e do tipo esperado", principal,
//					principal.getClass().getCanonicalName()));
//
//			return null;
//		}
//
//		LOGGER.debug("objeto de autenticacao esta nulo. nao sera possivel obter usuario logado.");
//
//		return null;
//	}
//
//	private Authentication getAuthentication() {
//		return SecurityContextHolder.getContext().getAuthentication();
//	}
//
//	protected boolean hasRole(String role) {
//		for (final GrantedAuthority g : this.getAuthentication().getAuthorities()) {
//			if (g.getAuthority().equals(role)) {
//				return true;
//			}
//		}
//		return false;
//	}
}
