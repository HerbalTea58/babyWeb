package com.baby.entity;

public class User {
	private Integer uid;
	private Integer upassword;
	private String nickname;
	private String uphone;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getUpassword() {
		return upassword;
	}

	public void setUpassword(Integer upassword) {
		this.upassword = upassword;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public User(Integer uid, Integer upassword, String nickname, String uphone) {
		super();
		this.uid = uid;
		this.upassword = upassword;
		this.nickname = nickname;
		this.uphone = uphone;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", upassword=" + upassword + ", nickname=" + nickname + ", uphone=" + uphone + "]";
	}

}
