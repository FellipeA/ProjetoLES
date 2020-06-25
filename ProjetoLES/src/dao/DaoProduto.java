package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Produto;

public class DaoProduto {

	private Connection c;
	
	public DaoProduto() {
		DaoGenerica dao = new  DaoGenerica();
		c = dao.getConnection();
	}
	
	public boolean insereProduto(Produto p) {
		try {
			String sql = "INSERT INTO produto(nome, descricao, preco) "
					+ "VALUES ("+p.getNome()+", "+p.getDescricao()+", "+p.getPreco()+")";
			Statement stmt = c.createStatement();
			stmt.execute(sql);
			stmt.close();
			return true;
		} catch (SQLException e) {
			return false;
		}
	}
	
	public List<Produto> listaProdutos() {
		List<Produto> produtos = new ArrayList<Produto>();
		try {
			String sql = "SELECT * FROM produto";
			Statement stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Produto p = new Produto();
				p.setId(rs.getLong("id"));
				p.setNome(rs.getString("nome"));
				p.setDescricao(rs.getString("descricao"));
				p.setPreco(rs.getDouble("preco"));
				produtos.add(p);
			}
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return produtos;
	}
	
}
