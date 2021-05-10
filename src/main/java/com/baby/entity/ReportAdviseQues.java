package com.baby.entity;

import java.util.Date;

public class ReportAdviseQues {
	private String rcname;
	private String title;
	private String context;
	private String rname;
	private Date date;
	private String reason;
	public String getRcname() {
		return rcname;
	}
	public void setRcname(String rcname) {
		this.rcname = rcname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public ReportAdviseQues(String rcname, String title, String context, String rname, Date date, String reason) {
		super();
		this.rcname = rcname;
		this.title = title;
		this.context = context;
		this.rname = rname;
		this.date = date;
		this.reason = reason;
	}
	public ReportAdviseQues() {
		super();
	}
	@Override
	public String toString() {
		return "ReportAdviseQues [rcname=" + rcname + ", title=" + title + ", context=" + context + ", rname=" + rname
				+ ", date=" + date + ", reason=" + reason + "]";
	}
	
	
}
