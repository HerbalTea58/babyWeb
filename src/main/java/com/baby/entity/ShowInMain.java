package com.baby.entity;

public class ShowInMain {
	private Integer tid;
	private String essayType;
	private String title;
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getEssayType() {
		return essayType;
	}
	public void setEssayType(String essayType) {
		this.essayType = essayType;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public ShowInMain(Integer tid, String essayType, String title) {
		super();
		this.tid = tid;
		this.essayType = essayType;
		this.title = title;
	}
	public ShowInMain() {
		super();
	}
	@Override
	public String toString() {
		return "ShowInMain [tid=" + tid + ", essayType=" + essayType + ", title=" + title + "]";
	}
	
	
}
