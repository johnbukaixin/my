package com.ptl.yxl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_result")
public class Result implements Serializable{
//	`RESULT_ID` decimal(10,0) NOT NULL,
//	  `MIN_SCORE` decimal(10,0) NOT NULL,
//	  `MAX_SCORE` decimal(10,0) NOT NULL,
//	  `SUITE_CODE` varchar(32) NOT NULL,
//	  `TITLE` text NOT NULL,
//	  `DESCRIPTION` text NOT NULL,
//	  `RESULT_CODE` varchar(32) NOT NULL,
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="result_id")
	private int resultId;
	@Column(name="min_score")
	private int  minScore;
	@Column(name="max_score")
	private int maxScore;
	@Column(name="suite_code")
	private String suiteCode;
	@Column(name="title")
	private String title;
	@Column(name="description")
	private String description;
	@Column(name="result_code")
	private String resultCode;
	public int getResultId() {
		return resultId;
	}
	public void setResultId(int resultId) {
		this.resultId = resultId;
	}
	public int getMinScore() {
		return minScore;
	}
	public void setMinScore(int minScore) {
		this.minScore = minScore;
	}
	public int getMaxScore() {
		return maxScore;
	}
	public void setMaxScore(int maxScore) {
		this.maxScore = maxScore;
	}
	public String getSuiteCode() {
		return suiteCode;
	}
	public void setSuiteCode(String suiteCode) {
		this.suiteCode = suiteCode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	
	
	
}
