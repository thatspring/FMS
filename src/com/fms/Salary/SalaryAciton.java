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
	private float gMoney;
	
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
	public String QueryEmployee() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		SalaryOperateDB aod=new SalaryOperateDB();
		slist=aod.QuerySalary(salaryinfo);
		gMoney=CalculationMoney(slist);
		System.out.println(gMoney);
		if(slist!=null){
			return "success";
		}else{
			return "error";
		}
	}
	private float CalculationMoney(List<SalaryClass> list) {
		float gmoney=0;
		int i=0;
		for(i=0;i<list.size();i++){
			SalaryClass ac=list.get(i);
			float slevel=ac.getSalarylevel();
			int wtime=ac.getWorkingtime();
			int ltime=ac.getLeavetime();
			gmoney = (wtime-ltime)*slevel;
		}
		return gmoney;
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
