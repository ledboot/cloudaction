package com.cloudaction.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudaction.model.CloudUser;
import com.cloudaction.service.UserService;

@Controller
public class UserController {
    
    @Resource(name = "userService")
    private UserService userService;

    @RequestMapping(value="/login",method=RequestMethod.POST)
    public void findUserById(@RequestParam Map<String, String> params,HttpServletRequest request){
	String userName = params.get("username").toString();
	String passWord = params.get("password").toString();
	CloudUser user = userService.findById(1);
	System.out.println(user.getUserName());
    }
    
    @RequestMapping(value="/")
    public String index(){
	return "index";
    }
}
