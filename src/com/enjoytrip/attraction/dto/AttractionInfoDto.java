package com.enjoytrip.attraction.dto;

public class AttractionInfoDto {

	int contentId;
	int contentTypeId;
	String title;
	String addr1;
	String addr2;
	String zipcode;
	String tel;
	String firstImage;
	String firstImage2;
	int readcount;
	int sidoCode;
	int gugunCode;
	double latitude;
	double longitude;
	String mlevel;

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public int getContentTypeId() {
		return contentTypeId;
	}

	public void setContentTypeId(int conentTypeId) {
		this.contentTypeId = conentTypeId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFirstImage() {
		return firstImage;
	}

	public void setFirstImage(String firstImage) {
		this.firstImage = firstImage;
	}

	public String getFirstImage2() {
		return firstImage2;
	}

	public void setFirstImage2(String firstImage2) {
		this.firstImage2 = firstImage2;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getSidoCode() {
		return sidoCode;
	}

	public void setSidoCode(int sidoCode) {
		this.sidoCode = sidoCode;
	}

	public int getGugunCode() {
		return gugunCode;
	}

	public void setGugunCode(int gugunCode) {
		this.gugunCode = gugunCode;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public String getMlevel() {
		return mlevel;
	}

	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}

	@Override
	public String toString() {
		return "AttractionInfoDto [contentId=" + contentId + ", conentTypeId=" + contentTypeId + ", title=" + title
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + ", tel=" + tel + ", firstImage="
				+ firstImage + ", firstImage2=" + firstImage2 + ", readcount=" + readcount + ", sidoCode=" + sidoCode
				+ ", gugunCode=" + gugunCode + ", latitude=" + latitude + ", longitude=" + longitude + ", mlevel="
				+ mlevel + "]";
	}

}
