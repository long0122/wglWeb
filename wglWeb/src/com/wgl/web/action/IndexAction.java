package com.wgl.web.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.wgl.web.action.basic.BasicAction;

/**
 * Index Action
 * 
 * @author Warren
 * 
 */
@Component("index")
@Scope("prototype")
public class IndexAction extends BasicAction {

	/**
	 * to index
	 */
	@Override
	public String execute() throws Exception {
		return "indexPage";
	}


}
