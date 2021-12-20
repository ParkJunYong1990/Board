package jp.co.board.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import jp.co.board.dao.RegUserDao;
import jp.co.board.dto.UserDto;

@Service
public class RegUserServiceImpl implements RegUserService {
	
	@Autowired
	RegUserDao regUserDao;

	@Override
	public ModelAndView RegUserInfo(String id, String password, String name, int age, int phonenumber, String address) throws ClassNotFoundException, SQLException {
		
		ModelAndView mv = new ModelAndView();
		
		UserDto userDto = new UserDto();
		
		userDto.setId(id);
		userDto.setPassword(password);
		userDto.setName(name);
		userDto.setAge(age);
		userDto.setPhonenumber(phonenumber);
		userDto.setAddress(address);
		
		int result = regUserDao.RegUserInfo(userDto);
		
		if(result == 0) {
			
			mv.setViewName("/register");
			
		}else {
			
			mv.setViewName("/login");
		}
		
		return mv;
	}

}
