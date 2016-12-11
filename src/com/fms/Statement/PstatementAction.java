package com.fms.Statement;

import java.text.DecimalFormat;

import com.fms.Statement.PstatementClass;
import com.fms.DBaction.StatementOperateDB;
import com.fms.User.UserClass;
import com.fms.DBaction.UserOperateDB;


public class PstatementAction {
	private int userId;
	private int PstatementId;
	private String fsdate;
	private UserClass user;
	private UserClass ruser;
	private PstatementClass pstatement;
	private PstatementClass ypstatement;
	
	public String AddPstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    PstatementClass op=new PstatementClass();
	    PstatementClass yp=new PstatementClass();
	    String str=pstatement.getPstatementDate();
	    String str1=str.substring(0,4);
	    StatementOperateDB sod=new StatementOperateDB();
	    yp=sod.QueryPstatementByYear(str1);
	    if(yp.getPstatementYear()!=null){
	    	sod.UpdatePstatement(Annualprofit(yp,op,2));
	    }else{
	    	sod.AddPstatement(Annualprofit(yp,op,1));
	    }
		if(sod.AddPstatement(pstatement)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String QueryPstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    StatementOperateDB sod=new StatementOperateDB();
	    pstatement=sod.QueryPstatementByDate(fsdate);
	    ypstatement=sod.QueryPstatementByYear(fsdate.substring(0,4));
		if(pstatement!=null){
			if(pstatement.getPincome1()!=null){
			    Calculateprofit();
			}
			return "psuccess";
		}else{
			return "error";
		}
	}
	
	public String UpdatePstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);   
	    PstatementClass op=new PstatementClass();
	    PstatementClass yp=new PstatementClass();
	    StatementOperateDB sod=new StatementOperateDB();
	    op=sod.QueryPstatementByDate(fsdate);
	    yp=sod.QueryPstatementByYear(fsdate.substring(0,4));
	    sod.UpdatePstatement(Annualprofit(yp,op,3));
		if(sod.UpdatePstatement(pstatement)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String DeletePstatement() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
	    PstatementClass op=new PstatementClass();
	    PstatementClass yp=new PstatementClass();
	    StatementOperateDB sod=new StatementOperateDB();
	    op=sod.QueryPstatementByDate(fsdate);
	    yp=sod.QueryPstatementByYear(fsdate.substring(0,4));
	    sod.UpdatePstatement(Annualprofit(yp,op,4));
		if(sod.DeletePstatement(PstatementId)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String GetUserIByUserNumber() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		ruser = uod.QueryUserP(userId);
		StatementOperateDB sod=new StatementOperateDB();
	    pstatement=sod.QueryPstatementByDate(pstatement.getPstatementDate());
		UserOperateDB uod1 = new UserOperateDB();
		user = uod1.QueryUserIByUserNumber(pstatement.getPstatementUnumber());
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
	public int getPstatementId() {
		return PstatementId;
	}
	public void setPstatementId(int pstatementId) {
		PstatementId = pstatementId;
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
	public PstatementClass getPstatement() {
		return pstatement;
	}
	public void setPstatement(PstatementClass pstatement) {
		this.pstatement = pstatement;
	}
	public PstatementClass getYpstatement() {
		return ypstatement;
	}
	public void setYpstatement(PstatementClass ypstatement) {
		this.ypstatement = ypstatement;
	}

	private PstatementClass Annualprofit(PstatementClass yp,PstatementClass op,int n) throws Exception{
		PstatementClass rpstatement=new PstatementClass();
		DecimalFormat usFormat = new DecimalFormat("###,###");  
		if(n==1){//初始年利润，第一次插入报表
			pstatement.setPstatementYear(pstatement.getPstatementDate());
			rpstatement.setPincome1(pstatement.getPincome1());
			rpstatement.setPincome2(pstatement.getPincome2());
			rpstatement.setPincome3(pstatement.getPincome3());
			rpstatement.setPcost1(pstatement.getPcost1());
			rpstatement.setPcost2(pstatement.getPcost2());
			rpstatement.setPcost3(pstatement.getPcost3());
			rpstatement.setPcost4(pstatement.getPcost4());
			rpstatement.setPcost5(pstatement.getPcost5());
			rpstatement.setPcost6(pstatement.getPcost6());
			rpstatement.setPcost7(pstatement.getPcost7());
			rpstatement.setPstatementDate(pstatement.getPstatementDate().substring(0,4));
			rpstatement.setPstatementYear(pstatement.getPstatementDate().substring(0,4));
		}else if(n==2){//加上年利润，非第一次次插入报表
			pstatement.setPstatementYear(pstatement.getPstatementDate());
			String ystr,nstr;
			int sum;
			ystr=yp.getPincome1().replace(",", "");
			nstr=pstatement.getPincome1().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPincome1(usFormat.format(sum));
			ystr=yp.getPincome2().replace(",", "");
			nstr=pstatement.getPincome2().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPincome2(usFormat.format(sum));
			ystr=yp.getPincome3().replace(",", "");
			nstr=pstatement.getPincome3().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPincome3(usFormat.format(sum));
			ystr=yp.getPcost1().replace(",", "");
			nstr=pstatement.getPcost1().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost1(usFormat.format(sum));			
			ystr=yp.getPcost2().replace(",", "");
			nstr=pstatement.getPcost2().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost2(usFormat.format(sum));		
			ystr=yp.getPcost3().replace(",", "");
			nstr=pstatement.getPcost3().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost3(usFormat.format(sum));		
			ystr=yp.getPcost4().replace(",", "");
			nstr=pstatement.getPcost4().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost4(usFormat.format(sum));	
			ystr=yp.getPcost5().replace(",", "");
			nstr=pstatement.getPcost5().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost5(usFormat.format(sum));		
			ystr=yp.getPcost6().replace(",", "");
			nstr=pstatement.getPcost6().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost6(usFormat.format(sum));		
			ystr=yp.getPcost7().replace(",", "");
			nstr=pstatement.getPcost7().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue();
			rpstatement.setPcost7(usFormat.format(sum));
			rpstatement.setPstatementId(yp.getPstatementId());
			rpstatement.setPstatementDate(yp.getPstatementDate());
			rpstatement.setPstatementYear(yp.getPstatementDate());
		}else if(n==3){//更新年利润，更新报表
			String ystr,nstr,ostr;
			int sum;
			ystr=yp.getPincome1().replace(",", "");
			nstr=pstatement.getPincome1().replace(",", "");
			ostr=op.getPincome1().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPincome1(usFormat.format(sum));
			ystr=yp.getPincome2().replace(",", "");
			nstr=pstatement.getPincome2().replace(",", "");
			ostr=op.getPincome2().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPincome2(usFormat.format(sum));
			ystr=yp.getPincome3().replace(",", "");
			nstr=pstatement.getPincome3().replace(",", "");
			ostr=op.getPincome3().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPincome3(usFormat.format(sum));
			ystr=yp.getPcost1().replace(",", "");
			nstr=pstatement.getPcost1().replace(",", "");
			ostr=op.getPcost1().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost1(usFormat.format(sum));			
			ystr=yp.getPcost2().replace(",", "");
			nstr=pstatement.getPcost2().replace(",", "");
			ostr=op.getPcost2().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost2(usFormat.format(sum));		
			ystr=yp.getPcost3().replace(",", "");
			nstr=pstatement.getPcost3().replace(",", "");
			ostr=op.getPcost3().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost3(usFormat.format(sum));		
			ystr=yp.getPcost4().replace(",", "");
			nstr=pstatement.getPcost4().replace(",", "");
			ostr=op.getPcost4().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost4(usFormat.format(sum));	
			ystr=yp.getPcost5().replace(",", "");
			nstr=pstatement.getPcost5().replace(",", "");
			ostr=op.getPcost5().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost5(usFormat.format(sum));		
			ystr=yp.getPcost6().replace(",", "");
			nstr=pstatement.getPcost6().replace(",", "");
			ostr=op.getPcost6().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost6(usFormat.format(sum));		
			ystr=yp.getPcost7().replace(",", "");
			nstr=pstatement.getPcost7().replace(",", "");
			ostr=op.getPcost7().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()+Integer.valueOf(nstr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost7(usFormat.format(sum));		
			rpstatement.setPstatementId(yp.getPstatementId());
			rpstatement.setPstatementDate(yp.getPstatementDate());
			rpstatement.setPstatementYear(yp.getPstatementDate());
		}else if(n==4){//减去年利润，删除报表
			String ystr,ostr;
			int sum;
			ystr=yp.getPincome1().replace(",", "");
			ostr=op.getPincome1().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPincome1(usFormat.format(sum));
			ystr=yp.getPincome2().replace(",", "");
			ostr=op.getPincome2().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPincome2(usFormat.format(sum));
			ystr=yp.getPincome3().replace(",", "");
			ostr=op.getPincome3().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPincome3(usFormat.format(sum));
			ystr=yp.getPcost1().replace(",", "");
			ostr=op.getPcost1().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost1(usFormat.format(sum));			
			ystr=yp.getPcost2().replace(",", "");
			ostr=op.getPcost2().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost2(usFormat.format(sum));		
			ystr=yp.getPcost3().replace(",", "");
			ostr=op.getPcost3().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost3(usFormat.format(sum));		
			ystr=yp.getPcost4().replace(",", "");
			ostr=op.getPcost4().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost4(usFormat.format(sum));	
			ystr=yp.getPcost5().replace(",", "");
			ostr=op.getPcost5().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost5(usFormat.format(sum));		
			ystr=yp.getPcost6().replace(",", "");
			ostr=op.getPcost6().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost6(usFormat.format(sum));		
			ystr=yp.getPcost7().replace(",", "");
			ostr=op.getPcost7().replace(",", "");
			sum=Integer.valueOf(ystr).intValue()-Integer.valueOf(ostr).intValue();
			rpstatement.setPcost7(usFormat.format(sum));		
			rpstatement.setPstatementId(yp.getPstatementId());
			rpstatement.setPstatementDate(yp.getPstatementDate());
			rpstatement.setPstatementYear(yp.getPstatementDate());
		}
		return rpstatement;
	}
	
	private void Calculateprofit() throws Exception{
		DecimalFormat usFormat = new DecimalFormat("###,###");
		int sum1=0,sum2=0;
		sum1+=Integer.valueOf(pstatement.getPincome1().replace(",", "")).intValue();
		sum1+=Integer.valueOf(pstatement.getPincome2().replace(",", "")).intValue();
		sum1+=Integer.valueOf(pstatement.getPincome3().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost1().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost2().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost3().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost4().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost5().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost6().replace(",", "")).intValue();
		sum2+=Integer.valueOf(pstatement.getPcost7().replace(",", "")).intValue();
		pstatement.setAPincome(usFormat.format(sum1));
		pstatement.setAPcost(usFormat.format(sum2));
		pstatement.setAincome(usFormat.format(sum1-sum2));
		sum1=0;sum2=0;
		sum1+=Integer.valueOf(ypstatement.getPincome1().replace(",", "")).intValue();
		sum1+=Integer.valueOf(ypstatement.getPincome2().replace(",", "")).intValue();
		sum1+=Integer.valueOf(ypstatement.getPincome3().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost1().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost2().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost3().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost4().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost5().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost6().replace(",", "")).intValue();
		sum2+=Integer.valueOf(ypstatement.getPcost7().replace(",", "")).intValue();
		ypstatement.setAPincome(usFormat.format(sum1));
		ypstatement.setAPcost(usFormat.format(sum2));
		ypstatement.setAincome(usFormat.format(sum1-sum2));
	}
}
