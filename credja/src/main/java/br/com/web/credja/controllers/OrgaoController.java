package br.com.web.credja.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.web.credja.dao.OrdaoDao;
import br.com.web.credja.model.Orgao;

@Controller
@Transactional
@RequestMapping( value = "orgao")
public class OrgaoController {

	@Autowired
	private OrdaoDao orgaoDao;

	@RequestMapping("")
	public String page() {
		return "cadastros/orgao/cadastro";
	}

	@RequestMapping("/cadastro")
	public String cadastro(Orgao orgao) {
		orgaoDao.cadastrar(orgao);
		return "cadastros/orgao/orgao-adicionado";
	}
	
	@RequestMapping("/lista")
	public String lista(Model model) {
	  model.addAttribute("orgaos", orgaoDao.lista());
	  return "consultas/orgao/lista";
	}
	
	@RequestMapping("mostra")
	public String mostra(Integer id, Model model) {
	  model.addAttribute("orgao", orgaoDao.buscaPorId(id));
	  return "consultas/orgao/mostra";
	}
	
	@RequestMapping("altera")
	public String altera(Orgao orgao) {
	  orgaoDao.altera(orgao);
	  return "redirect:listaOrgaos";
	}
	
	@RequestMapping("remove")
	public String remove(Orgao orgao) {
	  orgaoDao.remove(orgao);
	  return "redirect:listaOrgaos";
	}
}
