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
    
    public UserClass CheckUser(UserClass user) throws Exception{
    	UserClass r_user = new UserClass();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from userp where userName=?";
            st = conn.prepareStatement(sql);
            st.setString(1, user.getUserName());
            rs=st.executeQuery();
            if(rs.next()){
            	r_user.setUserName(rs.getString("userName"));
            	r_user.setUserId(rs.getInt("userId"));
            	r_user.setUserPass(rs.getString("userPass"));
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return r_user;
    }
    
    public UserClass QueryUserI(int userId) throws Exception{
    	UserClass r_user = new UserClass();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from useri where userId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, userId);
            rs=st.executeQuery();
            if(rs.next()){
            	r_user.setUserId(userId);
            	r_user.setUserNumber(rs.getString("userNumber"));
            	r_user.setUserTruename(rs.getString("userTruename"));
            	r_user.setUserDepartment(rs.getString("userDepartment"));
            	r_user.setUserPost(rs.getString("userPost"));
            	r_user.setUserPhone(rs.getString("userPhone"));
            	r_user.setUserIphone(rs.getString("userIphone"));
            	r_user.setUserEmail(rs.getString("userEmail"));
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return r_user;
    }

	public UserClass QueryUserP(int userId) throws Exception{
		UserClass r_user = new UserClass();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from userp where userId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, userId);
            rs=st.executeQuery();
            if(rs.next()){
            	r_user.setUserName(rs.getString("userName"));
            	r_user.setUserId(userId);
            	r_user.setUserPass(rs.getString("userPass"));
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
		return r_user;
	}

    public int UpdateUserP(UserClass user) throws Exception{
    	int r_userId = 0;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="update userp set userPass=? where userId=?";
            st = conn.prepareStatement(sql);
            st.setString(1, user.getUserPass());
            st.setInt(2, user.getUserId());
            int num=st.executeUpdate();
            if(num>0){
            	r_userId=user.getUserId();
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return r_userId;
    }
    
    public int UpdateUserI(UserClass user) throws Exception{
    	int r_userId = 0;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="update useri set userTruename=?,userDepartment=?,";
        	sql+="userPost=?,userPhone=?,userIphone=?,userEmail=? where userId=?";
            st = conn.prepareStatement(sql);
            st.setString(1, user.getUserTruename());
            st.setString(2, user.getUserDepartment());
            st.setString(3, user.getUserPost());
            st.setString(4, user.getUserPhone());
            st.setString(5, user.getUserIphone());
            st.setString(6, user.getUserEmail());
            st.setInt(7, user.getUserId());
            int num=st.executeUpdate();
            if(num>0){
            	r_userId=user.getUserId();
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return r_userId;
    }
}
