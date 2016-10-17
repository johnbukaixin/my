package com.ptl.bean;

public class Area {
    private Integer areaid;
    private String name;
    private Integer parentid;
    private Integer vieworder;
	@Override
	public String toString() {
		return "Area [areaid=" + areaid + ", name=" + name + ", parentid=" + parentid + ", vieworder=" + vieworder + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((areaid == null) ? 0 : areaid.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((parentid == null) ? 0 : parentid.hashCode());
		result = prime * result + ((vieworder == null) ? 0 : vieworder.hashCode());
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
		Area other = (Area) obj;
		if (areaid == null) {
			if (other.areaid != null)
				return false;
		} else if (!areaid.equals(other.areaid))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (parentid == null) {
			if (other.parentid != null)
				return false;
		} else if (!parentid.equals(other.parentid))
			return false;
		if (vieworder == null) {
			if (other.vieworder != null)
				return false;
		} else if (!vieworder.equals(other.vieworder))
			return false;
		return true;
	}
	public Integer getAreaid() {
		return areaid;
	}
	public void setAreaid(Integer areaid) {
		this.areaid = areaid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public Integer getVieworder() {
		return vieworder;
	}
	public void setVieworder(Integer vieworder) {
		this.vieworder = vieworder;
	}
	public Area() {
		
	}
	public Area(Integer areaid, String name, Integer parentid, Integer vieworder) {
		super();
		this.areaid = areaid;
		this.name = name;
		this.parentid = parentid;
		this.vieworder = vieworder;
	}
       
}
