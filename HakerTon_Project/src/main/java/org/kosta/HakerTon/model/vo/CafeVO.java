package org.kosta.HakerTon.model.vo;

public class CafeVO {
	private String cafeName;
	private String url;
	private String imgPath;
	
	public CafeVO() {
		super();
	}
	
	public String getCafeName() {
		return cafeName;
	}
	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public CafeVO(String cafeName, String url, String imgPath) {
		super();
		this.cafeName = cafeName;
		this.url = url;
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "CafeVO [cafeName=" + cafeName + ", url=" + url + ", imgPath=" + imgPath + "]";
	}
	
}
