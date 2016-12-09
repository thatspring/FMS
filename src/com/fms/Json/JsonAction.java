package com.fms.Json;

import com.fms.Account.AccountClass;
import com.fms.DBaction.AccountOperateDB;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class JsonAction extends ActionSupport implements ServletRequestAware {
	private Map<String, String> seasonMap1 = new LinkedHashMap<String, String>();
	private Map<String, String> seasonMap2 = new LinkedHashMap<String, String>();
	private Map<String, String> seasonMap3 = new LinkedHashMap<String, String>();
	/*Parameter fromJquery*/
	private String userMonth;
	
	public String execute() throws Exception {
		Calendar c = Calendar.getInstance();
		c.set(Calendar.YEAR, Integer.valueOf(userMonth.substring(0,4)).intValue()); 
		c.set(Calendar.MONTH,Integer.valueOf(userMonth.substring(5,7)).intValue()-1);
		int days=c.getActualMaximum(Calendar.DAY_OF_MONTH);
		String date=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		List<AccountClass> alist=new ArrayList<AccountClass>();
		AccountClass account=new AccountClass();
        for(int i=1;i<=days;i++){
    		AccountOperateDB aod=new AccountOperateDB();
    		if(i<10){
    			String s= String.valueOf(i);
    			date=userMonth+"-0"+s;
    		}else{
    			String s= String.valueOf(i);
    			date=userMonth+'-'+s;
    		}
    		java.util.Date Date=sdf.parse(date);   
    		java.sql.Date formatDate=new java.sql.Date(Date.getTime()); 
    		account.setAccountDate(formatDate);	
    		alist=aod.QueryAccount(account);
    		String[] rs=new String[3];
    		rs=Calculation(alist);
    		seasonMap1.put(date,rs[1]);//收入
    		seasonMap2.put(date,rs[2]);//指出
    		seasonMap3.put(date,rs[0]);//净收入
        }
        return "success";
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
	}
	public Map<String, String> getSeasonMap1() {
		return seasonMap1;
	}
	public void setSeasonMap1(Map<String, String> seasonMap1) {
		this.seasonMap1 = seasonMap1;
	}
	public Map<String, String> getSeasonMap2() {
		return seasonMap2;
	}
	public void setSeasonMap2(Map<String, String> seasonMap2) {
		this.seasonMap2 = seasonMap2;
	}
	public Map<String, String> getSeasonMap3() {
		return seasonMap3;
	}
	public void setSeasonMap3(Map<String, String> seasonMap3) {
		this.seasonMap3 = seasonMap3;
	}

	public String getUserMonth() {
		return userMonth;
	}
	public void setUserMonth(String userMonth) {
		this.userMonth = userMonth;
	}
    
	private String[] Calculation(List<AccountClass> list){
		String[] rs=new String[3];
		int i=0;
		int sum1=0;//净
		int sum2=0;//收入
		int sum3=0;//支出
		for(i=0;i<list.size();i++){
			AccountClass ac=list.get(i);
			String str=ac.getAccountMoney();
			str=str.replace(",","");
			int n_str=0;
			n_str=Integer.valueOf(str).intValue();
			if(ac.getAccountType().equals("out")){
				sum1=sum1-n_str;
				sum3=sum3-n_str;
			}else{
				sum1=sum1+n_str;
				sum2=sum2+n_str;
			}
		}
		rs[0]=String.valueOf(sum1);
		rs[1]=String.valueOf(sum2);
		rs[2]=String.valueOf(sum3);
		return rs;
	}
	
}