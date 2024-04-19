package com.chan.user.model;

public class UserDto {

	private String userId;
	private String password;
	private String email;
	private String userName;
	private int age;
	private char gender;
	public UserDto(String userId, String password, String email, String userName, int age, char gender) {
		super();
		this.userId = userId;
		this.password = password;
		this.email = email;
		this.userName = userName;
		this.age = age;
		this.gender = gender;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	
	@Override
	public String toString() {
		return "UserDto [userId=" + userId + ", password=" + password + ", email=" + email + ", userName=" + userName
				+ ", age=" + age + ", gender=" + gender + "]";
	}
	
	
}
