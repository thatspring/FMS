package com.fms.Statement;

import java.text.DecimalFormat;

import com.fms.Statement.CstatementClass;
import com.fms.DBaction.StatementOperateDB;
import com.fms.User.UserClass;
import com.fms.DBaction.UserOperateDB;

public class CstatementAction {
	private int userId;
	private int CstatementId;
	private String fsdate;
	private UserClass user;
	private UserClass ruser;
	private CstatementClass cstatement;
	
	public String AddCstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    StatementOperateDB sod = new StatementOperateDB();
		if(sod.AddCstatement(cstatement)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String QueryCstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    StatementOperateDB sod=new StatementOperateDB();
	    cstatement=sod.QueryCstatement(fsdate);
		if(cstatement!=null){
			if(cstatement.getCbin()!=null){
			    Calculateinout(cstatement);
			}
			return "psuccess";
		}else{
			return "error";
		}
	}
	
	public String UpdateCstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);   
	    StatementOperateDB sod=new StatementOperateDB();
		if(sod.UpdateCstatement(cstatement)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String DeleteCstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    StatementOperateDB sod=new StatementOperateDB();
		if(sod.DeleteCstatement(CstatementId)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String GetUserIByUserNumber() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		ruser = uod.QueryUserP(userId);
		StatementOperateDB sod=new StatementOperateDB();
	    cstatement=sod.QueryCstatement(cstatement.getCstatementMonth());
		UserOperateDB uod1 = new UserOperateDB();
		user = uod1.QueryUserIByUserNumber(cstatement.getCstatementUnumber());
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
	public int getCstatementId() {
		return CstatementId;
	}
	public void setCstatementId(int cstatementId) {
		CstatementId = cstatementId;
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
	public CstatementClass getCstatement() {
		return cstatement;
	}
	public void setCstatement(CstatementClass cstatement) {
		this.cstatement = cstatement;
	}

	private CstatementClass Calculateinout(CstatementClass cs)throws Exception{
		int sum1=0,sum2=0,sum3=0,sum4=0,sum5=0;
		DecimalFormat usFormat = new DecimalFormat("###,###");
		sum1+=Integer.valueOf(cs.getCbin().replace(",", "")).intValue();
		sum1-=Integer.valueOf(cs.getCbout().replace(",", "")).intValue();
		cs.setCbinout(usFormat.format(sum1));
		sum2+=Integer.valueOf(cs.getCiin().replace(",", "")).intValue();
		sum2-=Integer.valueOf(cs.getCiout().replace(",", "")).intValue();
		cs.setCiinout(usFormat.format(sum2));
		sum3+=Integer.valueOf(cs.getCrin().replace(",", "")).intValue();
		sum3-=Integer.valueOf(cs.getCrout().replace(",", "")).intValue();
		cs.setCrinout(usFormat.format(sum3));
		sum4+=Integer.valueOf(cs.getCbin().replace(",", "")).intValue();
		sum4+=Integer.valueOf(cs.getCiin().replace(",", "")).intValue();
		sum4+=Integer.valueOf(cs.getCrin().replace(",", "")).intValue();
		cs.setCin(usFormat.format(sum4));
		sum5+=Integer.valueOf(cs.getCbout().replace(",", "")).intValue();
		sum5+=Integer.valueOf(cs.getCiout().replace(",", "")).intValue();
		sum5+=Integer.valueOf(cs.getCrout().replace(",", "")).intValue();
		cs.setCout(usFormat.format(sum5));
		cs.setCinout(usFormat.format(sum4-sum5));
		return cs;
	}
}
