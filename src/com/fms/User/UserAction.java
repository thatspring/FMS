package com.fms.User;

import com.fms.User.UserClass;
import com.fms.DBaction.UserOperateDB;


public class UserAction {
	private int userId;
    private UserClass user;
    private UserClass ruser;
    
	public String LoginUser() throws Exception{
		UserOperateDB uod=new UserOperateDB();
		ruser = uod.CheckUser(user);
		if(ruser.getUserPass().equals(user.getUserPass())){
			return "success";
		}else{
			return "error";
		}
	}

	public String RegisterUser() throws Exception{
		UserOperateDB uod=new UserOperateDB();
		if(uod.AddUser(user)){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String GetUserI() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		ruser = uod.QueryUserI(userId);
		if(ruser!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String GetUserP() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		ruser = uod.QueryUserP(userId);
		if(ruser!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String ChangeUserI() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		userId=uod.UpdateUserI(ruser);
		ruser = uod.QueryUserI(userId);
		if(userId!=0){
			return "success";
		}else{
			return "error";
		}
	}
	
	public String ChangeUserP() throws Exception{
		UserOperateDB uod = new UserOperateDB();
		userId=uod.UpdateUserP(ruser);
		ruser = uod.QueryUserI(userId);
		if(userId!=0){
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

	public UserClass getUser() {
		return user;
	}
	public void setUser(UserClass user){
        this.user = user;
	}

	public UserClass getRuser() {
		return ruser;
	}
	public void setRuser(UserClass ruser) {
		this.ruser = ruser;
	}
	
}
