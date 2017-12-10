package com.buliyiren.wehelp.model;

import javax.persistence.Table; 

/**
* Role 实体类
* Sun Dec 10 21:42:31 CST 2017 cennanfang
*/ 
@Table(name = "t_role")
public class Role extends BaseModel {

	/**
	* 
	*/ 
	private Integer id;

	/**
	* 
	*/ 
	private String name;

	/**
	* 
	*/ 
	private String description;

	/**
	* 
	*/ 
	private Boolean available;

	public void setId(Integer id){
		this.id = id;
	}

	public Integer getId(){
		return id;
	}

	public void setName(String name){
		this.name = name;
	}

	public String getName(){
		return name;
	}

	public void setDescription(String description){
		this.description = description;
	}

	public String getDescription(){
		return description;
	}

	public void setAvailable(Boolean available){
		this.available = available;
	}

	public Boolean getAvailable(){
		return available;
	}
}

