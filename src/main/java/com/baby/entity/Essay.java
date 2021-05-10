package com.baby.entity;

public class Essay {
	private Integer tid;
	private String title;
	private String preread;
	private String etype;
	private String ustate;
	private String ecomtent;
	private String etime;
	private Integer mid;
	private Integer eclick;
	private Integer good;
	private Integer collection;
	private String img;
	private Boolean estate;
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
	public String getEcomtent() {
		return ecomtent;
	}
	public void setEcomtent(String ecomtent) {
		this.ecomtent = ecomtent;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Boolean getEstate() {
		return estate;
	}
	public void setEstate(Boolean estate) {
		this.estate = estate;
	}
	public Essay(Integer tid, String title, String preread, String etype, String ustate, String ecomtent, String etime,
			Integer mid, Integer eclick, Integer good, Integer collection, String img, Boolean estate) {
		super();
		this.tid = tid;
		this.title = title;
		this.preread = preread;
		this.etype = etype;
		this.ustate = ustate;
		this.ecomtent = ecomtent;
		this.etime = etime;
		this.mid = mid;
		this.eclick = eclick;
		this.good = good;
		this.collection = collection;
		this.img = img;
		this.estate = estate;
	}
	public Essay() {
		super();
	}
	@Override
	public String toString() {
		return "Essay [tid=" + tid + ", title=" + title + ", preread=" + preread + ", etype=" + etype + ", ustate="
				+ ustate + ", ecomtent=" + ecomtent + ", etime=" + etime + ", mid=" + mid + ", eclick=" + eclick
				+ ", good=" + good + ", collection=" + collection + ", img=" + img + ", estate=" + estate + "]";
	}
	
}
