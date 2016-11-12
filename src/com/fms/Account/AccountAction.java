package com.fms.Account;


import com.fms.Account.AccountClass;
import com.fms.DBaction.AccountOperateDB;
import com.fms.DBaction.UserOperateDB;
import com.fms.User.UserClass;

import java.util.List;
import java.text.DecimalFormat;


public class AccountAction {
	private int accountId;
	private AccountClass account;
	private List<AccountClass> alist;
	private int userId;
	private UserClass ruser;
	private String CMoney;
	
	public String AddAccount() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		AccountOperateDB aod=new AccountOperateDB();
		if(aod.AddAccount(account)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String QueryAccount() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		AccountOperateDB aod=new AccountOperateDB();
		alist=aod.QueryAccount(account);
		CMoney=CalculationMoney(alist);
		System.out.println(CMoney);
		if(alist!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String DeleteAccount() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		AccountOperateDB aod=new AccountOperateDB();
		if(aod.DeleteAccount(accountId)){
			return "success";
		}else{
			return "error";
		}
	}
	
	
	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public AccountClass getAccount() {
		return account;
	}
	public void setAccount(AccountClass account) {
		this.account = account;
	}
	public List<AccountClass> getAlist() {
		return alist;
	}
	public void setAlist(List<AccountClass> alist) {
		this.alist = alist;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public UserClass getRuser() {
		return ruser;
	}
	public void setRuser(UserClass ruser) {
		this.ruser = ruser;
	}
	
	public String getCMoney() {
		return CMoney;
	}
	public void setCMoney(String cMoney) {
		CMoney = cMoney;
	}

	private String CalculationMoney(List<AccountClass> list){
		int i=0;
		int sum=0;
		for(i=0;i<list.size();i++){
			AccountClass ac=list.get(i);
			String str=ac.getAccountMoney();
			str=str.replace(",","");
			int n_str=0;
			n_str=Integer.valueOf(str).intValue();
			if(ac.getAccountType().equals("out")){
				sum=sum-n_str;
			}else{
				sum=sum+n_str;
			}
		}
		DecimalFormat usFormat = new DecimalFormat("###,###");  
		return usFormat.format(sum);
	}
}
