package com.buliyiren.wehelp.model;

import javax.persistence.Table; 

/**
* UserRole 实体类
* Sun Dec 10 21:42:31 CST 2017 cennanfang
*/ 
@Table(name = "t_user_role")
public class UserRole extends BaseModel {

	/**
	* 
	*/ 
	private Integer id;

	/**
	* 
	*/ 
	private Integer userId;

	/**
	* 
	*/ 
	private Integer roleId;

	public void setId(Integer id){
		this.id = id;
	}

	public Integer getId(){
		return id;
	}

	public void setUserId(Integer userId){
		this.userId = userId;
	}

	public Integer getUserId(){
		return userId;
	}

	public void setRoleId(Integer roleId){
		this.roleId = roleId;
	}

	public Integer getRoleId(){
		return roleId;
	}
}

