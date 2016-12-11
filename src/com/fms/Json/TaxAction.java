package com.fms.Json;

import java.text.SimpleDateFormat;

import com.fms.Account.AccountClass;
import com.fms.DBaction.AccountOperateDB;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class TaxAction extends ActionSupport implements ServletRequestAware {

	private String taxClass;
	private String rtax;
	private String moneyTax;
	private String rtaxMoney;
	private String userdate;
	
	private String tax_cf;
	private String moneyTax1;
	private String rtaxMoney1;
	private String userdate1;
	
	
	public String execute0() throws Exception {
		switch (taxClass){
		case "1": rtax="金额*17%";
		          rtaxMoney=String.valueOf(Double.valueOf(moneyTax).doubleValue()*0.17);
				  break;
		case "2": rtax="金额*25%";
		          rtaxMoney=String.valueOf(Double.valueOf(moneyTax).doubleValue()*0.25);
		          break;
		case "3": rtax="金额*5%";
		          rtaxMoney=String.valueOf(Double.valueOf(moneyTax).doubleValue()*0.05);
		          break;
		case "4": rtax="金额*10%";
		          rtaxMoney=String.valueOf(Double.valueOf(moneyTax).doubleValue()*0.10);
		          break;
		case "5": rtax="金额*7%";
		          rtaxMoney=String.valueOf(Double.valueOf(moneyTax).doubleValue()*0.07);
		          break;
		}
		rtaxMoney=rtaxMoney.substring(0,rtaxMoney.indexOf('.')+2);
        return "success";
	}
	public String execute1() throws Exception {
		double rt = new Double(tax_cf.substring(tax_cf.indexOf('*')+1,tax_cf.indexOf('%')))/100;
		rtaxMoney1=String.valueOf(Double.valueOf(moneyTax1).doubleValue()*rt);
		rtaxMoney1=rtaxMoney1.substring(0,rtaxMoney1.indexOf('.')+2);
        return "success";
	}
	public String execute2() throws Exception {
		AccountClass account = new AccountClass();
		switch (taxClass){
		case "1": account.setAccountProject("Tax#01");break;
		case "2": account.setAccountProject("Tax#02");break;
		case "3": account.setAccountProject("Tax#03");break;
		case "4": account.setAccountProject("Tax#04");break;
		case "5": account.setAccountProject("Tax#05");break;
		}
		execute0();
		account.setAccountMoney(rtaxMoney.substring(0,rtaxMoney.indexOf('.')));
		account.setAccountType("out");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date Date=sdf.parse(userdate);   
		java.sql.Date formatDate=new java.sql.Date(Date.getTime()); 
		account.setAccountDate(formatDate);
		AccountOperateDB aod = new AccountOperateDB();
		aod.AddAccount(account);
		return "success";
	}
	public String execute3() throws Exception {
		AccountClass account = new AccountClass();
		account.setAccountProject("Tax#06");
		execute1();
		account.setAccountMoney(rtaxMoney1.substring(0,rtaxMoney1.indexOf('.')));
		account.setAccountType("out");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date Date=sdf.parse(userdate1);   
		java.sql.Date formatDate=new java.sql.Date(Date.getTime()); 
		account.setAccountDate(formatDate);
		AccountOperateDB aod = new AccountOperateDB();
		aod.AddAccount(account);
		return "success";
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
	}
	public String getTaxClass() {
		return taxClass;
	}
	public void setTaxClass(String taxClass) {
		this.taxClass = taxClass;
	}
	public String getRtax() {
		return rtax;
	}
	public void setRtax(String rtax) {
		this.rtax = rtax;
	}
	public String getMoneyTax() {
		return moneyTax;
	}
	public void setMoneyTax(String moneyTax) {
		this.moneyTax = moneyTax;
	}
	public String getRtaxMoney() {
		return rtaxMoney;
	}
	public void setRtaxMoney(String rtaxMoney) {
		this.rtaxMoney = rtaxMoney;
	}
	public String getUserdate() {
		return userdate;
	}
	public void setUserdate(String userdate) {
		this.userdate = userdate;
	}
	
	public String getTax_cf() {
		return tax_cf;
	}
	public void setTax_cf(String tax_cf) {
		this.tax_cf = tax_cf;
	}
	public String getMoneyTax1() {
		return moneyTax1;
	}
	public void setMoneyTax1(String moneyTax1) {
		this.moneyTax1 = moneyTax1;
	}
	public String getRtaxMoney1() {
		return rtaxMoney1;
	}
	public void setRtaxMoney1(String rtaxMoney1) {
		this.rtaxMoney1 = rtaxMoney1;
	}
	public String getUserdate1() {
		return userdate1;
	}
	public void setUserdate1(String userdate1) {
		this.userdate1 = userdate1;
	}
}