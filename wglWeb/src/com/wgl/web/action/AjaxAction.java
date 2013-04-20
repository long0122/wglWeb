package com.wgl.web.action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.wgl.web.action.basic.BasicAction;
import com.wgl.web.dao.interfaces.IMessageDao;
import com.wgl.web.model.Message;
import com.wgl.web.vo.MessageInfo;

/**
 * Ajax
 * 
 * @author Warren
 * 
 */
@Component("ajax")
@Scope("prototype")
public class AjaxAction extends BasicAction {
	private IMessageDao messageDao;
	private String messageName;
	private String messageContent;
	private String result;
	public String doMessage() throws Exception {
		String str = "";
		Message entity = new Message();
		entity.setAuthor(messageName);
		entity.setContent(messageContent);
		entity.setCreateTime(new Timestamp(new Date().getTime()));
		messageDao.add(entity);
		str = "ok";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		JSONObject jo = JSONObject.fromObject(map);
		this.result = jo.toString();
		return SUCCESS;
	}

	public String getMessageName() {
		return messageName;
	}

	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public IMessageDao getMessageDao() {
		return messageDao;
	}
	@Resource
	public void setMessageDao(IMessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
