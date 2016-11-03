package com.ptl.yxl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * `OPTION_ID` decimal(10,0) NOT NULL, `TITLE` text NOT NULL, `SCORE`
 * decimal(10,0) NOT NULL, `NEXT_QUESTION_CODE` varchar(32) DEFAULT NULL,
 * `OPTION_CODE` varchar(32) NOT NULL, `QUESTION_CODE` varchar(32) DEFAULT NULL
 * 
 * @author Administrator
 *
 */
@Entity
@Table(name = "t_option")
public class Option implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "option_id")
	private int optionId;
	@Column(name = "title")
	private String title;
	@Column(name = "score")
	private int score;
	@Column(name = "next_question_code")
	private String nextQuestionCode;
	@Column(name = "option_code")
	private String optionCode;
	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	@ManyToOne
	@JoinColumn(referencedColumnName = "question_code", name = "question_code")
	private Question question;

	public int getOptionId() {
		return optionId;
	}

	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getNextQuestionCode() {
		return nextQuestionCode;
	}

	public void setNextQuestionCode(String nextQuestionCode) {
		this.nextQuestionCode = nextQuestionCode;
	}

	public String getOptionCode() {
		return optionCode;
	}

	public void setOptionCode(String optionCode) {
		this.optionCode = optionCode;
	}

	@Override
	public String toString() {
		return "Option [optionId=" + optionId + ", title=" + title + ", score=" + score + ", nextQuestionCode="
				+ nextQuestionCode + ", optionCode=" + optionCode + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nextQuestionCode == null) ? 0 : nextQuestionCode.hashCode());
		result = prime * result + ((optionCode == null) ? 0 : optionCode.hashCode());
		result = prime * result + optionId;
		result = prime * result + score;
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
		Option other = (Option) obj;
		if (nextQuestionCode == null) {
			if (other.nextQuestionCode != null)
				return false;
		} else if (!nextQuestionCode.equals(other.nextQuestionCode))
			return false;
		if (optionCode == null) {
			if (other.optionCode != null)
				return false;
		} else if (!optionCode.equals(other.optionCode))
			return false;
		if (optionId != other.optionId)
			return false;
		if (score != other.score)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}

	

}
