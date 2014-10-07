package com.cloudaction.dao;

import org.springframework.stereotype.Component;

import com.cloudaction.model.CloudUser;

@Component("userDao")
public class UserDao extends BaseDao{

    public CloudUser findById(int id){
	return this.sessionTemplate.selectOne("com.cloudaction.dao.UserDao.selectById",id);
    }
}
