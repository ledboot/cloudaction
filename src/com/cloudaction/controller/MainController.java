package com.cloudaction.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/signin",method = RequestMethod.GET)
	public String  signIn(HttpServletRequest request){
		return "login";
	}

	@RequestMapping(value ="/loginOut",method =RequestMethod.GET)
	public String loginOut(HttpServletRequest request){
		request.getSession().removeAttribute("user");
		return "redirect:/";
	}
}
