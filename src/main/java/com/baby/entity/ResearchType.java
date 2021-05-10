package com.baby.entity;

import java.util.Date;

public class ResearchType {
	private Integer tid;
	private String title;
	private String preread;
	private Date etime;
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPreread() {
		return preread;
	}
	public void setPreread(String preread) {
		this.preread = preread;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	
	public ResearchType() {
		super();
	}
	public ResearchType(Integer tid, String title, String preread, Date etime) {
		super();
		this.tid = tid;
		this.title = title;
		this.preread = preread;
		this.etime = etime;
	}
	@Override
	public String toString() {
		return "ResearchType [tid=" + tid + ", title=" + title + ", preread=" + preread + ", etime=" + etime + "]";
	}
	
	
}
