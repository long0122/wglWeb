package com.wgl.web.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.wgl.web.action.basic.BasicAction;
import com.wgl.web.dao.interfaces.IMessageDao;
import com.wgl.web.model.Message;

/**
 * Index Action
 * 
 * @author Warren
 * 
 */
@Component("message")
@Scope("prototype")
public class MessageAction extends BasicAction {
	private IMessageDao messageDao;
	private List<Message> msgList;
	private String id;
	@Override
	public String execute() throws Exception {
		msgList = messageDao.findAllOrderByTime();
		return "messagePage";
	}
	
	public String del() throws Exception {
		if(id==null) return null;
		messageDao.deleteById(Integer.parseInt(id));
		return "messageAction";
	}
	
	public IMessageDao getMessageDao() {
		return messageDao;
	}
	@Resource
	public void setMessageDao(IMessageDao messageDao) {
		this.messageDao = messageDao;
	}
	public List<Message> getMsgList() {
		return msgList;
	}
	public void setMsgList(List<Message> msgList) {
		this.msgList = msgList;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


}
