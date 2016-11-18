package com.fms.Salary;

import java.sql.Date;
public class SalaryClass {
	private String employeeID;   //员工ID
	private String employeeName;  //员工姓名
	private int workingtime;     //工作时长
	private int leavetime;       //请假时长
	private float salarylevel;   //工资/日
	private float grosspay;      //应付工资
	private float cutpayment;    //扣款
	private float fsalary;       //实付工资
	private boolean checkflag;   //领取确认
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
		System.out.println(salarydate);
		return salarydate;
	}
	public void setSalarydate(String salarydate) {
		
		this.salarydate = salarydate;
	}
}
