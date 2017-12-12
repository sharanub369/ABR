package com.abr.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*@Entity
@Table(name="tb_roles")*/
public class Role {

	private long roleID;
	private String roleName;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ROLE_ID")
	public long getRoleID() {
		return roleID;
	}
	public void setRoleID(long roleID) {
		this.roleID = roleID;
	}
	
	@Column(name="ROLE_NAME")
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}
