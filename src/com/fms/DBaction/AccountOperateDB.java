package com.fms.DBaction;

import com.fms.Account.AccountClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountOperateDB {
	
	public boolean AddAccount(AccountClass account) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into account(accountId,accountProject,accountMoney,";
            sql+="accountType,accountDate) value(null,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, account.getAccountProject());
            st.setString(2, account.getAccountMoney());
            st.setString(3, account.getAccountType());
            st.setDate(4, account.getAccountDate());
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
	
	public List<AccountClass> QueryAccount(AccountClass account) throws Exception{
		ArrayList<AccountClass> list = new ArrayList<AccountClass>();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from account where accountDate=?";
            st = conn.prepareStatement(sql);
            st.setDate(1, account.getAccountDate());
            rs=st.executeQuery();
            while(rs.next()){
            	AccountClass t_account = new AccountClass();
            	t_account.setAccountId(rs.getInt("accountId"));
            	t_account.setAccountProject(rs.getString("accountProject"));
            	t_account.setAccountMoney(rs.getString("accountMoney"));
            	t_account.setAccountType(rs.getString("accountType"));
            	t_account.setAccountDate(rs.getDate("accountDate"));
            	list.add(t_account);
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return list;
    }
	
	public boolean DeleteAccount(int accountId) throws Exception{
        boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="delete from account where accountId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, accountId);
            if (st.executeUpdate()==1){
                result=true;
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return result;
    }
}
