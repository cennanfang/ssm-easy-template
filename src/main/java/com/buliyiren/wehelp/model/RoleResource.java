package com.buliyiren.wehelp.model;

import javax.persistence.Table; 

/**
* RoleResource 实体类
* Sun Dec 10 21:42:31 CST 2017 cennanfang
*/ 
@Table(name = "t_role_resource")
public class RoleResource extends BaseModel {

	/**
	* 
	*/ 
	private Integer id;

	/**
	* 
	*/ 
	private Integer roleId;

	/**
	* 
	*/ 
	private Integer resourceId;

	public void setId(Integer id){
		this.id = id;
	}

	public Integer getId(){
		return id;
	}

	public void setRoleId(Integer roleId){
		this.roleId = roleId;
	}

	public Integer getRoleId(){
		return roleId;
	}

	public void setResourceId(Integer resourceId){
		this.resourceId = resourceId;
	}

	public Integer getResourceId(){
		return resourceId;
	}
}

