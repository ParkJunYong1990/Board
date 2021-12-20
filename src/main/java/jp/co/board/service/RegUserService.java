package jp.co.board.service;

import java.sql.SQLException;

import org.springframework.web.servlet.ModelAndView;

public interface RegUserService {
	
	public ModelAndView RegUserInfo(String id, String password, String name, int age, int phonenumber, String address) throws ClassNotFoundException, SQLException;

}
