package com.cloudaction.model;

import java.util.Date;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 * 用户
 * @author viky
 *	@date 2014-09-26
 */
public class CloudUser {

	@XStreamOmitField
	private Integer id;

	@XStreamAlias("userName")
	private String userName;

	@XStreamAlias("userNick")
	private String userNick;

	@XStreamOmitField
	private String password;

	@XStreamAlias("email")
	private String email;

	@XStreamAlias("phone")
	private String phone;

	@XStreamAlias("address")
	private String address;

	@XStreamAlias("status")
	private Integer status;

	@XStreamOmitField
	private Integer failTime;

	@XStreamAlias("createTime")
	private Date createTime;

	@XStreamAlias("lastLoginTime")
	private Date lastLoginTime;

	@XStreamOmitField
	private Date updatePwdTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getFailTime() {
		return failTime;
	}

	public void setFailTime(Integer failTime) {
		this.failTime = failTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Date getUpdatePwdTime() {
		return updatePwdTime;
	}

	public void setUpdatePwdTime(Date updatePwdTime) {
		this.updatePwdTime = updatePwdTime;
	}

}
