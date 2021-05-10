package com.baby.entity;

import java.util.Date;

public class EssayManage {
	private Integer tid;
	private String title;
	private String etype;
	private String ustate;
	private Date etime;
	private Integer mid;
	private Integer eclick;
	private Integer good;
	private Integer collection;
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
	public String getUstate() {
		return ustate;
	}
	public void setUstate(String ustate) {
		this.ustate = ustate;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public Integer getEclick() {
		return eclick;
	}
	public void setEclick(Integer eclick) {
		this.eclick = eclick;
	}
	public Integer getGood() {
		return good;
	}
	public void setGood(Integer good) {
		this.good = good;
	}
	public Integer getCollection() {
		return collection;
	}
	public void setCollection(Integer collection) {
		this.collection = collection;
	}
	public EssayManage(Integer tid, String title, String etype, String ustate, Date etime, Integer mid, Integer eclick,
			Integer good, Integer collection) {
		super();
		this.tid = tid;
		this.title = title;
		this.etype = etype;
		this.ustate = ustate;
		this.etime = etime;
		this.mid = mid;
		this.eclick = eclick;
		this.good = good;
		this.collection = collection;
	}
	public EssayManage() {
		super();
	}
	@Override
	public String toString() {
		return "EssayManage [tid=" + tid + ", title=" + title + ", etype=" + etype + ", ustate=" + ustate + ", etime="
				+ etime + ", mid=" + mid + ", eclick=" + eclick + ", good=" + good + ", collection=" + collection + "]";
	}
	
}	
