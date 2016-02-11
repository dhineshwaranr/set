package org.sreematheducationaltrust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	/*@RequestMapping("/dashboard")
	public ModelAndView dashboard(){
		ModelAndView model = new ModelAndView();
		model.setViewName("dashboard");
		return model;
	}*/
	
	@RequestMapping("/dashboard")
	public String dashboard(){
		return "dashboard";
	}
}
