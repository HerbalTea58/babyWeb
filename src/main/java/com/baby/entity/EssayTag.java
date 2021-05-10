package com.baby.entity;

public class EssayTag {
	private Integer tagId;
	private String tagName;
	public Integer getTagId() {
		return tagId;
	}
	public void setTagId(Integer tagId) {
		this.tagId = tagId;
	}
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	public EssayTag(Integer tagId, String tagName) {
		super();
		this.tagId = tagId;
		this.tagName = tagName;
	}
	public EssayTag() {
		super();
	}
	@Override
	public String toString() {
		return "EssayTag [tagId=" + tagId + ", tagName=" + tagName + "]";
	}

	
}
