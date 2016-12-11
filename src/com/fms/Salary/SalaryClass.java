package com.fms.Salary;

<<<<<<< HEAD
import java.sql.Date;
public class SalaryClass {
	private String employeeID;   //Ô±¹¤ID
	private String employeeName;  //Ô±¹¤ÐÕÃû
	private int workingtime;     //¹¤×÷Ê±³¤
	private int leavetime;       //Çë¼ÙÊ±³¤
	private float salarylevel;   //¹¤×Ê/ÈÕ
	private float grosspay;      //Ó¦¸¶¹¤×Ê
	private float cutpayment;    //¿Û¿î
	private float fsalary;       //Êµ¸¶¹¤×Ê
	private boolean checkflag;   //ÁìÈ¡È·ÈÏ
=======
public class SalaryClass {
	private String employeeID;   //å‘˜å·¥ID
	private String employeeName;  //å‘˜å·¥å§“å
	private int workingtime;     //å·¥ä½œæ—¶é•¿
	private int leavetime;       //è¯·å‡æ—¶é•¿
	private float salarylevel;   //å·¥èµ„/æ—¥
	private float grosspay;      //åº”ä»˜å·¥èµ„
	private float cutpayment;    //æ‰£æ¬¾
	private float fsalary;       //å®žä»˜å·¥èµ„
	private boolean checkflag;   //é¢†å–ç¡®è®¤
>>>>>>> fec6686ec6592ad84b2104f42534eea343a86152
	private String salarydate;
	
	public String getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(String employeeID) {
		this.employeeID = employeeID;
	}
	
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	
	public int getWorkingtime() {
		return workingtime;
	}
	public void setWorkingtime(int workingtime) {
		this.workingtime = workingtime;
	}
	
	public int getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(int leavetime) {
		this.leavetime = leavetime;
	}
	
	public float getSalarylevel() {
		return salarylevel;
	}
	public void setSalarylevel(float salarylevel) {
		this.salarylevel = salarylevel;
	}
	
	public float getGrosspay() {
		return grosspay;
	}
	public void setGrosspay(float grosspay) {
		this.grosspay = grosspay;
	}
	
	public float getCutpayment() {
		return cutpayment;
	}
	public void setCutpayment(float cutpayment) {
		this.cutpayment = cutpayment;
	}
	
	public float getFsalary() {
		return fsalary;
	}
	public void setFsalary(float fsalary) {
		this.fsalary = fsalary;
	}
	
	public boolean getCheckflag() {
		return checkflag;
	}
	public void setCheckflag(boolean checkflag) {
		this.checkflag = checkflag;
	}
	public String getSalarydate() {
<<<<<<< HEAD
		System.out.println(salarydate);
		return salarydate;
	}
	public void setSalarydate(String salarydate) {
		
		this.salarydate = salarydate;
	}
}
=======
		return salarydate;
	}
	public void setSalarydate(String salarydate) {
		this.salarydate = salarydate;
	}
}
>>>>>>> fec6686ec6592ad84b2104f42534eea343a86152
