package com.abr.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*@Entity
@Table(name="tb_user_roles")*/
public class UserRoles {

	private long Id;
	private long userID;
	private long roleId;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	public long getId() {
		return Id;
	}
	public void setId(long id) {
		Id = id;
	}
	
	@Column(name="USER_ID")
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
	
	@Column(name="ROLE_ID")
	public long getRoleId() {
		return roleId;
	}
	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}
	
	
}
