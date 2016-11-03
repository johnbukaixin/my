package com.ptl.yxl.pojo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="t_question")
public class Question implements Serializable{
//	QUESTION_ID int
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="question_id")
	private int questionId;
//	TITLE String
	@Column(name="title")
	private String title;
//	ORDER_NO int
	@Column(name="order_no")
	private int orderNo;
//	SUITE_CODE String
	@ManyToOne
	@JoinColumn(referencedColumnName="suite_code",name="suite_code")
	private Suite suite;
//	QUESTION_CODE String 
	@Column(name="question_code")
	private String questionCode;
	//mapedby指对方引用当前类的对象属性名称 ，fetch设置即时加载一般是延迟加载懒加载
	@OneToMany(fetch=FetchType.EAGER,targetEntity=Option.class)
	//name是别人的，referenceColumenName是自己的
	@JoinColumns({
		@JoinColumn(referencedColumnName="question_code",name="question_code")
	})
	private List<Option> optionList;
	
	
	public List<Option> getOptionList() {
		return optionList;
	}
	public void setOptionList(List<Option> optionList) {
		this.optionList = optionList;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public Suite getSuite() {
		return suite;
	}
	public void setSuite(Suite suite) {
		this.suite = suite;
	}
	public String getQuestionCode() {
		return questionCode;
	}
	public void setQuestionCode(String questionCode) {
		this.questionCode = questionCode;
	}
	@Override
	public String toString() {
		return "Question [questionId=" + questionId + ", title=" + title + ", orderNo=" + orderNo + ", suite=" + suite
				+ ", questionCode=" + questionCode + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + orderNo;
		result = prime * result + ((questionCode == null) ? 0 : questionCode.hashCode());
		result = prime * result + questionId;
		result = prime * result + ((suite == null) ? 0 : suite.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Question other = (Question) obj;
		if (orderNo != other.orderNo)
			return false;
		if (questionCode == null) {
			if (other.questionCode != null)
				return false;
		} else if (!questionCode.equals(other.questionCode))
			return false;
		if (questionId != other.questionId)
			return false;
		if (suite == null) {
			if (other.suite != null)
				return false;
		} else if (!suite.equals(other.suite))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	
	
}
