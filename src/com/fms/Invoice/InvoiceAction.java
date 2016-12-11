package com.fms.Invoice;

import com.fms.Invoice.InvoiceClass;
import com.fms.User.UserClass;
import com.fms.DBaction.InvoiceOperateDB;
import com.fms.DBaction.UserOperateDB;

import java.util.List;

public class InvoiceAction {
	private int userId;
	private int invoiceId;
	private UserClass user;
	private UserClass ruser;
	private InvoiceClass invoice;
	private List<InvoiceClass> ilist;
	
	public String AddInvoice() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		InvoiceOperateDB iod=new InvoiceOperateDB();
		if(iod.AddInvoice(invoice)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String QueryInvoiceByDate() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		InvoiceOperateDB iod=new InvoiceOperateDB();
		ilist=iod.QueryInvoiceByDate(invoice);
		if(ilist!=null){
			return "success";
		}else{
			return "error";
		}
	}

	public String QueryInvoiceById() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		InvoiceOperateDB iod=new InvoiceOperateDB();
		invoice=iod.QueryInvoiceById(invoiceId);
		if(invoice!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String UpdateInvoice() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		InvoiceOperateDB iod=new InvoiceOperateDB();
		if(iod.UpdateInvoice(invoice)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String DeleteInvoice() throws Exception{
        UserOperateDB auod = new UserOperateDB();
	    ruser = auod.QueryUserP(userId);
		InvoiceOperateDB iod=new InvoiceOperateDB();
		if(iod.DeleteInvoice(invoiceId)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String GetUserIByUserNumber() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		ruser = uod.QueryUserP(userId);
		InvoiceOperateDB iod = new InvoiceOperateDB();
		invoice = iod.QueryInvoiceById(invoiceId);
		UserOperateDB uod1 = new UserOperateDB();
		user = uod1.QueryUserIByUserNumber(invoice.getInvoiceUnumber());
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
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
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
	public InvoiceClass getInvoice() {
		return invoice;
	}
	public void setInvoice(InvoiceClass invoice) {
		this.invoice = invoice;
	}
	public List<InvoiceClass> getIlist() {
		return ilist;
	}
	public void setIlist(List<InvoiceClass> ilist) {
		this.ilist = ilist;
	}
}
