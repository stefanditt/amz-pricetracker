package de.demo;

import java.io.Serializable;

public class Product implements Serializable {
	private Integer asin = null;
	private String prodcutname = null;
	private Double productprice = null;
	
	public Integer getAsin() {
		return asin;
	}
	public void setAsin(Integer asin) {
		this.asin = asin;
	}
	public String getProdcutname() {
		return prodcutname;
	}
	public void setProdcutname(String prodcutname) {
		this.prodcutname = prodcutname;
	}
	public Double getProductprice() {
		return productprice;
	}
	public void setProductprice(Double productprice) {
		this.productprice = productprice;
	}
	
	
}
