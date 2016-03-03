package org.sreematheducationaltrust.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.sreematheducationaltrust.domain.Gallery;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.service.AdminTaskPanelService;

@Controller
public class HomeController {
	
	@Autowired
	AdminTaskPanelService newsServiceManager;
	
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
	
	@ResponseBody
	@RequestMapping(value="/getAllNews",method=RequestMethod.GET)
	public List<News> getAllNews(){
		return newsServiceManager.getAllNews();
	}
	
	@RequestMapping(value="/gallery", method=RequestMethod.GET)
	public String gallery(){	
		System.out.println("IN-Gallery");
		return "gallery";
	}
	
	@RequestMapping(value="/aboutus", method=RequestMethod.GET)
	public String aboutUs(){	
		System.out.println("In-aboutus");
		return "aboutus";
	}
	
	@RequestMapping(value="/services", method=RequestMethod.GET)
	public String services(){	
		System.out.println("In-services");
		return "services";
	}
	
	@RequestMapping(value="/blog", method=RequestMethod.GET)
	public String blog(){	
		System.out.println("In-blog");
		return "blog";
	}
	
	@RequestMapping(value="/videos", method=RequestMethod.GET)
	public String video(){	
		System.out.println("In-Videos");
		return "videos";
	}
	
	@RequestMapping(value="/contactus", method=RequestMethod.GET)
	public String contactUs(){	
		System.out.println("In-ContactUs");
		return "contactus";
	}
		
	public ModelAndView populateModelAndView(){
		ModelAndView model = new ModelAndView();
		
		
		return model;
	}
}
