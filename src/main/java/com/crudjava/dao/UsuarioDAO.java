package com.crudjava.dao;

import com.crudjava.bean.Usuario;
import com.mysql.jdbc.PreparedStatement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
	
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sisrh", "root", "");
		}catch (Exception e){
			System.out.println(e);
		}
		
		return conn;
	}
	
	public static List<Usuario> getUsuarios(){
		List<Usuario> list = new ArrayList<Usuario>();
		
		try {
			Connection conn = getConnection();
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("SELECT * FROM usuarios");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setDtNascimento(rs.getString("dtNascimento"));
				usuario.setCargo(rs.getString("cargo"));
				usuario.setLotacao(rs.getString("lotacao"));
				usuario.setEmail(rs.getString("email"));
				usuario.setTelefone(rs.getString("telefone"));
				list.add(usuario);
			}			
		}catch (Exception e){
			System.out.println(e);
		}
		
		return list;	
	}
	
	public static Usuario getUsuario(int id) {
		Usuario usuario = null;
		
		try {
			Connection conn = getConnection();
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("SELECT * FROM usuarios WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setDtNascimento(rs.getString("dtNascimento"));
				usuario.setCargo(rs.getString("cargo"));
				usuario.setLotacao(rs.getString("lotacao"));
				usuario.setEmail(rs.getString("email"));
				usuario.setTelefone(rs.getString("telefone"));
			}			
			
		}catch (Exception e){
			System.out.println(e);
		}
		
		return usuario;
	}
	
	public static int updateUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection conn = getConnection();
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("UPDATE usuarios SET nome=?, "
					+ "sexo=?, dtNascimento=?, cargo= ?, lotacao=?, email=?, telefone= ?");
			
			ps.setString(1, u.getNome());
			ps.setString(2, u.getSexo());
			ps.setString(3, u.getDtNascimento());
			ps.setString(4, u.getCargo());
			ps.setString(5, u.getLotacao());
			ps.setString(6, u.getEmail());
			ps.setString(7, u.getTelefone());
			status = ps.executeUpdate();
		}catch(Exception e){
			System.out.println(e);
		}
		
		return status;
	}
	
	public static int insertUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection conn = getConnection();
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("INSERT INTO usuarios (nome, sexo, dtNascimento, cargo, lotacao, email, telefone) VALUES (?,?,?,?,?,?,?)");			
			ps.setString(1, u.getNome());
			ps.setString(2, u.getSexo());
			ps.setString(3, u.getDtNascimento());
			ps.setString(4, u.getCargo());
			ps.setString(5, u.getLotacao());
			ps.setString(6, u.getEmail());
			ps.setString(7, u.getTelefone());
			status = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return status;

	}
	
	public static int deleteUsuario(Usuario u) {
		int status = 0;
		
		try {
			Connection conn = getConnection();
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("DELETE FROM usuarios WHERE id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
		
	}
	
}