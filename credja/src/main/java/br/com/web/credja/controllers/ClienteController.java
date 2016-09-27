package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.web.credja.dao.ClienteDao;
import br.com.web.credja.model.Cliente;

@Controller
@Transactional
@RequestMapping(value = { "cliente" })
public class ClienteController {

	@Autowired
	private ClienteDao clienteDao;

	@RequestMapping(value = { "" })
	public String page() {
		return "cadastros/cliente/cadastro";
	}

	@RequestMapping(value = { "/cadastro" })
	public String cadastro(Cliente cliente) {
		clienteDao.cadastrar(cliente);
		return "cadastros/cliente/cliente-adicionado";
	}
}
