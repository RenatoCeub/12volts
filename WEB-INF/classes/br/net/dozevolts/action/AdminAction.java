package br.net.dozevolts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import br.net.dozevolts.bd.Persistencia;
import br.net.dozevolts.entidade.Categoria;
import br.net.dozevolts.entidade.Fabricante;
import br.net.dozevolts.entidade.TipoProduto;
import br.net.dozevolts.form.AdminForm;

public class AdminAction extends DispatchAction {

	public ActionForward admin(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			AdminForm formulario = (AdminForm)form;
//			List<Bateria> listaBaterias = BateriasBD.getInstance().pesquisar(converter(formulario));
//			request.setAttribute("listaBaterias", listaBaterias);
			return mapping.findForward("admin");
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
	}

	public ActionForward definirCategoriaInclusao(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			AdminForm formulario = (AdminForm)form;
			List<Categoria> listaCategorias = Persistencia.getInstance().listarCategorias();
			request.setAttribute("listaCategorias", listaCategorias);
			return mapping.findForward("inclusao1");
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
	}


	public ActionForward carregarDemaisCamposInclusao(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			AdminForm formulario = (AdminForm)form;
			
			List<TipoProduto> listaTiposProduto = Persistencia.getInstance().listarTiposProdutoPorCategoria(formulario.getIdCategoria());
			request.setAttribute("listaTiposProduto", listaTiposProduto);
			
			List<Fabricante> listaFabricantes = Persistencia.getInstance().listarFabricantes();
			request.setAttribute("listaFabricantes", listaFabricantes);
			
			return mapping.findForward("inclusao1");
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
