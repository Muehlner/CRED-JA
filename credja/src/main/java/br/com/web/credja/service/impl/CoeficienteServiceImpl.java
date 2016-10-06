package br.com.web.credja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.web.credja.dao.CoeficienteDao;
import br.com.web.credja.model.Coeficiente;
import br.com.web.credja.service.CoeficienteService;

@Service
public class CoeficienteServiceImpl implements CoeficienteService {

	@Autowired
	private CoeficienteDao coeficienteDao;

	@Override
	public void cadastrar(Coeficiente banco) {
		coeficienteDao.cadastrar(banco);
	}

	@Override
	public void remove(Coeficiente banco) {
		coeficienteDao.remove(banco);
	}

	@Override
	public void altera(Coeficiente banco) {
		coeficienteDao.altera(banco);
	}

	@Override
	public List<Coeficiente> lista() {
		return coeficienteDao.lista();
	}

	@Override
	public Coeficiente buscaPorId(Integer id) {
		return coeficienteDao.buscaPorId(id);
	}

}
