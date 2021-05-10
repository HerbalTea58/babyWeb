package com.baby.entity;

public class UserStateType {
	private Integer ustateId;
	private String ustate;

	public Integer getUstateId() {
		return ustateId;
	}

	public void setUstateId(Integer ustateId) {
		this.ustateId = ustateId;
	}

	public String getUstate() {
		return ustate;
	}

	public void setUstate(String ustate) {
		this.ustate = ustate;
	}

	public UserStateType(Integer ustateId, String ustate) {
		super();
		this.ustateId = ustateId;
		this.ustate = ustate;
	}

	public UserStateType() {
		super();
	}

	@Override
	public String toString() {
		return "UserStateType [ustateId=" + ustateId + ", ustate=" + ustate + "]";
	}

}
