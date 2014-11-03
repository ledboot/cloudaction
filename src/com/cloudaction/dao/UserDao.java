package com.cloudaction.dao;

import java.util.Map;

import org.springframework.stereotype.Component;

import com.cloudaction.model.CloudUser;

@Component("userDao")
public class UserDao extends BaseDao{
	
	/**
	 * 通过用户id查找
	 * @param id
	 * @return
	 */
    public CloudUser findById(String id){
    	return queryUnique("com.cloudaction.dao.UserDao.selectById", id);
    }
    
    /**
     * 通过用户名查找
     * @param name
     * @return
     */
    public CloudUser findByNamePwd(Map<String, Object> map){
    	return queryUnique("com.cloudaction.dao.UserDao.selectByNamePwd", map);
    }
    
    /**
     * 通过email查找
     * @param mail
     * @return
     */
    public CloudUser findByMailPwd(Map<String, Object> map){
    	return queryUnique("com.cloudaction.dao.UserDao.selectByMailPwd", map);
    }
    
    public CloudUser findByName(Map<String, Object> map){
    	return queryUnique("com.cloudaction.dao.UserDao.selectByName", map);
    }
}
