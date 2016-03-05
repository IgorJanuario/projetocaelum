package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ValidaContatoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		
		long id = Long.parseLong(req.getParameter("id"));
		
		Contato contato = new Contato();
		contato.setId(id);
		
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.Pesquisa(contato);
		
		req.setAttribute("contatos", contatos);
		
		return "edita-contato.jsp";
	}

}
