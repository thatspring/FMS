package com.fms.Invoice;

import java.sql.Date;

public class InvoiceClass {
	private int invoiceId;
	private String invoicePayer;
	private String invoiceProject;
	private String invoiceMoney;
	private String invoiceCmoney;
	private String invoiceType;
	private String invoicePayee;
	private int invoiceNumber;
	private String invoiceRemarks;
	private Date invoiceDate;
	private String invoiceUnumber;
	
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	public String getInvoicePayer() {
		return invoicePayer;
	}
	public void setInvoicePayer(String invoicePayer) {
		this.invoicePayer = invoicePayer;
	}
	public String getInvoiceProject() {
		return invoiceProject;
	}
	public void setInvoiceProject(String invoiceProject) {
		this.invoiceProject = invoiceProject;
	}
	public String getInvoiceMoney() {
		return invoiceMoney;
	}
	public void setInvoiceMoney(String invoiceMoney) {
		this.invoiceMoney = invoiceMoney;
	}
	public String getInvoiceCmoney() {
		return invoiceCmoney;
	}
	public void setInvoiceCmoney(String invoiceCmoney) {
		this.invoiceCmoney = invoiceCmoney;
	}
	public String getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(String invoiceType) {
		this.invoiceType = invoiceType;
	}
	public String getInvoicePayee() {
		return invoicePayee;
	}
	public void setInvoicePayee(String invoicePayee) {
		this.invoicePayee = invoicePayee;
	}
	public int getInvoiceNumber() {
		return invoiceNumber;
	}
	public void setInvoiceNumber(int invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}
	public String getInvoiceRemarks() {
		return invoiceRemarks;
	}
	public void setInvoiceRemarks(String invoiceRemarks) {
		this.invoiceRemarks = invoiceRemarks;
	}
	public Date getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public String getInvoiceUnumber() {
		return invoiceUnumber;
	}
	public void setInvoiceUnumber(String invoiceUnumber) {
		this.invoiceUnumber = invoiceUnumber;
	}
}
