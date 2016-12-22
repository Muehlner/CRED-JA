package br.com.web.credja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.web.credja.dao.ContratoDao;
import br.com.web.credja.model.Contrato;
import br.com.web.credja.service.ContratoService;

@Service
public class ContratoServiceImpl implements ContratoService {

	@Autowired
	private ContratoDao contratoDao;

	@Override
	public void cadastrar(Contrato contrato) {
		contratoDao.cadastrar(contrato);
	}

	@Override
	public void remove(Contrato contrato) {
		contratoDao.remove(contrato);
	}

	@Override
	public void altera(Contrato contrato) {
		contratoDao.altera(contrato);
	}

	@Override
	public List<Contrato> lista() {
		return contratoDao.lista();
	}

	@Override
	public Contrato buscaPorId(Integer id) {
		return contratoDao.buscaPorId(id);
	}

}
