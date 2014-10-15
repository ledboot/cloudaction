package com.cloudaction.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cloudaction.model.CloudUser;
import com.cloudaction.service.UserService;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JettisonMappedXmlDriver;

@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String  findUserById(@RequestParam Map<String, String> params) {
		String account = params.get("name").toString();
		String passWord = params.get("password").toString();
		CloudUser user = userService.findByNameOrMail(account, passWord);
		//System.out.println(user.getUserName());
		XStream xStream = new XStream(new JettisonMappedXmlDriver());
		xStream.alias("user", CloudUser.class);
		if(user != null){
			return xStream.toXML(user);
		}else{
			return xStream.toXML(user);
		}
	}

	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/signin",method = RequestMethod.GET)
	public String  signIn(HttpServletRequest request){
		return "login";
	}
}
