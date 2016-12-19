package br.com.web.credja.controllers;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.web.credja.dao.TabelaDao;
import br.com.web.credja.dto.CoeficienteDTO;
import br.com.web.credja.model.Coeficiente;
import br.com.web.credja.model.Tabela;
import br.com.web.credja.service.BancoService;
import br.com.web.credja.service.CoeficienteService;

@Controller
@Transactional
@RequestMapping(value = "coeficiente")
public class CoeficienteController extends AbstractController {

	private static final String PAGINA_CADASTRO_COEFICIENTE = "cadastros/coeficiente/cadastro";

	@Resource
	private CoeficienteService coeficienteService;

	@Resource
	private BancoService bancoService;

	@Autowired
	private TabelaDao tabelaDao;

	@RequestMapping(value = "")
	public ModelAndView page() {
		return this.modelAndView(PAGINA_CADASTRO_COEFICIENTE).addObject("bancos", bancoService.lista());
	}

	@RequestMapping(value = "cadastra", method = RequestMethod.POST)
	public ModelAndView cadastro(CoeficienteDTO coeficienteDTO) {
		Tabela tabela = tabelaDao.buscaPorId(coeficienteDTO.getIdTabela());

		Coeficiente coeficiente = new Coeficiente();
		coeficiente.setTabela(tabela);
		coeficiente.setData(coeficienteDTO.getData());
		coeficiente.setValor(coeficienteDTO.getValor());
		coeficiente.setPrazo(coeficienteDTO.getPrazo());

		coeficienteService.cadastrar(coeficiente);

		return this.redirect("lista");
	}
}
