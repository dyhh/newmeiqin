package com.websystique.springsecurity.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.websystique.springsecurity.model.User;
import com.websystique.springsecurity.service.UserService;

@Controller
public class HelloWorldController {

	@Autowired
	UserService service;
	
	@RequestMapping(value = { "/", "/main" }, method = RequestMethod.GET)
	public String homePage(@RequestParam(value="title", required=false, defaultValue="美勤主页") String title,ModelMap model) {
		setUserInfos(model);
		model.addAttribute("title", title);
		return "main";
	}
	
	private void setUserInfos(ModelMap model){
		User user = service.findByLoginName(getLoginName());
		model.addAttribute("user", getLoginName());
		if(null != user){
			model.addAttribute("nickName", user.getNickName());			
		}
	}

	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public String personalPage(ModelMap model) {
		setUserInfos(model);
		return "personal";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage(ModelMap model) {
		setUserInfos(model);
		return "admin";
	}
	
	@RequestMapping(value = "/admin/createnewuser", method = RequestMethod.GET)
	public String admincreateuserPage(ModelMap model) {
		setUserInfos(model);
		return "createnewuser";
	}

	@RequestMapping(value = "/db", method = RequestMethod.GET)
	public String dbaPage(ModelMap model) {
		setUserInfos(model);
		return "dba";
	}

	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		setUserInfos(model);
		return "accessDenied";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	private String getLoginName(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		}
//		else {
//			userName = principal.toString();
//		}
		return userName;
	}
	
	

}