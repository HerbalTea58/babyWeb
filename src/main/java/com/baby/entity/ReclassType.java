package com.baby.entity;

import java.util.List;

public class ReclassType {
	private Integer tid;
	private String title;
	private String preread;
	private List<String> tagName;
	
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
	public List<String> getTagName() {
		return tagName;
	}
	public void setTagName(List<String> tagName) {
		this.tagName = tagName;
	}
	public ReclassType(Integer tid, String title, String preread, List<String> tagName) {
		super();
		this.tid = tid;
		this.title = title;
		this.preread = preread;
		this.tagName = tagName;
	}
	public ReclassType() {
		super();
	}
	@Override
	public String toString() {
		return "ReclassType [tid=" + tid + ", title=" + title + ", preread=" + preread + ", tagName=" + tagName + "]";
	}
	
	
}
