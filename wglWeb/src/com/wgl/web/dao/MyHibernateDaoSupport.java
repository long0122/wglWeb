package com.wgl.web.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
/**
 * 
 * @author wgl
 *
 */
public class MyHibernateDaoSupport extends HibernateDaoSupport {
    
     @Resource(name="sessionFactory")    //为父类HibernateDaoSupport注入sessionFactory的值
    public void setSuperSessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
     }

}