package com.baby.entity;

import java.util.Date;

public class Collection {
	private Integer tid;
	private String title;
	private String etype;
	private Date date;
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
	public String getEtype() {
		return etype;
	}
	public void setEtype(String etype) {
		this.etype = etype;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Collection(Integer tid, String title, String etype, Date date) {
		super();
		this.tid = tid;
		this.title = title;
		this.etype = etype;
		this.date = date;
	}
	public Collection() {
		super();
	}
	@Override
	public String toString() {
		return "Collection [tid=" + tid + ", title=" + title + ", etype=" + etype + ", date=" + date + "]";
	}
	
	
}
