package br.com.web.credja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.web.credja.dao.BancoDao;
import br.com.web.credja.model.Banco;
import br.com.web.credja.service.BancoService;

@Service
public class BancoServiceImpl implements BancoService {

	@Autowired
	private BancoDao bancoDao;

	@Override
	public void cadastrar(Banco banco) {
		bancoDao.cadastrar(banco);
	}

	@Override
	public void remove(Banco banco) {
		bancoDao.remove(banco);
	}

	@Override
	public void altera(Banco banco) {
		bancoDao.altera(banco);
	}

	@Override
	public List<Banco> lista() {
		return bancoDao.lista();
	}

	@Override
	public Banco buscaPorId(Integer id) {
		return bancoDao.buscaPorId(id);
	}
}
