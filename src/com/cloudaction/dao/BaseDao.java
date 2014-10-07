package com.cloudaction.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;

public class BaseDao {
    
    @Resource(name="sqlSession")
    public SqlSessionTemplate sessionTemplate;

    public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
        this.sessionTemplate = sessionTemplate;
    }
    
}
