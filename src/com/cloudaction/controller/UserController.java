package com.cloudaction.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.cloudaction.dto.ResultObj;
import com.cloudaction.model.CloudUser;
import com.cloudaction.service.UserService;
import com.cloudaction.utils.Constants;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JettisonMappedXmlDriver;

@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String  doLogin(HttpServletRequest request,@RequestParam("name") String name,@RequestParam("password") String password) {
		ResultObj resultObj = userService.login(name, password);
		CloudUser user = null;
		if(resultObj.getResult()){
			user = userService.findByName(name);
			request.getSession().setAttribute("user", user);
			return "redirect:/";
		}else{
			request.setAttribute(Constants.CORE_LOGIN_FAILURE, resultObj.getMsg());
			return "login";
		}
	}
	
	
}
