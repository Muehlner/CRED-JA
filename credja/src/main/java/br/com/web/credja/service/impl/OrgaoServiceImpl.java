package br.com.web.credja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.web.credja.dao.OrdaoDao;
import br.com.web.credja.model.Orgao;
import br.com.web.credja.service.OrgaoService;

@Service
public class OrgaoServiceImpl implements OrgaoService {

	@Autowired
	private OrdaoDao orgaoDao;

	@Override
	public void cadastro(Orgao orgao) {
		orgaoDao.cadastrar(orgao);
	}

	@Override
	public List<Orgao> lista() {
		return orgaoDao.lista();
	}

	@Override
	public Orgao buscaPorId(Integer id) {
		return orgaoDao.buscaPorId(id);
	}

	@Override
	public void altera(Orgao orgao) {
		orgaoDao.altera(orgao);

	}

	@Override
	public void remove(Orgao orgao) {
		orgaoDao.remove(orgao);
	}

}
