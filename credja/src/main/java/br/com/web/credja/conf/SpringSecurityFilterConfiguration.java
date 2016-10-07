package br.com.web.credja.conf;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class SpringSecurityFilterConfiguration extends AbstractSecurityWebApplicationInitializer {

	public SpringSecurityFilterConfiguration() {
		super(SecurityConfiguration.class);
	}
}
