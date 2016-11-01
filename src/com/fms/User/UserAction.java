package com.fms.User;

import com.fms.User.UserClass;
import com.fms.DBaction.UserOperateDB;


public class UserAction {
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
			System.out.println(user.getUserId());
			return "success";
		}else{
			return "error";
		}
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
