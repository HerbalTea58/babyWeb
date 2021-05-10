package com.baby.entity;

import java.util.Date;

public class AdviseCla {
	private Integer aid;
	private String atitle;
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
	public AdviseCla(Integer aid, String atitle, Date date, Integer uid, String nickname, String portrait,
			Integer renum) {
		super();
		this.aid = aid;
		this.atitle = atitle;
		this.date = date;
		this.uid = uid;
		this.nickname = nickname;
		this.portrait = portrait;
		this.renum = renum;
	}
	public AdviseCla() {
		super();
	}
	@Override
	public String toString() {
		return "AdviseCla [aid=" + aid + ", atitle=" + atitle + ", date=" + date + ", uid=" + uid + ", nickname="
				+ nickname + ", portrait=" + portrait + ", renum=" + renum + "]";
	}
	
}
