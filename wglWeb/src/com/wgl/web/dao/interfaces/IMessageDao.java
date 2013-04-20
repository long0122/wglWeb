package com.wgl.web.dao.interfaces;

import java.io.Serializable;
import java.util.List;

import com.wgl.web.model.Message;

/**
 * @author Warren
 */
public interface IMessageDao extends IBasicDao<Message, Serializable> {
	public List<Message> findAllOrderByTime()throws Exception;
}
