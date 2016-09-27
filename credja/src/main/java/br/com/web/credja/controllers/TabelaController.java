package br.com.web.credja.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.web.credja.dao.BancoDao;
import br.com.web.credja.dao.TabelaDao;
import br.com.web.credja.model.Banco;
import br.com.web.credja.model.Tabela;

@Controller
@Transactional
@RequestMapping(value = { "tarefa" })
public class TabelaController {

	@Autowired
	private TabelaDao tabelaDao;

	@Autowired
	private BancoDao bancoDao;

	@RequestMapping("")
	public String page() {
		return "cadastros/tabela/cadastro";
	}

	@RequestMapping("/cadastra")
	public String cadastro(Tabela tabela) {

		tabelaDao.cadastrar(tabela);

		return "cadastros/tarefa/tarefa-adicionado";
	}

	@ModelAttribute("bancos")
	public Map<Integer, String> buscaBancos() {
		HashMap<Integer, String> bancos = new HashMap<>();

		List<Banco> bancosEncontrados = bancoDao.lista();

		for (Banco banco : bancosEncontrados) {
			bancos.put(banco.getId(), banco.getDescricao());
		}

		return bancos;
	}
}
