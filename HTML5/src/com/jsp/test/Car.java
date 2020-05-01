package com.jsp.test;

public class Car {
	private String company;
	private String model;
	
	public Car(String company, String model) {
		super();
		this.company = company;
		this.model = model;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getModel() {
		return model;
	}
	
	public void setModel(String model) {
		this.model = model;
	}
}
