package com.cloudaction.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cloudaction.dao.UserDao;
import com.cloudaction.model.CloudUser;

@Service("userService")
public class UserService {

    @Resource(name="userDao")
    private UserDao userDao;
    
    public CloudUser findById(int id){
    	return userDao.findById(id);
    }
    
    public CloudUser findByNameOrMail(String account,String pwd){
    	Map<String, Object> params = new HashMap<String, Object>();
    	params.put("name", account);
    	params.put("pwd", pwd);
    	CloudUser user = userDao.findByName(params);
    	if(user == null){
    		user = userDao.findByMail(params);
    	}
    	return user;
    }
}
