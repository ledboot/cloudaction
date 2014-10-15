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
    public CloudUser findById(int id){
    	return this.sessionTemplate.selectOne("com.cloudaction.dao.UserDao.selectById",id);
    }
    
    /**
     * 通过用户名查找
     * @param name
     * @return
     */
    public CloudUser findByName(Map<String, Object> map){
    	return this.sessionTemplate.selectOne("com.cloudaction.dao.UserDao.selectByName", map);
    }
    
    /**
     * 通过email查找
     * @param mail
     * @return
     */
    public CloudUser findByMail(Map<String, Object> map){
    	return this.sessionTemplate.selectOne("com.cloudaction.dao.UserDao.selectByMail", map);
    }
}
