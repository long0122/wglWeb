package com.wgl.web.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.wgl.web.dao.interfaces.IMessageDao;
import com.wgl.web.model.Message;

/**
 * @author Warren
 */
@Component("messageDao")
public class MessageDaoImpl extends BasicDaoImpl<Message, String> implements IMessageDao {
	public List<Message> findAllOrderByTime() throws Exception {
		return getHibernateTemplate().find(
				"from Message m order by m.createTime desc");
	}


}
