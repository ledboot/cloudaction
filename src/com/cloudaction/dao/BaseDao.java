package com.cloudaction.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Update;
import org.mybatis.spring.SqlSessionTemplate;

public class BaseDao {
    
    @Resource(name="sqlSession")
    public SqlSessionTemplate sessionTemplate;

    public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
        this.sessionTemplate = sessionTemplate;
    }
    /**
     * 插入数据并返回影响行数
     * @param sqlNameWithNameSpace
     * @param obj
     * @return
     */
    public <T> int insertAndReturnEffectRow (String sqlNameWithNameSpace , T obj){
    	return sessionTemplate.insert(sqlNameWithNameSpace, obj);
    }
    
    /**
     * 更新对象
     * @param sqlNameWithNameSpace
     * @param obj
     * @return
     */
    public <T> int update(String sqlNameWithNameSpace , T obj){
    	return sessionTemplate.update(sqlNameWithNameSpace, obj);
    }
    
    /**
     * 更新对象
     * @param sqlNameWithNameSpace
     * @param params
     * @return
     */
    public <T> int Update(String sqlNameWithNameSpace , Map<String, Object> params){
    	return sessionTemplate.update(sqlNameWithNameSpace, params);
    }
    
    /**
     * 查询对象
     * @param sqlNameWithNameSpace
     * @param params
     * @return
     */
    public <T> T queryUnique(String sqlNameWithNameSpace,Map<String, Object> params){
    	return sessionTemplate.selectOne(sqlNameWithNameSpace, params);
    }
    
    /**
     * 根据id查询对象
     * @param sqlNameWithNameSpace
     * @param id
     * @return
     */
    public <T> T queryUnique(String sqlNameWithNameSpace,String id){
    	return sessionTemplate.selectOne(sqlNameWithNameSpace, id);
    }
    
    /**
     * 查询集合
     * @param sqlNameWithNameSpace
     * @param params
     * @return
     */
    public <T> List<T> queryList(String sqlNameWithNameSpace,Map<String, Object> params){
    	return sessionTemplate.selectList(sqlNameWithNameSpace, params);
    }
}
