package com.ptl.yxl.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ptl.yxl.pojo.Result;
import com.ptl.yxl.service.ResultService;
import com.ptl.yxl.service.TestRecordService;
import com.ptl.yxl.service.TestResultService;

@Controller
public class ResultAction extends ActionSupport {
	@Autowired
	private TestRecordService testRecordService;
	@Autowired
	private ResultService resultService;	
	@Autowired
	private TestResultService testResultService;
	private String suiteCode;
	private int total;
	
	public String getSuiteCode() {
		return suiteCode;
	}
	public void setSuiteCode(String suiteCode) {
		this.suiteCode = suiteCode;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	private Map<String, Object> message;

	public Map<String, Object> getMessage() {
		return message;
	}

	public void setMessage(Map<String, Object> message) {
		this.message = message;
	}

	private List<Integer> optionIds;

	public TestRecordService getResultService() {
		return testRecordService;
	}

	public void setResultService(TestRecordService testRecordService) {
		this.testRecordService = testRecordService;
	}

	public List<Integer> getOptionIds() {
		return optionIds;
	}

	public void setOptionIds(List<Integer> optionIds) {
		this.optionIds = optionIds;
	}

	// 1前台传过来的数据是list类型key不确定，所以不能封装成对象
	public String submitUserData() {
		// 将前台用户选择的数据传到数据库?直接用list接收，前台optionIds[0]之类的就相当于取值，现在我从前台传过来optionId了
		// 通过optionId获得optionCode，questionCode，score
		String ipAddr = ServletActionContext.getRequest().getRemoteAddr();
		// 获得前台需要得出结果的参数suiteCode和总分了，放在这个map里
		Map<String, Object> result = testRecordService.submitUserData(optionIds, ipAddr);
		// 需要向前台传返回{"code":"","msg":"","next":""}结构的JSON数据
		// next就需要传入再次请求路径的参数// result.action?suiteCode=??&total=300
		message.put("code", 200);
		message.put("msg", "成功");
		message.put("next",
				"../result/response.action?suiteCode=" + result.get("suiteCode") + "&total=" + result.get("score"));
		for (Integer opt : optionIds) {
			System.out.println(opt);
		}
		return SUCCESS;
	}
	
	public String getFinalResult(){
		Result result=resultService.getRangeByTotal(suiteCode,total);
		//这只是将最后显示页面的上部分放到作用域中了
		ActionContext.getContext().put("result", result);
		//将这个结果写入到t_testor_result表中
		
       //select result_code,count(*) from t_testor_result where suite_code=421 group by result_code;
	   Map<String, Object> myResult=testResultService.getAllResult(result);
	   ActionContext.getContext().put("myResult", myResult);
		return SUCCESS;
	}
}
