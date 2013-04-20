package com.wgl.web.dao.impl;

import org.springframework.stereotype.Component;

import com.wgl.web.dao.interfaces.IGroupDao;
import com.wgl.web.model.Group;

/**
 * @author Warren
 */
@Component("groupDao")
public class GroupDaoImpl extends BasicDaoImpl<Group, String> implements IGroupDao {
	

}
