package com.ptl.yxl.pojo;

import java.io.Serializable;
import java.util.List;

public class PageBean implements Serializable {

	// ��ǰҳ����
	private Integer num;
	// ÿ����ʾ�ļ�¼��
	private Integer size;
	// �ܼ�¼��
	private Integer rowCount;
	// ��ҳ����
	private Integer pageCount;
	// ��ǰ���ݿ�Ŀ�ʼ����
	private Integer rowStart;
	// �Ƿ�����һҳ
	private Boolean hasPrevious = false;
	// ��һҳ
	private Integer previous;
	// ��һҳ
	private Integer first;
	// �Ƿ�����һҳ
	private Boolean hasNext = false;
	// ��һҳ
	private Integer next;
	// ���һҳ
	private Integer last;
	// ÿҳ��ʾ����ҳ����
	private Integer everyCount = 9;
	// ҳ�뿪ʼ��
	private Integer everyStart;
	// ҳ�������
	private Integer everyEnd;
	// ���β�ѯ�ļ�¼��
	private List list;

	public PageBean(String num, String size, Integer rowCount) {
		this.num = (num == null ? 1 : Integer.parseInt(num));
		this.size = size == null ? 6 : Integer.parseInt(size);
		this.rowCount = rowCount;
		// ��ҳ�����ڲ�ѯ����������/ÿҳ�Ĵ�С����ȡ��
		this.pageCount = (int) Math.ceil((this.rowCount * 1.0 / this.size));
		// ��ǰҳ�������ܴ�����ҳ����
		if (this.num > this.pageCount && this.pageCount >= 1) {
			this.num = this.pageCount;
		}
		// ��ǰ��ѯ���ݿ�Ŀ�ʼ����0,6(����1ҳ-0��*6)�Դ�����
		this.rowStart = (this.num - 1) * this.size;
		// �Ƿ�����һҳ
		if (this.num > 1) {
			this.hasPrevious = true;
			// ��һҳ
			this.previous = this.num - 1;
			// ��һҳ
			this.first = 1;
		}
		// �Ƿ�����һҳ
		if (this.num < this.pageCount) {
			this.hasNext = true;
			this.next = this.num + 1;
			this.last = this.pageCount;
		}
		this.everyStart = (this.num - this.everyCount / 2) >= 1 ? (this.num - this.everyCount / 2) : 1;
		this.everyEnd = (this.everyStart + this.everyCount) <= this.pageCount ? (this.everyCount + this.everyStart)
				: this.pageCount;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public Integer getRowCount() {
		return rowCount;
	}

	public void setRowCount(Integer rowCount) {
		this.rowCount = rowCount;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Integer getRowStart() {
		return rowStart;
	}

	public void setRowStart(Integer rowStart) {
		this.rowStart = rowStart;
	}

	public Boolean getHasPrevious() {
		return hasPrevious;
	}

	public void setHasPrevious(Boolean hasPrevious) {
		this.hasPrevious = hasPrevious;
	}

	public Integer getPrevious() {
		return previous;
	}

	public void setPrevious(Integer previous) {
		this.previous = previous;
	}

	public Integer getFirst() {
		return first;
	}

	public void setFirst(Integer first) {
		this.first = first;
	}

	public Boolean getHasNext() {
		return hasNext;
	}

	public void setHasNext(Boolean hasNext) {
		this.hasNext = hasNext;
	}

	public Integer getNext() {
		return next;
	}

	public void setNext(Integer next) {
		this.next = next;
	}

	public Integer getLast() {
		return last;
	}

	public void setLast(Integer last) {
		this.last = last;
	}

	public Integer getEveryCount() {
		return everyCount;
	}

	public void setEveryCount(Integer everyCount) {
		this.everyCount = everyCount;
	}

	public Integer getEveryStart() {
		return everyStart;
	}

	public void setEveryStart(Integer everyStart) {
		this.everyStart = everyStart;
	}

	public Integer getEveryEnd() {
		return everyEnd;
	}

	public void setEveryEnd(Integer everyEnd) {
		this.everyEnd = everyEnd;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "PageBean [num=" + num + ", size=" + size + ", rowCount=" + rowCount + ", pageCount=" + pageCount
				+ ", rowStart=" + rowStart + ", hasPrevious=" + hasPrevious + ", previous=" + previous + ", first="
				+ first + ", hasNext=" + hasNext + ", next=" + next + ", last=" + last + ", everyCount=" + everyCount
				+ ", everyStart=" + everyStart + ", everyEnd=" + everyEnd + ", list=" + list + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((everyCount == null) ? 0 : everyCount.hashCode());
		result = prime * result + ((everyEnd == null) ? 0 : everyEnd.hashCode());
		result = prime * result + ((everyStart == null) ? 0 : everyStart.hashCode());
		result = prime * result + ((first == null) ? 0 : first.hashCode());
		result = prime * result + ((hasNext == null) ? 0 : hasNext.hashCode());
		result = prime * result + ((hasPrevious == null) ? 0 : hasPrevious.hashCode());
		result = prime * result + ((last == null) ? 0 : last.hashCode());
		result = prime * result + ((list == null) ? 0 : list.hashCode());
		result = prime * result + ((next == null) ? 0 : next.hashCode());
		result = prime * result + ((num == null) ? 0 : num.hashCode());
		result = prime * result + ((pageCount == null) ? 0 : pageCount.hashCode());
		result = prime * result + ((previous == null) ? 0 : previous.hashCode());
		result = prime * result + ((rowCount == null) ? 0 : rowCount.hashCode());
		result = prime * result + ((rowStart == null) ? 0 : rowStart.hashCode());
		result = prime * result + ((size == null) ? 0 : size.hashCode());
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
		PageBean other = (PageBean) obj;
		if (everyCount == null) {
			if (other.everyCount != null)
				return false;
		} else if (!everyCount.equals(other.everyCount))
			return false;
		if (everyEnd == null) {
			if (other.everyEnd != null)
				return false;
		} else if (!everyEnd.equals(other.everyEnd))
			return false;
		if (everyStart == null) {
			if (other.everyStart != null)
				return false;
		} else if (!everyStart.equals(other.everyStart))
			return false;
		if (first == null) {
			if (other.first != null)
				return false;
		} else if (!first.equals(other.first))
			return false;
		if (hasNext == null) {
			if (other.hasNext != null)
				return false;
		} else if (!hasNext.equals(other.hasNext))
			return false;
		if (hasPrevious == null) {
			if (other.hasPrevious != null)
				return false;
		} else if (!hasPrevious.equals(other.hasPrevious))
			return false;
		if (last == null) {
			if (other.last != null)
				return false;
		} else if (!last.equals(other.last))
			return false;
		if (list == null) {
			if (other.list != null)
				return false;
		} else if (!list.equals(other.list))
			return false;
		if (next == null) {
			if (other.next != null)
				return false;
		} else if (!next.equals(other.next))
			return false;
		if (num == null) {
			if (other.num != null)
				return false;
		} else if (!num.equals(other.num))
			return false;
		if (pageCount == null) {
			if (other.pageCount != null)
				return false;
		} else if (!pageCount.equals(other.pageCount))
			return false;
		if (previous == null) {
			if (other.previous != null)
				return false;
		} else if (!previous.equals(other.previous))
			return false;
		if (rowCount == null) {
			if (other.rowCount != null)
				return false;
		} else if (!rowCount.equals(other.rowCount))
			return false;
		if (rowStart == null) {
			if (other.rowStart != null)
				return false;
		} else if (!rowStart.equals(other.rowStart))
			return false;
		if (size == null) {
			if (other.size != null)
				return false;
		} else if (!size.equals(other.size))
			return false;
		return true;
	}

}
