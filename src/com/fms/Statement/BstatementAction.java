package com.fms.Statement;

import java.text.DecimalFormat;

import com.fms.Statement.BstatementClass;
import com.fms.DBaction.StatementOperateDB;
import com.fms.User.UserClass;
import com.fms.DBaction.UserOperateDB;

public class BstatementAction {
	private int userId;
	private int BstatementId;
	private String fsdate;
	private UserClass user;
	private UserClass ruser;
	private BstatementClass bstatement;
	private BstatementClass ybstatement;
	
	public String AddBstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    StatementOperateDB sod = new StatementOperateDB();
	    BstatementClass yb=new BstatementClass();
	    String str=bstatement.getBstatementMonth();
	    String str1=str.substring(0,4);
	    yb=sod.QueryBstatementByYear(str1);
	    if(yb.getBstatementYear().length()!=0){
	    	if(ybstatement.getBcurrent1().length()!=0){
	    	    sod.UpdateBstatement(Init(ybstatement,yb,2));
	    	    System.out.println(123);
	    	}
	    }
	    else{
	    	if(!ybstatement.getBcurrent1().equals(null)){
	    	    sod.AddBstatement(Init(ybstatement,bstatement,1));
	    	}
	    }
	    if(sod.AddBstatement(bstatement)){
	    	return "success";
	    }else{
	    	return "error";
	    }
	}
	
	public String QueryBstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    if(fsdate.length()==0){
	    	return "psuccess";
	    }
	    else{
	    	StatementOperateDB sod=new StatementOperateDB();
	    	bstatement=sod.QueryBstatementByDate(fsdate);
	    	ybstatement=sod.QueryBstatementByYear(fsdate.substring(0,4));
	    	if(bstatement!=null){
	    		if(bstatement.getBcurrent1()!=null){
	    			CalculateA(bstatement);
	    			CalculateA(ybstatement);
	    		}
	    		return "psuccess";
	    	}else{
	    		return "error";
	    	}
	    }
	}
	
	public String UpdateBstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);   
	    StatementOperateDB sod=new StatementOperateDB();
		if(sod.UpdateBstatement(bstatement)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String DeleteBstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    StatementOperateDB sod=new StatementOperateDB();
		if(sod.DeleteBstatement(BstatementId)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String GetUserIByUserNumber() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		ruser = uod.QueryUserP(userId);
		StatementOperateDB sod=new StatementOperateDB();
	    bstatement=sod.QueryBstatementByDate(bstatement.getBstatementMonth());
		UserOperateDB uod1 = new UserOperateDB();
		user = uod1.QueryUserIByUserNumber(bstatement.getBstatementUnumber());
		if(ruser!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBstatementId() {
		return BstatementId;
	}
	public void setBstatementId(int bstatementId) {
		BstatementId = bstatementId;
	}
	public String getFsdate() {
		return fsdate;
	}
	public void setFsdate(String fsdate) {
		this.fsdate = fsdate;
	}
	public UserClass getUser() {
		return user;
	}
	public void setUser(UserClass user) {
		this.user = user;
	}
	public UserClass getRuser() {
		return ruser;
	}
	public void setRuser(UserClass ruser) {
		this.ruser = ruser;
	}
	public BstatementClass getBstatement() {
		return bstatement;
	}
	public void setBstatement(BstatementClass bstatement) {
		this.bstatement = bstatement;
	}
	public BstatementClass getYbstatement() {
		return ybstatement;
	}
	public void setYbstatement(BstatementClass ybstatement) {
		this.ybstatement = ybstatement;
	}
	
	private BstatementClass Init(BstatementClass bs1, BstatementClass bs2, int n){
		if(n==1){
			bs1.setBstatementUnumber(bs2.getBstatementUnumber());
			bs1.setBstatementMonth(bs2.getBstatementMonth().substring(0,4));
			bs1.setBstatementYear(bs2.getBstatementMonth().substring(0,4));
		}else if(n==2){
			bs1.setBstatementId(bs2.getBstatementId());
			bs1.setBstatementUnumber(bs2.getBstatementUnumber());
			bs1.setBstatementMonth(bs2.getBstatementMonth());
			bs1.setBstatementYear(bs2.getBstatementYear());
		}
		return bs1;
	}
	
	private BstatementClass CalculateA(BstatementClass bs){
		DecimalFormat usFormat = new DecimalFormat("###,###");
		int sum1=0, sum2=0, sum3=0, sum4=0;
		sum1+=Integer.valueOf(bs.getBcurrent1().replace(",", "")).intValue();
		sum1+=Integer.valueOf(bs.getBcurrent2().replace(",", "")).intValue();
		sum1+=Integer.valueOf(bs.getBcurrent3().replace(",", "")).intValue();
		sum2+=Integer.valueOf(bs.getBfixed1().replace(",", "")).intValue();
		sum2+=Integer.valueOf(bs.getBfixed2().replace(",", "")).intValue();
		sum2+=Integer.valueOf(bs.getBfixed3().replace(",", "")).intValue();
		sum3+=Integer.valueOf(bs.getBliabilities1().replace(",", "")).intValue();
		sum3+=Integer.valueOf(bs.getBliabilities2().replace(",", "")).intValue();
		sum3+=Integer.valueOf(bs.getBliabilities3().replace(",", "")).intValue();
		sum4+=Integer.valueOf(bs.getBsurplus1().replace(",", "")).intValue();
		sum4+=Integer.valueOf(bs.getBsurplus2().replace(",", "")).intValue();
		sum4+=Integer.valueOf(bs.getBsurplus3().replace(",", "")).intValue();
		bs.setBAcurrent(usFormat.format(sum1));
		bs.setBAfixed(usFormat.format(sum2));
		bs.setBAcf(usFormat.format(sum1+sum2));
		bs.setBAliabilities(usFormat.format(sum3));
		bs.setBAsurplus(usFormat.format(sum4));
		bs.setBAls(usFormat.format(sum3+sum4));	
		return bs;
	}

}
