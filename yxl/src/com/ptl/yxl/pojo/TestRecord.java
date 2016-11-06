package com.ptl.yxl.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowire;
@Entity
@Table(name="t_testor_record")
public class TestRecord implements Serializable{

//	`TR_ID` decimal(10,0) NOT NULL,
//	  `SUITE_CODE` varchar(32) NOT NULL,
//	  `QUESTION_CODE` varchar(32) NOT NULL,
//	  `OPTION_CODE` varchar(32) NOT NULL,
//	  `SCORE` decimal(4,0) NOT NULL,
//	  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
//	  `USER_ID` varchar(32) NOT NULL,
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="tr_id")
	private int trId;
	@Column(name="suite_code")
	private String suiteCode;
	@Column(name="option_code")
	private String optionCode;
	@Column(name="question_code")
	private String questionCode;
	@Column(name="score")
	private int score;
	@Column(name="create_time")
	private Date createTime;
	@Column(name="user_id")
	private String userId;
	
	public String getOptionCode() {
		return optionCode;
	}
	public void setOptionCode(String optionCode) {
		this.optionCode = optionCode;
	}
	public int getTrId() {
		return trId;
	}
	public void setTrId(int trId) {
		this.trId = trId;
	}
	public String getSuiteCode() {
		return suiteCode;
	}
	public void setSuiteCode(String suiteCode) {
		this.suiteCode = suiteCode;
	}
	public String getQuestionCode() {
		return questionCode;
	}
	public void setQuestionCode(String questionCode) {
		this.questionCode = questionCode;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
