package org.sreematheducationaltrust.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;
import org.sreematheducationaltrust.service.AdminTaskPanelService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("news")
public class AdminTaskPanelController {

	@Autowired
	AdminTaskPanelService adminTaskPanelService;
	
	@RequestMapping(value="/taskPanel",method=RequestMethod.GET)
	public String taskPanel(ModelMap model){
		News newsentity = new News();
		Language lang = new Language();
		newsentity.setLanguage(lang);
		List<Language> languageList = adminTaskPanelService.getAllLanguage();
		model.addAttribute("languageList",languageList);
		model.addAttribute("news",newsentity);
		return "taskPanel";
	}
	
	@ResponseBody
	@RequestMapping(value="/newsPost",method=RequestMethod.POST)
	public UserResponse newsCreate(@ModelAttribute("news")News news, BindingResult result){
		
		 /*
		String langChoosed = news.getLanguage().getLanguage();
		lang.setLanguage(langChoosed);
		news.setLanguage(lang);*/
		System.out.println("lang:  "+news.getLanguage().getLanguage());
		if (news != null) {
			if (news.isImage()) {
				news.setImage(true);
			} else {
				news.setImage(false);
			}
			return adminTaskPanelService.newsPost(news);
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/eventPost",method=RequestMethod.POST)
	public UserResponse eventCreate(@ModelAttribute("events")Events events, BindingResult result){
		//Events evententity = new Events();
		if (events != null) {
			return adminTaskPanelService.createEvent(events);
		}
		return null;
	}
	
	public void populateModel(){
		
	}
	
}
