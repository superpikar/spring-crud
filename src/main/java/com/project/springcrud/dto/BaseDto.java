package com.project.springcrud.dto;

import java.sql.Date;

public class BaseDto {
	private int id;
	private Date registerDate;
	private int registerUserId;
	private char deleted;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public char getDeleted() {
		return deleted;
	}
	public void setDeleted(char deleted) {
		this.deleted = deleted;
	}
	public int getRegisterUserId() {
		return registerUserId;
	}
	public void setRegisterUserId(int registerUserId) {
		this.registerUserId = registerUserId;
	}
}
