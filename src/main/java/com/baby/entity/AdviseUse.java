package com.baby.entity;

import java.util.Date;

public class AdviseUse {
	private Integer aid;
	private String atitle;
	private String etype;
	private String ustate;
	private Date date;
	private Integer uid;
	private String nickname;
	private String portrait;
	private Integer renum;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getEtype() {
		return etype;
	}
	public void setEtype(String etype) {
		this.etype = etype;
	}
	public String getUstate() {
		return ustate;
	}
	public void setUstate(String ustate) {
		this.ustate = ustate;
	}

	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPortrait() {
		return portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	public Integer getRenum() {
		return renum;
	}
	public void setRenum(Integer renum) {
		this.renum = renum;
	}

	public AdviseUse(Integer aid, String atitle, String etype, String ustate, Date date, Integer uid, String nickname,
			String portrait, Integer renum) {
		super();
		this.aid = aid;
		this.atitle = atitle;
		this.etype = etype;
		this.ustate = ustate;
		this.date = date;
		this.uid = uid;
		this.nickname = nickname;
		this.portrait = portrait;
		this.renum = renum;
	}
	public AdviseUse() {
		super();
	}
	@Override
	public String toString() {
		return "AdviseUse [aid=" + aid + ", atitle=" + atitle + ", etype=" + etype + ", ustate=" + ustate + ", date="
				+ date + ", uid=" + uid + ", nickname=" + nickname + ", portrait=" + portrait + ", renum=" + renum
				+ "]";
	}

	
	
}
