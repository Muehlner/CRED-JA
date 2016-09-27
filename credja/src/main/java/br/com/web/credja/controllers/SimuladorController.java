package br.com.web.credja.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.web.credja.dao.BancoDao;
import br.com.web.credja.dao.OrdaoDao;
import br.com.web.credja.model.Banco;
import br.com.web.credja.model.Orgao;

@Controller
public class SimuladorController {

	@Autowired
	private OrdaoDao orgaoDao;
	
	@Autowired
	private BancoDao bancoDao;
	
	@RequestMapping("/simulador")
	public String page() {
		return "consultas/simulador";
	}
	
	@ModelAttribute("orgaos")
	public Map<Integer, String> buscaOrgaos(){
		HashMap<Integer, String> orgaos = new HashMap<>();
		
		List<Orgao> orgaosEncontrados = orgaoDao.lista();
		
		for (Orgao orgao : orgaosEncontrados) {
			orgaos.put(orgao.getId(), orgao.getDescricao());
		}
		
		return orgaos;
	}
	
	@ModelAttribute("bancos")
	public Map<Integer, String> buscaBancos(){
		HashMap<Integer, String> bancos = new HashMap<>();
		
		List<Banco> bancosEncontrados = bancoDao.lista();
		
		for (Banco banco : bancosEncontrados) {
			bancos.put(banco.getId(), banco.getDescricao());
		}
		
		return bancos;
	}
}
