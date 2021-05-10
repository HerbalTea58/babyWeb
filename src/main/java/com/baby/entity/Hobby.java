package com.baby.entity;

import com.mysql.fabric.xmlrpc.base.Data;

public class Hobby {
	private Integer uid;
	private Integer essayTagId;
	private Data BrowseTime;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getEssayTagId() {
		return essayTagId;
	}

	public void setEssayTagId(Integer essayTagId) {
		this.essayTagId = essayTagId;
	}

	public Data getBrowseTime() {
		return BrowseTime;
	}

	public void setBrowseTime(Data browseTime) {
		BrowseTime = browseTime;
	}

	public Hobby(Integer uid, Integer essayTagId, Data browseTime) {
		super();
		this.uid = uid;
		this.essayTagId = essayTagId;
		BrowseTime = browseTime;
	}

	public Hobby() {
		super();
	}

	@Override
	public String toString() {
		return "Hobby [uid=" + uid + ", essayTagId=" + essayTagId + ", BrowseTime=" + BrowseTime + "]";
	}

}
