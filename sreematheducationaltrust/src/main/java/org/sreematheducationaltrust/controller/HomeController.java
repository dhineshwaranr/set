package org.sreematheducationaltrust.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.sreematheducationaltrust.domain.AboutUs;
import org.sreematheducationaltrust.domain.Gallery;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.MenuBar;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.domain.Services;
import org.sreematheducationaltrust.service.AdminTaskPanelService;

@Controller
public class HomeController {
	
	@Autowired
	AdminTaskPanelService adminTaskPanelService;
	
	/*@RequestMapping("/dashboard")
	public ModelAndView dashboard(){
		ModelAndView model = new ModelAndView();
		model.setViewName("dashboard");
		return model;
	}*/
	
	@RequestMapping("/dashboard")
	public ModelAndView dashboard(){
		ModelMap model = populateModel();
		return new ModelAndView("dashboard","model",model);
	}
	
	@ResponseBody
	@RequestMapping(value="/languageChoosed/{requestedPage}/{languageChoosen}", method=RequestMethod.GET)
	public Object getNewsByLanguage(@PathVariable String languageChoosen,@PathVariable String requestedPage){
		List<Object> langObjects = new ArrayList<Object>();
		List<Object>  menuObject = new ArrayList<Object>();
		System.out.println(languageChoosen +"||"+requestedPage);
		if(requestedPage.equals("dashbord")){
			List<News> newsList = adminTaskPanelService.getNewsByLanguage(Integer.parseInt(languageChoosen));
			langObjects.add(0,newsList);
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("aboutus")){
			List<AboutUs> aboutusList = adminTaskPanelService.getAboutUsContentByLanguage(Integer.parseInt(languageChoosen));
			langObjects.add(0,aboutusList);
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("service")){
			List<Services> serviceList = adminTaskPanelService.getServiceContentByLanguage(Integer.parseInt(languageChoosen));
			langObjects.add(0,serviceList);
			
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("blog")){
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("gallery")){
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("video")){
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("contactus")){
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		if(requestedPage.equals("taskpanel")){
			System.out.println("admin/taskpanel");
			List<News> newsList = adminTaskPanelService.getNewsByLanguage(Integer.parseInt(languageChoosen));
			langObjects.add(0,newsList);
			List<MenuBar> menu = adminTaskPanelService.getMenuItems(Integer.parseInt(languageChoosen));
			langObjects.add(1,menu);
		}
		return langObjects;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/getAllNews",method=RequestMethod.GET)
	public List<News> getAllNews(){
		return adminTaskPanelService.getAllNews();
	}
	
	@RequestMapping(value="/gallery", method=RequestMethod.GET)
	public ModelAndView gallery(){	
		ModelMap model = populateModel();
		return new ModelAndView("gallery","model",model);
	}
	
	@RequestMapping(value="/aboutus", method=RequestMethod.GET)
	public ModelAndView aboutUs(){	
		ModelMap model = populateModel();
		return new ModelAndView("aboutus","model",model);
	}
	
	@RequestMapping(value="/services", method=RequestMethod.GET)
	public ModelAndView services(){	
		ModelMap model = populateModel();
		return new ModelAndView("services","model",model);
	}
	
	@RequestMapping(value="/blog", method=RequestMethod.GET)
	public ModelAndView blog(){	
		ModelMap model = populateModel();
		return new ModelAndView("blog","model",model);
	}
	
	@RequestMapping(value="/videos", method=RequestMethod.GET)
	public ModelAndView video(){	
		ModelMap model = populateModel();
		return new ModelAndView("videos","model",model);
	}
	
	@RequestMapping(value="/contactus", method=RequestMethod.GET)
	public ModelAndView contactUs(){	
		ModelMap model = populateModel();
		return new ModelAndView("contactus","model",model);
		 
	}
		
	public ModelMap populateModel(){
		ModelMap model = new ModelMap();
		Language lang = new Language();
		List<Language> languageList = adminTaskPanelService.getAllLanguage();
		model.put("languageList",languageList);
		model.put("lang",lang);
		return model;
	}
}
