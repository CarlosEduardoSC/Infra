package br.com.reclamacaojspjava.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.reclamacaojspjava.bean.Reclamacao;

public class ReclamacaoDao {

	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_projetoJAVA", "root", "");
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	
	public static int salvarReclamacao(Reclamacao u) {
		
	int status = 0;
	
	if (u.getTitulo() == null || u.getDescricao() == null || u.getPrioridade() == 0 || u.getSugestao_melhoria() == null){
		return 0;
	}
	
	else {
	try {
		Connection con = getConnection();
		PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO tbl_reclamacao (titulo_reclamacao, descricao_reclamacao, prioridade_reclamacao, sugestao_melhoria_reclamacao) VALUES (?,?,?,?)");
		
		ps.setString(1, u.getTitulo());
		ps.setString(2, u.getDescricao());
		ps.setInt(3, u.getPrioridade());
		ps.setString(4, u.getSugestao_melhoria());
		
		status = ps.executeUpdate();
		
		}	catch(Exception e){
			System.out.println(e);
		}
	
		return status;
	}
	}
	
	
	public static int deletarReclamacao (Reclamacao u) {
		
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("DELETE FROM tbl_reclamacao WHERE id_reclamacao=?");
			
			ps.setInt(1, u.getId());
			
			status = ps.executeUpdate();
			
			}	catch(Exception e){
				System.out.println(e);
			}
		
			return status;
	}
	
	public static List<Reclamacao> getAllReclamacao(){
		List<Reclamacao> list = new ArrayList<Reclamacao>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM tbl_reclamacao");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Reclamacao reclamacao = new Reclamacao();
				reclamacao.setId(rs.getInt("id_reclamacao"));
				reclamacao.setTitulo(rs.getString("titulo_reclamacao"));
				reclamacao.setDescricao(rs.getString("descricao_reclamacao"));
				reclamacao.setPrioridade(rs.getInt("prioridade_reclamacao"));
				reclamacao.setSugestao_melhoria(rs.getString("sugestao_melhoria_reclamacao"));
				list.add(reclamacao);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
		
	}
}
