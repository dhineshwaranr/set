package org.sreematheducationaltrust.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.sreematheducationaltrust.domain.AdminUsers;

@Controller
public class AuthenticationController {
	
	@Autowired
	ServletContext context;
	
	@RequestMapping("/login")
	public String getLoginForm(@RequestParam(required = false) String authfailed, String logout, AdminUsers adminuser, ModelMap map) {
		String error = "";
		if (logout != null) {
			error = "Logged out successfully. Please Login to continue!";
			map.addAttribute("msg", error);
		} 
		return "login";
	}
}
