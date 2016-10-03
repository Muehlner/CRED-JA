package br.com.web.credja.service;

import java.util.List;

import br.com.web.credja.model.Orgao;

public interface OrgaoService {

	public void cadastro(Orgao orgao);

	public List<Orgao> lista();

	public Orgao buscaPorId(Integer id);

	public void altera(Orgao orgao);

	public void remove(Orgao orgao);

}
