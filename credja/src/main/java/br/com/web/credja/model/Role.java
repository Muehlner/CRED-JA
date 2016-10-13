package br.com.web.credja.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.security.core.GrantedAuthority;

@Entity
public class Role implements GrantedAuthority{

	private static final long serialVersionUID = 8559267335020983752L;
	
	@Id
	private String name;

	@Override
	public String getAuthority() {
		return name;
	}
	
	
}