package jp.co.board.dao;

import java.sql.SQLException;

import jp.co.board.dto.UserDto;

public interface RegUserDao {
	
	public int RegUserInfo(UserDto userDto) throws SQLException, ClassNotFoundException;

}
