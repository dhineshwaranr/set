package org.sreematheducationaltrust.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.sreematheducationaltrust.domain.AboutUs;
import org.sreematheducationaltrust.domain.Events;
import org.sreematheducationaltrust.domain.Language;
import org.sreematheducationaltrust.domain.MenuBar;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.BaseResponse;
import org.sreematheducationaltrust.io.CustomJsonResponse;
import org.sreematheducationaltrust.io.UserResponse;
import org.sreematheducationaltrust.service.AdminTaskPanelService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("news")
public class AdminTaskPanelController {

	@Autowired
	AdminTaskPanelService adminTaskPanelService;
	
	@RequestMapping(value="/taskPanel",method=RequestMethod.GET)
	public ModelAndView taskPanel(Model model){
		News newsentity = new News();
		AboutUs aboutuscontent = new AboutUs();
		Language language = new Language();
		newsentity.setLanguage(language);
		aboutuscontent.setLanguage(language);
		List<Language> languageList = adminTaskPanelService.getAllLanguage();
		model.addAttribute("languageList",languageList);
		model.addAttribute("news",newsentity);
		model.addAttribute("aboutuscontent", aboutuscontent);
		List<Language> allLanguagle = getAllLanguage();
		model.addAttribute("langList", allLanguagle);
		return new ModelAndView("taskPanel", "model", model);
	}
	
	@ResponseBody
	@RequestMapping(value="/newsPost",method=RequestMethod.POST)
	public UserResponse newsCreate(@ModelAttribute News news, BindingResult result){
		try{

		if (news != null) {
			if (news.isImage()) {
				news.setImage(true);
			} else {
				news.setImage(false);
			}
			adminTaskPanelService.newsPost(news);
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
		
	//@ResponseBody
	//@RequestMapping(value="/getAllLanguage",method=RequestMethod.GET)
	public List<Language> getAllLanguage(){
		List<Language> langList = adminTaskPanelService.getAllLanguage(); 
		/*CustomJsonResponse jsonResponse = new CustomJsonResponse();
		System.out.println("LANG---->"+langList.get(0).getId());
		jsonResponse.setLanguageRows(langList);
		jsonResponse.setRecords(String.valueOf(langList.size()));
		jsonResponse.setPage( "1" );
		jsonResponse.setTotal( "10" );
		return jsonResponse;*/
		return langList;
	}
	
	@ResponseBody
	@RequestMapping(value="/getAllMenu", method=RequestMethod.GET)
	public List<Map<String,String>> getAllMenu(){
		List<Map<String,String>> menuList = adminTaskPanelService.getAllMenu();
		for(Map<String,String> lm : menuList){
			for(Map.Entry<String, String> entry : lm.entrySet()){
				//System.out.println(entry.getKey());
				//System.out.println(entry.getValue());
			}
		}
		return menuList;
	}
	
	@ResponseBody
	@RequestMapping(value="/saveAboutUs",method=RequestMethod.POST)
	public BaseResponse saveAboutUsContent(@ModelAttribute AboutUs aboutuscontent, BindingResult result){
		try{
		System.out.println("saveAboutus");
		System.out.println(aboutuscontent.getTitle());
		System.out.println(aboutuscontent.getContent());
		System.out.println(aboutuscontent.getLanguage().getLanguage());
		//return adminTaskPanelService.saveAboutUsContent(aboutuscontent);
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	@SuppressWarnings("unused")
	private ModelMap populateModel(){
		System.out.println("POPULATE");
		return null;
	}
	
}
