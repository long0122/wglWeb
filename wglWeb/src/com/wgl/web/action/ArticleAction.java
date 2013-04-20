package com.wgl.web.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.wgl.web.action.basic.BasicAction;

/**
 * Article Action
 * 
 * @author Warren
 * 
 */
@Component("article")
@Scope("prototype")
public class ArticleAction extends BasicAction {

	/**
	 * to article
	 */
	@Override
	public String execute() throws Exception {
		return "articlePage";
	}


}
