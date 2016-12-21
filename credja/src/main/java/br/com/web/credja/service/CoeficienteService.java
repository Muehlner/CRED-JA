package br.com.web.credja.service;

import java.util.List;

import br.com.web.credja.model.Coeficiente;

public interface CoeficienteService {

	public void cadastrar(Coeficiente coeficiente);

	public void remove(Coeficiente coeficiente);

	public void altera(Coeficiente coeficiente);

	public List<Coeficiente> lista();

	public Coeficiente buscaPorId(Integer id);

	public List<Coeficiente> buscaPorIdTabela(Integer idTabela);
}
