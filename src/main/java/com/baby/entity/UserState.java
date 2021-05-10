package com.baby.entity;

public class UserState {
	private Integer uid;
	private String uname;
	private Boolean usex;
	private String ustate;
	private String portrait;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
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

	public UserState(Integer uid, String uname, Boolean usex, String ustate, String portrait) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.usex = usex;
		this.ustate = ustate;
		this.portrait = portrait;
	}

	public UserState() {
		super();
	}

	@Override
	public String toString() {
		return "UserState [uid=" + uid + ", uname=" + uname + ", usex=" + usex + ", ustate=" + ustate + ", portrait="
				+ portrait + "]";
	}
	

}
