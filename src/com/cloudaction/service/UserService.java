package com.cloudaction.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cloudaction.dao.UserDao;
import com.cloudaction.dto.ResultObj;
import com.cloudaction.model.CloudUser;
import com.cloudaction.utils.Constants;

@Service("userService")
public class UserService {

    @Resource(name="userDao")
    private UserDao userDao;
    
    public CloudUser findById(String id){
    	return userDao.findById(id);
    }
    
    public CloudUser findByNameOrMail(String account,String pwd){
    	Map<String, Object> params = new HashMap<String, Object>();
    	params.put("name", account);
    	params.put("pwd", pwd);
    	CloudUser user = userDao.findByName(params);
    	if(user == null){
    		user = userDao.findByMailPwd(params);
    	}
    	return user;
    }
    
    public CloudUser findByName(String account){
    	Map<String, Object> params = new HashMap<String, Object>();
    	params.put("name", account);
        CloudUser user = userDao.findByName(params);
        return user;
    }
    
    public ResultObj login(String account,String pwd){
    	ResultObj resultObj = new ResultObj();
    	CloudUser user = findByName(account);
    	if(user != null){
    		if(user.getStatus() == 1){
    			if(user.getPassword().equals(pwd)){
        			resultObj.setResult(true);
        			resultObj.setMsg(Constants.USER_THROUGH_CERTIFICATION);
    			}else{
    				resultObj.setResult(false);
        			resultObj.setMsg(Constants.USER_PWD_ERROR);
    			}
    		}else{
    			resultObj.setResult(false);
    			resultObj.setMsg(Constants.USER_DEACTIVATE);
    		}
    	}else{
    		resultObj.setResult(false);
    		resultObj.setMsg(Constants.USER_NOT_EXIST);
    	}
    	return resultObj;
    }
}
