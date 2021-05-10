package com.baby.entity;

import java.util.Date;

public class AllUser {
	private Integer uid;
	private Integer upassword;
	private String nickname;
	private String uphone;
	private String email;
	private String uname;
	private Boolean usex;
	private String ustate;
	private String portrait;
	private Date birth;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Boolean getUsex() {
		return usex;
	}
	public void setUsex(Boolean usex) {
		this.usex = usex;
	}
	
	public String getUstate() {
		return ustate;
	}
	public void setUstate(String ustate) {
		this.ustate = ustate;
	}
	public String getPortrait() {
		return portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	
	public AllUser(Integer uid, Integer upassword, String nickname, String uphone, String email, String uname,
			Boolean usex, String ustate, String portrait, Date birth) {
		super();
		this.uid = uid;
		this.upassword = upassword;
		this.nickname = nickname;
		this.uphone = uphone;
		this.email = email;
		this.uname = uname;
		this.usex = usex;
		this.ustate = ustate;
		this.portrait = portrait;
		this.birth = birth;
	}
	public AllUser() {
		super();
	}
	@Override
	public String toString() {
		return "AllUser [uid=" + uid + ", upassword=" + upassword + ", nickname=" + nickname + ", uphone=" + uphone
				+ ", email=" + email + ", uname=" + uname + ", usex=" + usex + ", ustate=" + ustate + ", portrait="
				+ portrait + ", birth=" + birth + "]";
	}
	
	
}
