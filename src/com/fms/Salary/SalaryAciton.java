package com.fms.Salary;

import com.fms.Salary.SalaryClass;
import com.fms.DBaction.SalaryOperateDB;
import com.fms.DBaction.UserOperateDB;
import com.fms.User.UserClass;

import java.util.List;

public class SalaryAciton {
	private String employeeID;
	private SalaryClass salaryinfo;
	private List<SalaryClass> slist;
	private int userId;
	private UserClass ruser;
	//private float gMoney;
	
	public String AddEmployee() throws Exception{
		UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		SalaryOperateDB aod=new SalaryOperateDB();
		salaryinfo.setGrosspay(CalculationGMoney());
		salaryinfo.setCutpayment(CalculationCMoney());
		salaryinfo.setFsalary(CalculationFMoney());
		//System.out.println(gMoney);
		if(aod.AddEmployee(salaryinfo)){
			return "success";
		}else{
			return "error";
		}
	}
	public String QueryEmployee() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		SalaryOperateDB aod=new SalaryOperateDB();
		slist=aod.QuerySalary(salaryinfo);
		if(slist!=null){
			return "success";
		}else{
			return "error";
		}
	}
	private float CalculationGMoney() {
		float gmoney=0;
		int wt=salaryinfo.getWorkingtime();
		//int lt=salaryinfo.getLeavetime();
		float sl=salaryinfo.getSalarylevel();
		gmoney=wt*sl;
		return gmoney;
	}
	private float CalculationCMoney() {
		float cmoney=0;
		int lt=salaryinfo.getLeavetime();
		float sl=salaryinfo.getSalarylevel();
		cmoney=lt*sl;
		return cmoney;
	}
	private float CalculationFMoney() {
		float fmoney=0;
		int wt=salaryinfo.getWorkingtime();
		int lt=salaryinfo.getLeavetime();
		float sl=salaryinfo.getSalarylevel();
		fmoney=(wt-lt)*sl;
		return fmoney;
	}
	public String DeleteEmployee() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		SalaryOperateDB aod=new SalaryOperateDB();
		if(aod.DeleteSalary(employeeID)){
			return "success";
		}else{
			return "error";
		}
	}
	
	
}
