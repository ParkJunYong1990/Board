package jp.co.board.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jp.co.board.service.RegUserService;

//컨트롤러 선언
@Controller
public class LoginController {
	
	@Autowired
	RegUserService regUserService;
	
	//리퀘스트 맵핑 선언
	//첫 화면
	@RequestMapping("/")
	public String home() {
		
		return "login";
	}
	
	//회원가입 화면 이동
	@RequestMapping("/register")
	public String register() {
		
		return "register";
	}
	
	//회원가입 완료후 다시 로그인화면 이동
	@RequestMapping("/login")
	public ModelAndView returnLogin(String id, String password, String name, int age, int phonenumber, String address) throws ClassNotFoundException, SQLException {
		
		ModelAndView mv = new ModelAndView();
		
		int result = regUserService.RegUserInfo(id, password, name, age, phonenumber, address);
		
		if(result == 0) {
			
			mv.setViewName("login");
		}else {
			
			mv.setViewName("login");
		}
				
		return mv;
	}
	
	//로그인
	@RequestMapping("/main")
	public ModelAndView main(String id, String password) {
		
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}

}
