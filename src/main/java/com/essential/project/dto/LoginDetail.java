package com.essential.project.dto;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class LoginDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private Date lastLoginTime;
	private Date lastLogOutTime;
	


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public Date getLastLogOutTime() {
		return lastLogOutTime;
	}
	public void setLastLogOutTime(Date lastLogOutTime) {
		this.lastLogOutTime = lastLogOutTime;
	}
	
}
