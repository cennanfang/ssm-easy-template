package com.buliyiren.wehelp.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_user")
public class User {
    /**
     * 唯一标识
     */
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 用户名（用户账号）唯一
     */
    @Column(name = "user_name")
    private String userName;

    /**
     * 账号密码
     */
    private String password;

    /**
     * 盐
     */
    private String salt;

    /**
     * 是否锁定0否，1是
     */
    private String locked;

    /**
     * 用户昵称
     */
    @Column(name = "nick_name")
    private String nickName;

    /**
     * 性别 男：0 女：1
     */
    private String sex;

    /**
     * 年龄
     */
    private Integer age;

    /**
     * 电话号码
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 地址
     */
    private String address;

    /**
     * 注册日期
     */
    @Column(name = "register_date")
    private Date registerDate;

    /**
     * 获取唯一标识
     *
     * @return id - 唯一标识
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置唯一标识
     *
     * @param id 唯一标识
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取用户名（用户账号）唯一
     *
     * @return user_name - 用户名（用户账号）唯一
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置用户名（用户账号）唯一
     *
     * @param userName 用户名（用户账号）唯一
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * 获取账号密码
     *
     * @return password - 账号密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置账号密码
     *
     * @param password 账号密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取盐
     *
     * @return salt - 盐
     */
    public String getSalt() {
        return salt;
    }

    /**
     * 设置盐
     *
     * @param salt 盐
     */
    public void setSalt(String salt) {
        this.salt = salt;
    }

    /**
     * 获取是否锁定0否，1是
     *
     * @return locked - 是否锁定0否，1是
     */
    public String getLocked() {
        return locked;
    }

    /**
     * 设置是否锁定0否，1是
     *
     * @param locked 是否锁定0否，1是
     */
    public void setLocked(String locked) {
        this.locked = locked;
    }

    /**
     * 获取用户昵称
     *
     * @return nick_name - 用户昵称
     */
    public String getNickName() {
        return nickName;
    }

    /**
     * 设置用户昵称
     *
     * @param nickName 用户昵称
     */
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    /**
     * 获取性别 男：0 女：1
     *
     * @return sex - 性别 男：0 女：1
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置性别 男：0 女：1
     *
     * @param sex 性别 男：0 女：1
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取年龄
     *
     * @return age - 年龄
     */
    public Integer getAge() {
        return age;
    }

    /**
     * 设置年龄
     *
     * @param age 年龄
     */
    public void setAge(Integer age) {
        this.age = age;
    }

    /**
     * 获取电话号码
     *
     * @return phone - 电话号码
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置电话号码
     *
     * @param phone 电话号码
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取邮箱
     *
     * @return email - 邮箱
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置邮箱
     *
     * @param email 邮箱
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取地址
     *
     * @return address - 地址
     */
    public String getAddress() {
        return address;
    }

    /**
     * 设置地址
     *
     * @param address 地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取注册日期
     *
     * @return register_date - 注册日期
     */
    public Date getRegisterDate() {
        return registerDate;
    }

    /**
     * 设置注册日期
     *
     * @param registerDate 注册日期
     */
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }
}