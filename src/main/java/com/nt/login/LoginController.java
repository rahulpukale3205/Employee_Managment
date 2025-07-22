package com.nt.login;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.Dao.LoginDao;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDao dao;

	@RequestMapping("/hlogin")
	public String hrlogin() {
		return "hrlogin";
	}
	

	@RequestMapping( value = "/hrlog", method = RequestMethod.POST )
	public String login( HttpSession session, @RequestParam String username, @RequestParam String password, Model model ) {
		boolean isValid = dao.loginValidation( username, password );
		if ( isValid ) { 
			session.setAttribute( "loginUser", username );
			return "home";
		} else {
			model.addAttribute( "errorMsg", "Please The Valid Password" );
			return "hrlogin";
		}
	}
	

	@RequestMapping("/elogin")
	public String emplogin() {
		return "emplogin";
	}
	@RequestMapping( value = "/login", method = RequestMethod.POST )
	public String emplogin( HttpSession session, @RequestParam String username, @RequestParam String password, Model model ) {
		boolean isValid = dao.empValidation( username, password );
		if ( isValid ) { 
			session.setAttribute( "loginUser", username );
			return "empHome";
		} else {
			model.addAttribute( "errorMsg", "Please The Valid Password" );
			return "emplogin";
		}
	}
	

}
