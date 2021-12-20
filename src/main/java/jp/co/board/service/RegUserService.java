package jp.co.board.service;

import java.sql.SQLException;

public interface RegUserService {
	
	public int RegUserInfo(String id, String password, String name, int age, int phonenumber, String address) throws ClassNotFoundException, SQLException;

}
