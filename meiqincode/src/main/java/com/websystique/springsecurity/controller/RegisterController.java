package com.websystique.springsecurity.controller;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.websystique.springsecurity.model.User;
import com.websystique.springsecurity.service.UserService;

@Controller
@RequestMapping("/")
public class RegisterController {
	
	 @Autowired
	 private AuthenticationManager authenticationManager;
	 
	@Autowired
	private UserService service;

	@Autowired
	@Qualifier("customUserDetailsService")
	private UserDetailsService userDetailsService;
	
	@Autowired
	private  MessageSource messageSource;
	
	/*
	 * This method will provide the medium to add a new register.
	 */
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String newRegister(@RequestParam(value="title", required=false, defaultValue="美勤注册") String title, Model model){
		
		User register = new User();
		model.addAttribute("register", register);
		return "register";
	}
	/*
	 * This method will be called on form submission, handling POST request for
	 * saving register in database. It also validates the user input
	 */
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String saveRegister(@Valid User register, BindingResult result,
			ModelMap model) {

		model.addAttribute("register", register);
		
		if (result.hasErrors()) {
			
			return "register";
		}
		/*
		 * Preferred way to achieve uniqueness of field [loginname] should be implementing custom @Unique annotation 
		 * and applying it on field [loginname] of Model class [Register].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		if(!service.isRegisterLoginnameUnique(register.getLoginName())){
			FieldError loginError =new FieldError("register","loginname",messageSource.getMessage("non.unique.loginName", new String[]{register.getLoginName()}, Locale.getDefault()));
		    result.addError(loginError);
			return "register";
		}
		
		service.save(register);
		
		//auto login
		autoLogin(register);
		
		return "redirect:/main";
	}
	
	private void autoLogin(User user){
		 UserDetails userDetails = userDetailsService.loadUserByUsername(user.getLoginName());
        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(userDetails, user.getPassword(), userDetails.getAuthorities());

        authenticationManager.authenticate(usernamePasswordAuthenticationToken);

        if (usernamePasswordAuthenticationToken.isAuthenticated()) {
            SecurityContextHolder.getContext().setAuthentication(usernamePasswordAuthenticationToken);
//            logger.debug(String.format("Auto login %s successfully!", username));
        }
	}
}
