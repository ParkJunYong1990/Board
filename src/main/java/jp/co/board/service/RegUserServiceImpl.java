package jp.co.board.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.board.dao.RegUserDao;
import jp.co.board.dto.UserDto;

@Service
public class RegUserServiceImpl implements RegUserService {
	
	@Autowired
	RegUserDao regUserDao;

	@Override
	public int RegUserInfo(String id, String password, String name, int age, int phonenumber, String address) throws ClassNotFoundException, SQLException {
		
		UserDto userDto = new UserDto();
		
		int result = regUserDao.RegUserInfo(userDto);
		
		return result;
	}

}
