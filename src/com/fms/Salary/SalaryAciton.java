package com.fms.Salary;

import com.fms.Salary.SalaryClass;
import com.fms.DBaction.SalaryOperateDB;
import com.fms.DBaction.UserOperateDB;
import com.fms.User.UserClass;

import java.util.List;
import java.text.DecimalFormat;

public class SalaryAciton {
	private String employeeID;
	private SalaryClass salaryinfo;
	private List<SalaryClass> slist;
	private int userId;
	private UserClass ruser;
	//private String CMoney;
	
	public String AddEmployee() throws Exception{
		UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		SalaryOperateDB aod=new SalaryOperateDB();
		if(aod.AddEmployee(salaryinfo)){
			return "success";
		}else{
			return "error";
		}
	}
}
