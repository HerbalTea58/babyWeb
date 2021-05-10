package com.baby.entity;

import java.util.Date;

public class Advise {
	private Integer aid;
	private String atitle;
	private String acontent;
	private Integer etypeId;
	private Integer astateId;
	private Integer bestRid;
	private Date date;
	private Integer uid;
	private String nickname;
	private String portrait;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public Integer getEtypeId() {
		return etypeId;
	}
	public void setEtypeId(Integer etypeId) {
		this.etypeId = etypeId;
	}
	public Integer getAstateId() {
		return astateId;
	}
	public void setAstateId(Integer astateId) {
		this.astateId = astateId;
	}
	public Integer getBestRid() {
		return bestRid;
	}
	public void setBestRid(Integer bestRid) {
		this.bestRid = bestRid;
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
	public Advise(Integer aid, String atitle, String acontent, Integer etypeId, Integer astateId, Integer bestRid,
			Date date, Integer uid) {
		super();
		this.aid = aid;
		this.atitle = atitle;
		this.acontent = acontent;
		this.etypeId = etypeId;
		this.astateId = astateId;
		this.bestRid = bestRid;
		this.date = date;
		this.uid = uid;
	}
	public Advise(Integer aid, String atitle, String acontent, Integer etypeId, Integer astateId, Integer bestRid,
			Date date, Integer uid, String nickname, String portrait) {
		super();
		this.aid = aid;
		this.atitle = atitle;
		this.acontent = acontent;
		this.etypeId = etypeId;
		this.astateId = astateId;
		this.bestRid = bestRid;
		this.date = date;
		this.uid = uid;
		this.nickname = nickname;
		this.portrait = portrait;
	}
	public Advise() {
		super();
	}
	@Override
	public String toString() {
		return "Advise [aid=" + aid + ", atitle=" + atitle + ", acontent=" + acontent + ", etypeId=" + etypeId
				+ ", astateId=" + astateId + ", bestRid=" + bestRid + ", date=" + date + ", uid=" + uid + ", nickname="
				+ nickname + ", portrait=" + portrait + "]";
	}

}
