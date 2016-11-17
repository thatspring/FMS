package com.fms.DBaction;

import com.fms.Statement.PstatementClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StatementOperateDB {
	
	public boolean AddPstatement(PstatementClass pstatement) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into pstatement(PstatementId,Pincome1,Pincome2,Pincome3,";
        	sql+="Pcost1,Pcost2,Pcost3,Pcost4,Pcost5,Pcost6,Pcost7,PstatementDate,";
        	sql+="PstatementUnumber,PstatementYear) value(null,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, pstatement.getPincome1());
            st.setString(2, pstatement.getPincome2());
            st.setString(3, pstatement.getPincome3());
            st.setString(4, pstatement.getPcost1());
            st.setString(5, pstatement.getPcost2());
            st.setString(6, pstatement.getPcost3());
            st.setString(7, pstatement.getPcost4());
            st.setString(8, pstatement.getPcost5());
            st.setString(9, pstatement.getPcost6());
            st.setString(10, pstatement.getPcost7());
            st.setString(11, pstatement.getPstatementDate());
            st.setString(12, pstatement.getPstatementUnumber());
            st.setString(13, pstatement.getPstatementYear());
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
	
	public boolean UpdatePstatement(PstatementClass pstatement) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="update pstatement set Pincome1=?,Pincome2=?,Pincome3=?,";
        	sql+="Pcost1=?,Pcost2=?,Pcost3=?,Pcost4=?,Pcost5=?,Pcost6=?,Pcost7=?,";
        	sql+="PstatementDate=?,PstatementUnumber=?,PstatementYear=? ";
        	sql+="where PstatementId=?";
            st = conn.prepareStatement(sql);
            st.setString(1, pstatement.getPincome1());
            st.setString(2, pstatement.getPincome2());
            st.setString(3, pstatement.getPincome3());
            st.setString(4, pstatement.getPcost1());
            st.setString(5, pstatement.getPcost2());
            st.setString(6, pstatement.getPcost3());
            st.setString(7, pstatement.getPcost4());
            st.setString(8, pstatement.getPcost5());
            st.setString(9, pstatement.getPcost6());
            st.setString(10, pstatement.getPcost7());
            st.setString(11, pstatement.getPstatementDate());
            st.setString(12, pstatement.getPstatementUnumber());
            st.setString(13, pstatement.getPstatementYear());
            st.setInt(14, pstatement.getPstatementId());
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

	public boolean DeletePstatement(int pstatementId) throws Exception{
        boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="delete from pstatement where PstatementId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, pstatementId);
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
	
	public PstatementClass QueryPstatementByYear(String str) throws Exception{
        String sql="select * from pstatement where PstatementYear=?";
        return QueryPstatement(str,sql);
    }
	
	public PstatementClass QueryPstatementByDate(String str) throws Exception{
		String sql="select * from pstatement where PstatementDate=?";
    	return QueryPstatement(str,sql);
    }
	
	private PstatementClass QueryPstatement(String str,String sql) throws Exception{
		PstatementClass rpstatement = new PstatementClass();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
            st = conn.prepareStatement(sql);
            st.setString(1, str);
            rs=st.executeQuery();
            if(rs.next()){
            	rpstatement.setPstatementId(rs.getInt("PstatementId"));
            	rpstatement.setPincome1(rs.getString("Pincome1"));
            	rpstatement.setPincome2(rs.getString("Pincome2"));
            	rpstatement.setPincome3(rs.getString("Pincome3"));
            	rpstatement.setPcost1(rs.getString("Pcost1"));
            	rpstatement.setPcost2(rs.getString("Pcost2"));
            	rpstatement.setPcost3(rs.getString("Pcost3"));
            	rpstatement.setPcost4(rs.getString("Pcost4"));
            	rpstatement.setPcost5(rs.getString("Pcost5"));
            	rpstatement.setPcost6(rs.getString("Pcost6"));
            	rpstatement.setPcost7(rs.getString("Pcost7"));
            	rpstatement.setPstatementDate(rs.getString("PstatementDate"));
            	rpstatement.setPstatementUnumber(rs.getString("PstatementUnumber"));
            	rpstatement.setPstatementYear(rs.getString("PstatementYear"));
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return rpstatement;
    }

}
