package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.web.credja.dao.BancoDao;
import br.com.web.credja.model.Banco;

@Controller
@Transactional
@RequestMapping(value = "banco")
public class BancoController {

	@Autowired
	private BancoDao bancoDao;

	@RequestMapping(value = "")
	public String page() {
		return "cadastros/banco/cadastro";
	}

	@RequestMapping(value = "/cadastra", method = RequestMethod.POST)
	public String cadastro(Banco banco) {
		bancoDao.cadastrar(banco);
		return "redirect:lista";
	}

	@RequestMapping(value = "/lista")
	public String lista(Model model) {
		model.addAttribute("bancos", bancoDao.lista());
		return "consultas/banco/lista";
	}

	@RequestMapping(value = "mostra")
	public String mostra(Integer id, Model model) {
		model.addAttribute("banco", bancoDao.buscaPorId(id));
		return "alteracoes/banco/mostra";
	}

	@RequestMapping(value = "altera")
	public String altera(Banco banco) {
		bancoDao.altera(banco);
		return "redirect:lista";
	}

	@RequestMapping(value = "remove")
	public String remove(Banco banco) {
		bancoDao.remove(banco);
		return "redirect:lista";
	}
}
