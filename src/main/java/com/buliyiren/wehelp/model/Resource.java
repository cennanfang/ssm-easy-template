package com.buliyiren.wehelp.model;

import javax.persistence.Table; 

/**
* Resource 实体类
* Sun Dec 10 21:42:31 CST 2017 cennanfang
*/ 
@Table(name = "t_resource")
public class Resource extends BaseModel {

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
	private String type;

	/**
	* 
	*/ 
	private String url;

	/**
	* 
	*/ 
	private Integer parentId;

	/**
	* 
	*/ 
	private String permission;

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

	public void setType(String type){
		this.type = type;
	}

	public String getType(){
		return type;
	}

	public void setUrl(String url){
		this.url = url;
	}

	public String getUrl(){
		return url;
	}

	public void setParentId(Integer parentId){
		this.parentId = parentId;
	}

	public Integer getParentId(){
		return parentId;
	}

	public void setPermission(String permission){
		this.permission = permission;
	}

	public String getPermission(){
		return permission;
	}

	public void setAvailable(Boolean available){
		this.available = available;
	}

	public Boolean getAvailable(){
		return available;
	}
}

