package com.fms.User;

import com.fms.User.UserClass;
import com.fms.DBaction.UserOperateDB;


public class UserAction {
    private UserClass user;

	public UserClass getUser() {
		return user;
	}

	public void setUser(UserClass user) throws Exception {
        this.user = user;
	}
    
	public String LoginUser() throws Exception{
		UserOperateDB uod=new UserOperateDB();
		if(uod.CheckUser(user)){
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
}
