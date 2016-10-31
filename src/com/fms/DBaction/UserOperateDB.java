package com.fms.DBaction;

import com.fms.User.UserClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserOperateDB extends DBconnection {
	
	public boolean AddUser(UserClass user) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
		int userId = -1;
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into useri(userId,userNumber,userTruename,userDepartment,";
            sql+="userPost,userPhone,userIphone,userEmail) ";
            sql+="value(null,?,?,?,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, user.getUserNumber());
            st.setString(2, user.getUserTruename());
            st.setString(3, user.getUserDepartment());
            st.setString(4, user.getUserPost());
            st.setString(5, user.getUserPhone());
            st.setString(6, user.getUserIphone());
            st.setString(7, user.getUserEmail());
            st.executeUpdate();
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
        userId=getUserId(user.getUserNumber());
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into userp(userName,userId,userPass) ";
            sql+="value(?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, user.getUserName());
            st.setInt(2, userId);
            st.setString(3, user.getUserPass());
            if(st.executeUpdate()==1){
            	result=true;
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
		return result;
	}
	
    private int getUserId(String userNumber) throws Exception{
        int result=-1;
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select userId from useri where userNumber=?";
            st=conn.prepareStatement(sql);
            st.setString(1,userNumber);
            rs=st.executeQuery();
            if(rs.next()){
                result=rs.getInt("userId");
            }
            rs.close();
            st.close();
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
    
    public boolean CheckUser(UserClass user) throws Exception{
    	boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select userPass from userp where userName=?";
            st = conn.prepareStatement(sql);
            st.setString(1, user.getUserName());
            rs=st.executeQuery();
            if(rs.next()){
            	if(rs.getString("userPass").equals(user.getUserPass())){
            		result = true;
            	}
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return result;
    }

}
