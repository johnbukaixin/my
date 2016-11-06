package com.ptl.yxl.pojo;

import java.io.Serializable;

public class FinalResult implements Serializable {
	private long resultId;
	private String title;
	private String suiteCode;
	private String resultCode;
	private int num;

	public long getResultId() {
		return resultId;
	}

	public void setResultId(long resultId) {
		this.resultId = resultId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSuiteCode() {
		return suiteCode;
	}

	public void setSuiteCode(String suiteCode) {
		this.suiteCode = suiteCode;
	}

	public String getResultCode() {
		return resultCode;
	}

	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "FinalResult [resultId=" + resultId + ", title=" + title + ", suiteCode=" + suiteCode + ", resultCode="
				+ resultCode + ", num=" + num + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + num;
		result = prime * result + ((resultCode == null) ? 0 : resultCode.hashCode());
		result = prime * result + (int) (resultId ^ (resultId >>> 32));
		result = prime * result + ((suiteCode == null) ? 0 : suiteCode.hashCode());
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
		FinalResult other = (FinalResult) obj;
		if (num != other.num)
			return false;
		if (resultCode == null) {
			if (other.resultCode != null)
				return false;
		} else if (!resultCode.equals(other.resultCode))
			return false;
		if (resultId != other.resultId)
			return false;
		if (suiteCode == null) {
			if (other.suiteCode != null)
				return false;
		} else if (!suiteCode.equals(other.suiteCode))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}

}
