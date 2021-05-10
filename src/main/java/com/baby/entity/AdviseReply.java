package com.baby.entity;

import java.util.Date;

public class AdviseReply {
	private Integer rid;
	private Integer aid;
	private String con;
	private Date date;
	private Integer good;
	private Integer uid;
	private String nickname;
	private String portrait;
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getGood() {
		return good;
	}
	public void setGood(Integer good) {
		this.good = good;
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
	public AdviseReply(Integer rid, Integer aid, String con, Date date, Integer good, Integer uid, String nickname,
			String portrait) {
		super();
		this.rid = rid;
		this.aid = aid;
		this.con = con;
		this.date = date;
		this.good = good;
		this.uid = uid;
		this.nickname = nickname;
		this.portrait = portrait;
	}
	public AdviseReply() {
		super();
	}
	@Override
	public String toString() {
		return "AdviseReply [rid=" + rid + ", aid=" + aid + ", con=" + con + ", date=" + date + ", good=" + good
				+ ", uid=" + uid + ", nickname=" + nickname + ", portrait=" + portrait + "]";
	}
	
	
}
