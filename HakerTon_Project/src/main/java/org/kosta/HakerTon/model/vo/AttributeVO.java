package org.kosta.HakerTon.model.vo;

public class AttributeVO {
	private int view;
	private int parking;
	private int dessert;
	private int coffee;
	private int interior;
	private int kindness;
	private int talking;
	private int sMenu;
	private int bread;
	private int beverage;
	private int clean;
	private int picture;
	private int restRoom;
	private int seat;
	private int costEff;
	public AttributeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AttributeVO(int view, int parking, int dessert, int coffee, int interior, int kindness, int talking,
			int sMenu, int bread, int beverage, int clean, int picture, int restRoom, int seat, int costEff) {
		super();
		this.view = view;
		this.parking = parking;
		this.dessert = dessert;
		this.coffee = coffee;
		this.interior = interior;
		this.kindness = kindness;
		this.talking = talking;
		this.sMenu = sMenu;
		this.bread = bread;
		this.beverage = beverage;
		this.clean = clean;
		this.picture = picture;
		this.restRoom = restRoom;
		this.seat = seat;
		this.costEff = costEff;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getParking() {
		return parking;
	}
	public void setParking(int parking) {
		this.parking = parking;
	}
	public int getDessert() {
		return dessert;
	}
	public void setDessert(int dessert) {
		this.dessert = dessert;
	}
	public int getCoffee() {
		return coffee;
	}
	public void setCoffee(int coffee) {
		this.coffee = coffee;
	}
	public int getInterior() {
		return interior;
	}
	public void setInterior(int interior) {
		this.interior = interior;
	}
	public int getKindness() {
		return kindness;
	}
	public void setKindness(int kindness) {
		this.kindness = kindness;
	}
	public int getTalking() {
		return talking;
	}
	public void setTalking(int talking) {
		this.talking = talking;
	}
	public int getsMenu() {
		return sMenu;
	}
	public void setsMenu(int sMenu) {
		this.sMenu = sMenu;
	}
	public int getBread() {
		return bread;
	}
	public void setBread(int bread) {
		this.bread = bread;
	}
	public int getBeverage() {
		return beverage;
	}
	public void setBeverage(int beverage) {
		this.beverage = beverage;
	}
	public int getClean() {
		return clean;
	}
	public void setClean(int clean) {
		this.clean = clean;
	}
	public int getPicture() {
		return picture;
	}
	public void setPicture(int picture) {
		this.picture = picture;
	}
	public int getRestRoom() {
		return restRoom;
	}
	public void setRestRoom(int restRoom) {
		this.restRoom = restRoom;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getCostEff() {
		return costEff;
	}
	public void setCostEff(int costEff) {
		this.costEff = costEff;
	}
	@Override
	public String toString() {
		return "AttributeVO [view=" + view + ", parking=" + parking + ", dessert=" + dessert + ", coffee=" + coffee
				+ ", interior=" + interior + ", kindness=" + kindness + ", talking=" + talking + ", sMenu=" + sMenu
				+ ", bread=" + bread + ", beverage=" + beverage + ", clean=" + clean + ", picture=" + picture
				+ ", restRoom=" + restRoom + ", seat=" + seat + ", costEff=" + costEff + "]";
	}
	
}
