package com.wgl.web.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.wgl.web.context.GlobalConstants;

public class MyInterceptor implements Interceptor {

	public void destroy() {

	}

	public void init() {

	}

	public String intercept(ActionInvocation invocation) throws Exception {
		// System.out.println("Action执行前插入 代码");
		HttpServletRequest request = ServletActionContext.getRequest();
		
		String metaView = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">";
		metaView +="<meta name=\"description\" content=\"Warren的个人主页，专业从事网站开发、软件开发。\">"; 
		metaView +="<meta name=\"author\" content=\"王冠龙 warren\">";
		metaView +="<meta name=\"keywords\" content=\"王冠龙 warren web j2ee 网站开发 软件开发\">";
		// set meta view
		request.getSession().setAttribute(GlobalConstants.META_VIEW,
				metaView);
		
		// get base path
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path + "/";
		request.getSession().setAttribute(GlobalConstants.SESSION_BASEPATH,
				basePath);

		// 执行目标方法 (调用下一个拦截器, 或执行Action)
		final String res = invocation.invoke();

		// System.out.println("Action执行后插入 代码");
		return res;
	}

}
