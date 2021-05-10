package com.baby.entity;

import java.util.Date;

public class Comment {
	private Integer cid;
	private Integer tid;
	private Integer ruid;
	private String context;
	private Date date;
	private Integer uid;
	private String uname;
	private String runame;
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public Integer getRuid() {
		return ruid;
	}
	public void setRuid(Integer ruid) {
		this.ruid = ruid;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
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
	
	public String getRuname() {
		return runame;
	}
	public void setRuname(String runame) {
		this.runame = runame;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}

	
	
	public Comment() {
		super();
	}
	
	
	public Comment(Integer cid, Integer tid, Integer ruid, String context, Date date, Integer uid, String uname,
			String runame) {
		super();
		this.cid = cid;
		this.tid = tid;
		this.ruid = ruid;
		this.context = context;
		this.date = date;
		this.uid = uid;
		this.uname = uname;
		this.runame = runame;
	}
	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", tid=" + tid + ", ruid=" + ruid + ", context=" + context + ", date=" + date
				+ ", uid=" + uid + ", uname=" + uname + ", runame=" + runame + "]";
	}
	
}
