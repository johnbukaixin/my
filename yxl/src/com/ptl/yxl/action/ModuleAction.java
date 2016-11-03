package com.ptl.yxl.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ptl.yxl.pojo.Module;
import com.ptl.yxl.service.impl.ModuleServiceImpl;

@Controller
@Scope("prototype")
public class ModuleAction extends ActionSupport {
	@Autowired
	private ModuleServiceImpl imoduleService;

	public String getAllModules() {
		List<Module> moduleList = imoduleService.getAllModules();
		ActionContext actionContext = ActionContext.getContext();
//		Map<String, Object> map = (Map<String, Object>) actionContext.get("request");
//		map.put("moduleList", moduleList);
		actionContext.put("moduleList", moduleList);
		return SUCCESS;
	}
}
