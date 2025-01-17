package com.enjoytrip.attraction.dto;

public class AttractionDescDto {

	int contentId;
	String homepage;
	String overview;
	String telname;

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	public String getTelname() {
		return telname;
	}

	public void setTelname(String telname) {
		this.telname = telname;
	}

	@Override
	public String toString() {
		return "AttractionDescDto [contentId=" + contentId + ", homepage=" + homepage + ", overview=" + overview
				+ ", telname=" + telname + "]";
	}

}
