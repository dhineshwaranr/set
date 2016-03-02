package org.sreematheducationaltrust.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.validation.BindingResult;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.UserResponse;
import org.sreematheducationaltrust.service.AdminTaskPanelService;
import org.sreematheducationtrust.dto.LanguageDTO;

@Controller
@RequestMapping("/admin")
public class AdminTaskPanelController {

	@Autowired
	AdminTaskPanelService adminTaskPanelService;
	
	@RequestMapping(value="/taskPanel",method=RequestMethod.GET)
	public String taskPanel(){
		return "taskPanel";
	}
	
	@ResponseBody
	@RequestMapping(value="/newsPost",method=RequestMethod.POST)


	public UserResponse newsCreate(@ModelAttribute("news")News news, BindingResult result){
		try{
		News newsentity = new News();
		Language lang = new Language();
		String langChoosed = news.getLanguage().getLanguage();
		lang.setLanguage(langChoosed);
		news.setLanguage(lang);
		
		if (news != null) {
			if (news.isImage()) {
				news.setImage(true);
			} else {
				news.setImage(false);
			}
		}
	
		}catch(Exception e){
			System.out.println(e);
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
	
	@ResponseBody
	@RequestMapping(value="/addLanguage",method=RequestMethod.POST)
	public BaseResponse addLanguage(@ModelAttribute("language")Language language, BindingResult result){
		System.out.println("HITSSS LANG"+language.getLanguage());
		if(language!=null){
			return adminTaskPanelService.addLanguage(language);
		}
		return null;
	}
	
}
