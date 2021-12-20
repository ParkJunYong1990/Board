package jp.co.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import jp.co.board.dto.UserDto;

@Repository
public class RegUserDaoImpl implements RegUserDao {
	
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	@Override
	public int RegUserInfo(UserDto userDto) throws SQLException, ClassNotFoundException {
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/test";
		String id = "root";
		String pw = "";
		
		String sql = "INSERT INTO user_info VALUES(?, ?, ?, ?, ?, ?)";
		
		conn = DriverManager.getConnection(url, id, pw);
		
		pst = conn.prepareStatement(sql);
		
		pst.setString(1, userDto.getId());
		pst.setString(2, userDto.getPassword());
		pst.setString(3, userDto.getName());
		pst.setInt(4, userDto.getAge());
		pst.setInt(5, userDto.getPhonenumber());
		pst.setString(6, userDto.getAddress());
		
		return pst.executeUpdate();
	}

}
