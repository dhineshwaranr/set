package org.sreematheducationaltrust.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.validation.BindingResult;
import org.sreematheducationaltrust.domain.News;
import org.sreematheducationaltrust.io.UserResponse;
import org.sreematheducationaltrust.service.NewsService;

@Controller
@RequestMapping("/admin")
public class AdminTaskPanelController {

	@Autowired
	NewsService newsServiceManager;
	
	@RequestMapping(value="/taskPanel",method=RequestMethod.GET)
	public String taskPanel(){
		return "taskPanel";
	}
	
	@ResponseBody
	@RequestMapping(value="/newsPost",method=RequestMethod.POST)
	public UserResponse newsCreate(@ModelAttribute("news")News news, BindingResult result){
		News newsentity = new News();
		if (news != null) {
			if (news.isImage()) {
				news.setImage(true);
			} else {
				news.setImage(false);
			}
			return newsServiceManager.newsPost(news);
		}
		return null;
	}
	
	@RequestMapping("{/[object Object]}")
	public Object multipartImages(Object object){
		System.out.println("MULTI");
		return null;
	}
	
	
	
}
