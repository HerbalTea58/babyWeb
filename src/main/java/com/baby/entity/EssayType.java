package com.baby.entity;

public class EssayType {
	private Integer etypeId;
	private String etype;

	public Integer getEtypeId() {
		return etypeId;
	}

	public void setEtypeId(Integer etypeId) {
		this.etypeId = etypeId;
	}

	public String getEtype() {
		return etype;
	}

	public void setEtype(String etype) {
		this.etype = etype;
	}

	public EssayType(Integer etypeId, String etype) {
		super();
		this.etypeId = etypeId;
		this.etype = etype;
	}

	public EssayType() {
		super();
	}

	@Override
	public String toString() {
		return "EssayType [etypeId=" + etypeId + ", etype=" + etype + "]";
	}

}
