package br.com.web.credja.controllers;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.dao.BancoDao;
import br.com.web.credja.dao.TabelaDao;
import br.com.web.credja.dto.TabelaDTO;
import br.com.web.credja.model.Banco;
import br.com.web.credja.model.Tabela;

@Controller
@Transactional
@RequestMapping(value = { "tabela" })
public class TabelaController {

	private static final String PAGINA_TABELA = "consultas/tabela/tabela";
	private static final String PAGINA_LISTA_TABELA = "consultas/tabela/lista";

	@Autowired
	private TabelaDao tabelaDao;

	@Autowired
	private BancoDao bancoDao;

	@RequestMapping(value = "")
	public String page() {
		return "cadastros/tabela/cadastro";
	}

	@RequestMapping(value = "cadastra")
	public String cadastro(TabelaDTO tabelaDTO) {

		Banco banco = bancoDao.buscaPorId(tabelaDTO.getIdBanco());

		Tabela tabela = new Tabela();
		tabela.setDescricao(tabelaDTO.getDescricao());

		tabela.setBanco(banco);
		tabelaDao.cadastrar(tabela);

		banco.getTabelas().add(tabela);
		bancoDao.altera(banco);

		return "redirect:lista";
	}

	@RequestMapping(value = "lista")
	public ModelAndView lista() {

		ModelAndView modelAndView = new ModelAndView(PAGINA_LISTA_TABELA);

		return modelAndView;
	}

	@RequestMapping(value = "pesquisaTabelas")
	@ResponseBody
	public ModelAndView pesquisaTabelas(Integer idBanco) {

		ModelAndView modelAndView = new ModelAndView(PAGINA_TABELA);

		modelAndView.addObject("tabelas", tabelaDao.buscaPorIdBanco(idBanco));

		return modelAndView;
	}

	@ModelAttribute("bancos")
	public List<Banco> buscaBancos() {
		return bancoDao.lista();
	}
}
