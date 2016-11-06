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

	// 1ǰ̨��������������list����key��ȷ�������Բ��ܷ�װ�ɶ���
	public String submitUserData() {
		// ��ǰ̨�û�ѡ������ݴ������ݿ�?ֱ����list���գ�ǰ̨optionIds[0]֮��ľ��൱��ȡֵ�������Ҵ�ǰ̨������optionId��
		// ͨ��optionId���optionCode��questionCode��score
		String ipAddr = ServletActionContext.getRequest().getRemoteAddr();
		// ���ǰ̨��Ҫ�ó�����Ĳ���suiteCode���ܷ��ˣ��������map��
		Map<String, Object> result = testRecordService.submitUserData(optionIds, ipAddr);
		// ��Ҫ��ǰ̨������{"code":"","msg":"","next":""}�ṹ��JSON����
		// next����Ҫ�����ٴ�����·���Ĳ���// result.action?suiteCode=??&total=300
		message.put("code", 200);
		message.put("msg", "�ɹ�");
		message.put("next",
				"../result/response.action?suiteCode=" + result.get("suiteCode") + "&total=" + result.get("score"));
		for (Integer opt : optionIds) {
			System.out.println(opt);
		}
		return SUCCESS;
	}
	
	public String getFinalResult(){
		Result result=resultService.getRangeByTotal(suiteCode,total);
		//��ֻ�ǽ������ʾҳ����ϲ��ַŵ�����������
		ActionContext.getContext().put("result", result);
		//��������д�뵽t_testor_result����
		
       //select result_code,count(*) from t_testor_result where suite_code=421 group by result_code;
	   Map<String, Object> myResult=testResultService.getAllResult(result);
	   ActionContext.getContext().put("myResult", myResult);
		return SUCCESS;
	}
}
