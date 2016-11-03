package com.ptl.yxl.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * mysql> desc t_module;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| module_id   | int(11)     | NO   | PRI | NULL    | auto_increment |
| module_code | varchar(32) | NO   |     | NULL    |                |
| module_name | varchar(32) | NO   |     | NULL    |                |
| isnew       | int(11)     | NO   |     | 0       |                |
+-------------+-------------+------+-----+---------+----------------+
4 rows in set (0.10 sec)
 * 
 * @author Administrator
 *
 */
@Entity
@Table(name="t_module")
public class Module implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="module_id")
	private int moduleId;
	@Column(name="module_code")
	private String moduleCode;
	@Column(name="module_name")
	private String moduleName;
	@Column(name="isnew")
	private int isNew;

	public int getModuleId() {
		return moduleId;
	}

	public void setModuleId(int moduleId) {
		this.moduleId = moduleId;
	}

	public String getModuleCode() {
		return moduleCode;
	}

	public void setModuleCode(String moduleCode) {
		this.moduleCode = moduleCode;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public int getIsNew() {
		return isNew;
	}

	public void setIsNew(int isNew) {
		this.isNew = isNew;
	}

	@Override
	public String toString() {
		return "Module [moduleId=" + moduleId + ", moduleCode=" + moduleCode + ", moduleName=" + moduleName + ", isNew="
				+ isNew + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + isNew;
		result = prime * result + ((moduleCode == null) ? 0 : moduleCode.hashCode());
		result = prime * result + moduleId;
		result = prime * result + ((moduleName == null) ? 0 : moduleName.hashCode());
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
		Module other = (Module) obj;
		if (isNew != other.isNew)
			return false;
		if (moduleCode == null) {
			if (other.moduleCode != null)
				return false;
		} else if (!moduleCode.equals(other.moduleCode))
			return false;
		if (moduleId != other.moduleId)
			return false;
		if (moduleName == null) {
			if (other.moduleName != null)
				return false;
		} else if (!moduleName.equals(other.moduleName))
			return false;
		return true;
	}

}
