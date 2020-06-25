package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.Usuario;

public class DaoUsuario {

	private Connection c;
	
	public DaoUsuario() {
		DaoGenerica dao = new DaoGenerica();
		c = dao.getConnection();
	}
	
	public boolean insereUsuario(Usuario u) {
		try {
			String sql = "INSERT INTO usuario(usuario, senha) VALUES ('"+u.getUsuario()+"', '"+u.getSenha()+"')";
			Statement stmt = c.createStatement();
			stmt.execute(sql);
			stmt.close();
			return true;
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean pesquisaSeExisteUsuario(Usuario u) {
		try {
			String sql = "SELECT usuario, senha "
					+ "FROM usuario "
					+ "where usuario = '"+u.getUsuario()+"' AND senha = '"+u.getSenha()+"'";
			Statement stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				return true;
			}
			return false;
		} catch (SQLException e) {
			return false;
		}
	}
}
