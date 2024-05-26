package br.net.dozevolts.bd;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.net.dozevolts.entidade.Bateria;
import br.net.dozevolts.entidade.Categoria;
import br.net.dozevolts.entidade.Fabricante;
import br.net.dozevolts.entidade.Marca;
import br.net.dozevolts.entidade.TipoProduto;
import br.net.dozevolts.entidade.Veiculo;

public class Persistencia extends BD implements Serializable{

	private static final long serialVersionUID = -3048257012803397740L;

	private static Persistencia instance;

	public static Persistencia getInstance() {
		if (instance == null)
			instance = new Persistencia();
		return instance;
	}

	public static void main(String[] args) {
		try {
			Persistencia bd = new Persistencia();
			System.out.println(bd.listarCategorias().size());
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public List<Categoria> listarCategorias() throws Exception{
		java.sql.Connection conn = obterConexao();
		try{
			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT ");
			sql.append(" 	c.id_categoria, c.descricao ");
			sql.append(" FROM sql_12volts.categoria c ");
			sql.append(" ORDER BY ");
			sql.append(" c.id_categoria ");
			java.sql.PreparedStatement st = conn.prepareStatement(sql.toString());			
			ResultSet rs = st.executeQuery();
			List<Categoria> lista = new ArrayList<Categoria>();
			while (rs.next()) {
				Categoria categoria = new Categoria();
				categoria.setIdCategoria(rs.getInt("id_categoria"));
				categoria.setDescricao(rs.getString("descricao"));
				lista.add(categoria);
			}
			return lista;
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
	
	
	public List<TipoProduto> listarTiposProdutoPorCategoria(Integer idCategoria) throws Exception{
		java.sql.Connection conn = obterConexao();
		try{
			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT ");
			sql.append(" 	t.id_tipo_produto, t.id_categoria, t.descricao ");
			sql.append(" FROM sql_12volts.tipo_produto t ");
			sql.append(" WHERE t.id_categoria = " + idCategoria);
			sql.append(" ORDER BY ");
			sql.append(" t.id_tipo_produto ");
			java.sql.PreparedStatement st = conn.prepareStatement(sql.toString());			
			ResultSet rs = st.executeQuery();
			List<TipoProduto> lista = new ArrayList<TipoProduto>();
			while (rs.next()) {
				TipoProduto tipoProduto = new TipoProduto();
				tipoProduto.setIdTipoProduto(rs.getInt("id_tipo_produto"));
				tipoProduto.setDescricao(rs.getString("descricao"));
				Categoria cat = new Categoria();
				cat.setIdCategoria(rs.getInt("id_categoria"));
				tipoProduto.setCategoria(cat);
				lista.add(tipoProduto);
			}
			return lista;
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}


	public List<Fabricante> listarFabricantes() throws Exception{
		java.sql.Connection conn = obterConexao();
		try{
			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT ");
			sql.append(" 	f.id_fabricante, f.descricao ");
			sql.append(" FROM sql_12volts.fabricante f ");
			sql.append(" ORDER BY ");
			sql.append(" f.id_fabricante ");
			java.sql.PreparedStatement st = conn.prepareStatement(sql.toString());			
			ResultSet rs = st.executeQuery();
			List<Fabricante> lista = new ArrayList<Fabricante>();
			while (rs.next()) {
				Fabricante fabricante = new Fabricante();
				fabricante.setId_fabricante(rs.getInt("id_fabricante"));
				fabricante.setDescricao(rs.getString("descricao"));
				lista.add(fabricante);
			}
			return lista;
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
	
	
	
	
	
//public List<Bateria> pesquisarPorVeiculo(Bateria bateria, Veiculo veiculo, Integer anoVeiculo) throws Exception{
//		
//		java.sql.Connection conn = obterConexao();
//
//		try{
//			StringBuilder sql = new StringBuilder();
//			
//			sql.append(" SELECT ");
//			sql.append(" 	b.id_bateria, b.id_marca, m.nome as marca, b.codigo, ");
//			sql.append(" 	b.amperagem, b.rc_mn, b.cca, b.peso, b.comprimento, ");
//			sql.append(" 	b.largura, b.altura, b.valor_venda, b.valor_venda_parcelado, ");
//			sql.append(" 	b.polo_positivo, b.garantia, b.imagem_disponivel, b.bateria_disponivel, ");
//			sql.append(" 	b.promocao ");
//			sql.append(" FROM 12volts.bateria b ");
//			sql.append(" INNER JOIN 12volts.marca m on b.id_marca = m.id_marca ");
//			sql.append(" INNER JOIN bateria.aplicacao ap on ap.id_bateria = b.id_bateria ");
//			sql.append(" where ap.id_veiculo = " + veiculo.getId() + " and (((ap.ano_inicio is null or ap.ano_inicio <= " + anoVeiculo + ") and (ap.ano_fim is null or ap.ano_fim >= " + anoVeiculo + ")) or ap.todos = 1) ");
//
//			sql.append(" ORDER BY ");
//
//			switch (bateria.getOrdenarPor()) {
//			case 1:
//				sql.append(" b.valor_venda ");
//				break;
//			case 2:
//				sql.append(" amperagem desc ");
//				break;
//			case 3:
//				sql.append(" cca desc ");
//				break;
//			case 4:
//				sql.append(" rc_mn desc ");
//				break;
//			default:
//				sql.append(" b.ordenacao ");
//				break;
//			}
//
//			java.sql.PreparedStatement st = conn.prepareStatement(sql.toString());			
//
//			ResultSet rs = st.executeQuery();
//
//			List<Bateria> lista = new ArrayList<>();
//
//			while (rs.next()) {
//				Bateria b = new Bateria();
//				b.setId(rs.getInt("id_bateria"));
//
//				Marca m = new Marca();
//				m.setId(rs.getInt("id_marca"));
//				m.setNome(rs.getString("marca"));
//				b.setMarca(m);
//
//				b.setCodigo(rs.getString("codigo") == null ? null : rs.getString("codigo").toUpperCase());
//				b.setAh(rs.getInt("amperagem"));
//				b.setRc(rs.getInt("rc_mn"));
//				b.setCca(rs.getInt("cca"));
//				b.setPeso(rs.getInt("peso"));
//				b.setComprimento(rs.getInt("comprimento"));
//				b.setLargura(rs.getInt("largura"));
//				b.setAltura(rs.getInt("altura"));
//				b.setValor(rs.getInt("valor_venda"));
//				b.setValorParcelado(rs.getInt("valor_venda_parcelado"));
//				b.setPoloPositivo(rs.getString("polo_positivo") != null ? (rs.getString("polo_positivo").equalsIgnoreCase("D") ? "Direito" : "Esquerdo") : "");
//				b.setGarantia(rs.getInt("garantia"));
//				b.setNomeImagem(rs.getString("codigo") == null ? null : rs.getString("codigo").toUpperCase());
//				b.setImagemDisponivel(rs.getBoolean("imagem_disponivel"));
//				b.setBateriaDisponivel(rs.getBoolean("bateria_disponivel"));
//				b.setPromocao(rs.getBoolean("promocao"));
//
//				lista.add(b);
//			}
//
//			return lista;
//
//		}catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//	}
	
	
	
	
//	public List<Bateria> pesquisar(Bateria bateria) throws Exception{
//		
//		java.sql.Connection conn = obterConexao();
//
//		try{
//			StringBuilder sql = new StringBuilder();
//			
//			sql.append(" SELECT ");
//			sql.append(" 	b.id_bateria, b.id_marca, m.nome as marca, b.codigo, ");
//			sql.append(" 	b.amperagem, b.rc_mn, b.cca, b.peso, b.comprimento, ");
//			sql.append(" 	b.largura, b.altura, b.valor_venda, b.valor_venda_parcelado, ");
//			sql.append(" 	b.polo_positivo, b.garantia, b.imagem_disponivel, b.bateria_disponivel, ");
//			sql.append(" 	b.promocao ");
//			sql.append(" FROM 12volts.bateria b ");
//			sql.append(" INNER JOIN 12volts.marca m on b.id_marca = m.id_marca ");
//			sql.append(" WHERE 1 = 1 ");
//
//			if (bateria.getAh() != null && bateria.getAh() > 0) {
//				sql.append(" AND b.amperagem = ? " );
//			}
//
//			if (bateria.getRc() != null && bateria.getRc() > 0) {
//				sql.append(" AND b.rc_mn >= ? " );
//			}
//
//			if (bateria.getCca() != null && bateria.getCca() > 0) {
//				sql.append(" AND b.cca >= ? " );
//			}
//
//			if (bateria.getComprimento() != null && bateria.getComprimento() > 0) {
//				sql.append(" AND b.comprimento <= ? " );
//			}
//
//			if (bateria.getLargura() != null && bateria.getLargura() > 0) {
//				sql.append(" AND b.largura <= ? " );
//			}
//
//			if (bateria.getAltura() != null && bateria.getAltura() > 0) {
//				sql.append(" AND b.altura <= ? " );
//			}
//
//			sql.append(" ORDER BY ");
//
//			switch (bateria.getOrdenarPor()) {
//			case 1:
//				sql.append(" b.valor_venda ");
//				break;
//			case 2:
//				sql.append(" amperagem desc ");
//				break;
//			case 3:
//				sql.append(" cca desc ");
//				break;
//			case 4:
//				sql.append(" rc_mn desc ");
//				break;
//			default:
//				sql.append(" b.ordenacao ");
//				break;
//			}
//			
//			java.sql.PreparedStatement st = conn.prepareStatement(sql.toString());			
//
//			int controle = 0;
//			
//			if (bateria.getAh() != null && bateria.getAh() > 0) {
//				st.setInt(++controle, bateria.getAh());
//			}
//
//			if (bateria.getRc() != null && bateria.getRc() > 0) {
//				st.setInt(++controle, bateria.getRc());
//			}
//			
//			if (bateria.getCca() != null && bateria.getCca() > 0) {
//				st.setInt(++controle, bateria.getCca());
//			}
//			
//			if (bateria.getComprimento() != null && bateria.getComprimento() > 0) {
//				st.setInt(++controle, bateria.getComprimento());
//			}
//
//			if (bateria.getLargura() != null && bateria.getLargura() > 0) {
//				st.setInt(++controle, bateria.getLargura());
//			}
//
//			if (bateria.getAltura() != null && bateria.getAltura() > 0) {
//				st.setInt(++controle, bateria.getAltura());
//			}
//			
////			st.setString(1, telefone);
//
//			ResultSet rs = st.executeQuery();
//			
//			List<Bateria> lista = new ArrayList<>();
//
//			while (rs.next()) {
//				Bateria b = new Bateria();
//				b.setId(rs.getInt("id_bateria"));
//
//				Marca m = new Marca();
//				m.setId(rs.getInt("id_marca"));
//				m.setNome(rs.getString("marca"));
//				b.setMarca(m);
//
//				b.setCodigo(rs.getString("codigo") == null ? null : rs.getString("codigo").toUpperCase());
//				b.setAh(rs.getInt("amperagem"));
//				b.setRc(rs.getInt("rc_mn"));
//				b.setCca(rs.getInt("cca"));
//				b.setPeso(rs.getInt("peso"));
//				b.setComprimento(rs.getInt("comprimento"));
//				b.setLargura(rs.getInt("largura"));
//				b.setAltura(rs.getInt("altura"));
//				b.setValor(rs.getInt("valor_venda"));
//				b.setValorParcelado(rs.getInt("valor_venda_parcelado"));
//				b.setPoloPositivo(rs.getString("polo_positivo") != null ? (rs.getString("polo_positivo").equalsIgnoreCase("D") ? "Direito" : "Esquerdo") : "");
//				b.setGarantia(rs.getInt("garantia"));
//				b.setNomeImagem(rs.getString("codigo") == null ? null : rs.getString("codigo").toUpperCase());
//				b.setImagemDisponivel(rs.getBoolean("imagem_disponivel"));
//				b.setBateriaDisponivel(rs.getBoolean("bateria_disponivel"));
//				b.setPromocao(rs.getBoolean("promocao"));
//
//				lista.add(b);
//			}
//
//			return lista;
//
//		}catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//	}


//	public Cliente buscarClientePorTelefone(String telefone) throws Exception{
//
//		Connection conn = obterConexao();
//
//		try{
//			StringBuilder sql = new StringBuilder();
//			sql.append(" select cli.idcliente, cli.nome, cli.telefone, cli.endereco ");
//			sql.append(" from siscalango.cliente cli ");
//			sql.append(" where cli.telefone = ? ");
//
//			PreparedStatement st = conn.prepareStatement(sql.toString());
//
//			st.setString(1, telefone);
//
//    		ResultSet rs = st.executeQuery();
//
//    		if (rs.next()) {
//    			Cliente cli;
//    			cli = new Cliente();
//    			cli.setIdCliente(rs.getInt("idcliente"));
//    			cli.setNome(rs.getString("nome"));
//    			cli.setTelefone(rs.getString("telefone"));
//    			cli.setEndereco(rs.getString("endereco"));
//    			return cli;
//    		}
//
//    		return null;
//
//		}catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//	}

//	public void cadastrarCliente(Cliente cliente) throws Exception{
//
//		Connection conn = obterConexao();
//
//		try{
//			StringBuilder sql = new StringBuilder();
//			sql.append(" insert into siscalango.cliente (nome, telefone, endereco) values (?,?,?) ");
//
//			PreparedStatement st = conn.prepareStatement(sql.toString());
//
//			st.setString(1, cliente.getNome());
//			st.setString(2, cliente.getTelefone());
//			st.setString(3, cliente.getEndereco());
//
//    		st.executeUpdate();
//
//		}catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//	}


//	public void alterarCliente(Cliente cliente) throws Exception{
//
//		Connection conn = obterConexao();
//
//		try{
//			StringBuilder sql = new StringBuilder();
//			sql.append(" update siscalango.cliente set nome = ?, telefone = ?, endereco = ? where idcliente = ? ");
//
//			PreparedStatement st = conn.prepareStatement(sql.toString());
//
//			st.setString(1, cliente.getNome());
//			st.setString(2, cliente.getTelefone());
//			st.setString(3, cliente.getEndereco());
//			st.setInt(4, cliente.getIdCliente().intValue());
//
//    		st.executeUpdate();
//
//		}catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//	}



//	public Usuario buscarUsuario(Usuario user) throws Exception{
//
//		Connection conn = obterConexao();
//
//		try{
//			StringBuilder sql = new StringBuilder();
//			sql.append(" select u.idusuario, u.idtipousuario, u.nome, u.login ");
//			sql.append(" from siscalango.usuario u ");
//			sql.append(" where u.login = ? ");
//			sql.append(" and u.senha = ? ");
//
//			PreparedStatement st = conn.prepareStatement(sql.toString());
//			st.setString(1, user.getLogin());
//			st.setString(2, user.getSenha());
//    		ResultSet rs = st.executeQuery();
//
//    		if (rs.next()) {
//    			Usuario u = new Usuario();
//
//    			TipoUsuario tp = new TipoUsuario();
//    			tp.setIdTipoUsuario(rs.getInt("idtipousuario"));
//    			u.setTipoUsuario(tp);
//    			u.setIdUsuario(rs.getInt("idusuario"));
//    			u.setNome(rs.getString("nome"));
//    			u.setLogin(rs.getString("login"));
//    			return u;
//    		}
//
//    		return null;
//
//		}catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//	}

}
