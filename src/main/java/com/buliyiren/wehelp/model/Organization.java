package com.buliyiren.wehelp.model;

import javax.persistence.Table; 

/**
* Organization 实体类
* Sun Dec 10 21:42:31 CST 2017 cennanfang
*/ 
@Table(name = "t_organization")
public class Organization extends BaseModel {

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
	private Integer parentId;

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

	public void setParentId(Integer parentId){
		this.parentId = parentId;
	}

	public Integer getParentId(){
		return parentId;
	}

	public void setAvailable(Boolean available){
		this.available = available;
	}

	public Boolean getAvailable(){
		return available;
	}
}

