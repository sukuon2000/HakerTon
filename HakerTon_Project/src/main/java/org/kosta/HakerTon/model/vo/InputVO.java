package org.kosta.HakerTon.model.vo;

public class InputVO {
	private String best1;
	private String best2;
	private String best3;
	
	public InputVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public InputVO(String best1, String best2, String best3) {
		super();
		this.best1 = best1;
		this.best2 = best2;
		this.best3 = best3;
	}

	public String getBest1() {
		return best1;
	}

	public void setBest1(String best1) {
		this.best1 = best1;
	}

	public String getBest2() {
		return best2;
	}

	public void setBest2(String best2) {
		this.best2 = best2;
	}

	public String getBest3() {
		return best3;
	}

	public void setBest3(String best3) {
		this.best3 = best3;
	}

	@Override
	public String toString() {
		return "InputVO [best1=" + best1 + ", best2=" + best2 + ", best3=" + best3 + "]";
	}
	
}
