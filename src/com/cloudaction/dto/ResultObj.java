package com.cloudaction.dto;

import java.io.Serializable;

public class ResultObj implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Boolean result = false;
	private int errorCode = 0;
	private String msg ="";
	public Boolean getResult() {
		return result;
	}
	public void setResult(Boolean result) {
		this.result = result;
	}
	public int getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(int errorCode) {
		this.errorCode = errorCode;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
