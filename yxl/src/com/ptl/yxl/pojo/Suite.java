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
 * 
mysql> desc t_suite;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| suite_id     | int(11)       | NO   | PRI | NULL    | auto_increment |
| suite_code   | varchar(32)   | NO   |     | NULL    |                |
| title        | varchar(1024) | NO   |     | NULL    |                |
| testnum      | int(11)       | NO   |     | NULL    |                |
| favnum       | int(11)       | NO   |     | NULL    |                |
| create_time  | varchar(32)   | NO   |     | NULL    |                |
| reply_num    | int(11)       | NO   |     | NULL    |                |
| question_num | int(11)       | NO   |     | NULL    |                |
| picture      | varchar(1024) | NO   |     | NULL    |                |
| description  | varchar(2048) | NO   |     | NULL    |                |
| issuggest    | int(11)       | NO   |     | NULL    |                |
| module_code  | varchar(32)   | NO   |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
 * @author Administrator
 *
 */
@Entity
@Table(name="t_suite")
public class Suite implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="suite_id")
    private int suiteId;
    private String suite_code;
    private String title;
    private int testnum;
    private int favnum;
    private String create_time;
    private int reply_num;
    private int question_num;
    private String picture;
    private String description;
    private int issuggest;
    @ManyToOne
    @JoinColumn(referencedColumnName="module_code",name="module_code")
    private Module module;
	public int getSuiteId() {
		return suiteId;
	}
	public void setSuiteId(int suiteId) {
		this.suiteId = suiteId;
	}
	public String getSuite_code() {
		return suite_code;
	}
	public void setSuite_code(String suite_code) {
		this.suite_code = suite_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getTestnum() {
		return testnum;
	}
	public void setTestnum(int testnum) {
		this.testnum = testnum;
	}
	public int getFavnum() {
		return favnum;
	}
	public void setFavnum(int favnum) {
		this.favnum = favnum;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public int getQuestion_num() {
		return question_num;
	}
	public void setQuestion_num(int question_num) {
		this.question_num = question_num;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIssuggest() {
		return issuggest;
	}
	public void setIssuggest(int issuggest) {
		this.issuggest = issuggest;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	@Override
	public String toString() {
		return "Suite [suiteId=" + suiteId + ", suite_code=" + suite_code + ", title=" + title + ", testnum=" + testnum
				+ ", favnum=" + favnum + ", create_time=" + create_time + ", reply_num=" + reply_num + ", question_num="
				+ question_num + ", picture=" + picture + ", description=" + description + ", issuggest=" + issuggest
				+ ", module=" + module + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((create_time == null) ? 0 : create_time.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + favnum;
		result = prime * result + issuggest;
		result = prime * result + ((module == null) ? 0 : module.hashCode());
		result = prime * result + ((picture == null) ? 0 : picture.hashCode());
		result = prime * result + question_num;
		result = prime * result + reply_num;
		result = prime * result + suiteId;
		result = prime * result + ((suite_code == null) ? 0 : suite_code.hashCode());
		result = prime * result + testnum;
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
		Suite other = (Suite) obj;
		if (create_time == null) {
			if (other.create_time != null)
				return false;
		} else if (!create_time.equals(other.create_time))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (favnum != other.favnum)
			return false;
		if (issuggest != other.issuggest)
			return false;
		if (module == null) {
			if (other.module != null)
				return false;
		} else if (!module.equals(other.module))
			return false;
		if (picture == null) {
			if (other.picture != null)
				return false;
		} else if (!picture.equals(other.picture))
			return false;
		if (question_num != other.question_num)
			return false;
		if (reply_num != other.reply_num)
			return false;
		if (suiteId != other.suiteId)
			return false;
		if (suite_code == null) {
			if (other.suite_code != null)
				return false;
		} else if (!suite_code.equals(other.suite_code))
			return false;
		if (testnum != other.testnum)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	
    
}
