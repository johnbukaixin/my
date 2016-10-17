package com.ptl.pc.member.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

/**
 * 成员信息管理
 * @author Administrator
 *
 */
public class Member implements Serializable {
	//id
	private String id;
	//真实姓名
	private String realname;
	//性别
	private String gender;
	//出生年月
	private Date birthday;
	//民族
	private String nation;
	//身份证号
	private String idnumber;
	//政治面貌
	private String political;
	//家庭住址
	private String address;
	//婚姻状况	
	private String marriage;
	//个人简介
	private String introduction;
	//类型:教师，学生
	private String type;
	//createtime
	private Date createtime;
	//updatetime
	private Date updatetime;

	{
		//创建对象的时候默认初始化ID 创建时间  修改时间
		this.id = UUID.randomUUID().toString();
		this.createtime = new Date();
		this.updatetime = new Date();
	}

	public Member() {

	}

	public Member(String realname, String gender, Date birthday, String nation, String idnumber, String political, String address, String marriage, String introduction, String type) {
		this.realname = realname;
		this.gender = gender;
		this.birthday = birthday;
		this.nation = nation;
		this.idnumber = idnumber;
		this.political = political;
		this.address = address;
		this.marriage = marriage;
		this.introduction = introduction;
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getPolitical() {
		return political;
	}

	public void setPolitical(String political) {
		this.political = political;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((birthday == null) ? 0 : birthday.hashCode());
		result = prime * result + ((createtime == null) ? 0 : createtime.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((idnumber == null) ? 0 : idnumber.hashCode());
		result = prime * result + ((introduction == null) ? 0 : introduction.hashCode());
		result = prime * result + ((marriage == null) ? 0 : marriage.hashCode());
		result = prime * result + ((nation == null) ? 0 : nation.hashCode());
		result = prime * result + ((political == null) ? 0 : political.hashCode());
		result = prime * result + ((realname == null) ? 0 : realname.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		result = prime * result + ((updatetime == null) ? 0 : updatetime.hashCode());
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
		Member other = (Member) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (birthday == null) {
			if (other.birthday != null)
				return false;
		} else if (!birthday.equals(other.birthday))
			return false;
		if (createtime == null) {
			if (other.createtime != null)
				return false;
		} else if (!createtime.equals(other.createtime))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (idnumber == null) {
			if (other.idnumber != null)
				return false;
		} else if (!idnumber.equals(other.idnumber))
			return false;
		if (introduction == null) {
			if (other.introduction != null)
				return false;
		} else if (!introduction.equals(other.introduction))
			return false;
		if (marriage == null) {
			if (other.marriage != null)
				return false;
		} else if (!marriage.equals(other.marriage))
			return false;
		if (nation == null) {
			if (other.nation != null)
				return false;
		} else if (!nation.equals(other.nation))
			return false;
		if (political == null) {
			if (other.political != null)
				return false;
		} else if (!political.equals(other.political))
			return false;
		if (realname == null) {
			if (other.realname != null)
				return false;
		} else if (!realname.equals(other.realname))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		if (updatetime == null) {
			if (other.updatetime != null)
				return false;
		} else if (!updatetime.equals(other.updatetime))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", realname=" + realname + ", gender=" + gender + ", birthday=" + birthday + ", nation=" + nation + ", idnumber=" + idnumber + ", political=" + political + ", address=" + address + ", marriage=" + marriage + ", introduction=" + introduction + ", type=" + type + ", createtime=" + createtime + ", updatetime=" + updatetime + "]";
	}

}
