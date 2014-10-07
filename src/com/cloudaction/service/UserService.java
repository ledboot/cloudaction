package com.cloudaction.service;

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
}
