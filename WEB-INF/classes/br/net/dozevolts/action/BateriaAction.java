package br.net.dozevolts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import br.net.dozevolts.bd.Persistencia;
import br.net.dozevolts.entidade.Bateria;
import br.net.dozevolts.entidade.Marca;
import br.net.dozevolts.form.BateriaForm;

public class BateriaAction extends DispatchAction {

	public ActionForward inicio(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			BateriaForm formulario = (BateriaForm)form;
//			List<Bateria> listaBaterias = BateriasBD.getInstance().pesquisar(converter(formulario));
//			request.setAttribute("listaBaterias", listaBaterias);
			return mapping.findForward("home");
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
	}

	public ActionForward abrirTelaPesquisaPorCaracteristicas(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			return mapping.findForward("pesquisarBaterias");
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
	}


	public ActionForward abrirTelaPesquisaPorVeiculo(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			return mapping.findForward("pesquisarBateriasPorVeiculo");
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
	}
	
//	public ActionForward pesquisarBaterias(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
//		try{
//			BateriaForm formulario = (BateriaForm)form;
//			List<Bateria> listaBaterias = BateriasBD.getInstance().pesquisar(converter(formulario));
//			request.setAttribute("listaBaterias", listaBaterias);
//			return mapping.findForward("pesquisarBaterias");
//		}catch(Exception e){
//			e.printStackTrace();
//			throw e;
//		}
//	}

//	public ActionForward pesquisarBateriasPorVeiculo(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
//		try{
//			BateriaForm formulario = (BateriaForm)form;
//			List<Bateria> listaBaterias = BateriasBD.getInstance().pesquisar(converter(formulario));
//			request.setAttribute("listaBaterias", listaBaterias);
//			return mapping.findForward("pesquisarBateriasPorVeiculo");
//		}catch(Exception e){
//			e.printStackTrace();
//			throw e;
//		}
//	}

//	private Bateria converter(BateriaForm form) throws Exception{
//		Bateria b = new Bateria();
//		b.setOrdenarPor(form.getOrdenarPor());
//		b.setAh(form.getAh());
//		b.setCca(form.getCca());
//		b.setRc(form.getRc());
//		b.setComprimento(form.getComprimento());
//		b.setLargura(form.getLargura());
//		b.setAltura(form.getAltura());
//		b.setGarantia(form.getGarantia());
//		b.setMarca((form.getMarcaVeiculo() != null && form.getMarcaVeiculo() > 0) ? new Marca(form.getMarcaVeiculo()) : null);
//		return b;
//	}
	
}
