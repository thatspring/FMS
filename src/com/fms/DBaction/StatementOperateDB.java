package com.fms.DBaction;

import com.fms.Statement.PstatementClass;
import com.fms.Statement.BstatementClass;

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

	public boolean AddBstatement(BstatementClass bstatement)throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into bstatement(BstatementId,Bcurrent1,Bcurrent2,Bcurrent3,";
        	sql+="Bfixed1,Bfixed2,Bfixed3,Bliabilities1,Bliabilities2,Bliabilities3,Bsurplus1,Bsurplus2,";
        	sql+="Bsurplus3,BstatementUnumber,BstatementMonth,BstatementYear) value(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, bstatement.getBcurrent1());
            st.setString(2, bstatement.getBcurrent2());
            st.setString(3, bstatement.getBcurrent3());
            st.setString(4, bstatement.getBfixed1());
            st.setString(5, bstatement.getBfixed2());
            st.setString(6, bstatement.getBfixed3());
            st.setString(7, bstatement.getBliabilities1());
            st.setString(8, bstatement.getBliabilities2());
            st.setString(9, bstatement.getBliabilities3());
            st.setString(10, bstatement.getBsurplus1());
            st.setString(11, bstatement.getBsurplus2());
            st.setString(12, bstatement.getBsurplus3());
            st.setString(13, bstatement.getBstatementUnumber());
            st.setString(14, bstatement.getBstatementMonth());
            st.setString(15, bstatement.getBstatementYear());
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
	
	public boolean UpdateBstatement(BstatementClass bstatement) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="update bstatement set Bcurrent1=?,Bcurrent2=?,Bcurrent3=?,";
        	sql+="Bfixed1=?,Bfixed2=?,Bfixed3=?,Bliabilities1=?,Bliabilities2=?,Bliabilities3=?,";
        	sql+="Bsurplus1=?,Bsurplus2=?,Bsurplus3=?,BstatementUnumber=?,BstatementMonth=?,BstatementYear=? ";
        	sql+="where BstatementId=?";
            st = conn.prepareStatement(sql);
            st.setString(1, bstatement.getBcurrent1());
            st.setString(2, bstatement.getBcurrent2());
            st.setString(3, bstatement.getBcurrent3());
            st.setString(4, bstatement.getBfixed1());
            st.setString(5, bstatement.getBfixed2());
            st.setString(6, bstatement.getBfixed3());
            st.setString(7, bstatement.getBliabilities1());
            st.setString(8, bstatement.getBliabilities2());
            st.setString(9, bstatement.getBliabilities3());
            st.setString(10, bstatement.getBsurplus1());
            st.setString(11, bstatement.getBsurplus2());
            st.setString(12, bstatement.getBsurplus3());
            st.setString(13, bstatement.getBstatementUnumber());
            st.setString(14, bstatement.getBstatementMonth());
            st.setString(15, bstatement.getBstatementYear());
            st.setInt(16, bstatement.getBstatementId());
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
	
	public boolean DeleteBstatement(int bstatementId) throws Exception{
        boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="delete from bstatement where BstatementId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, bstatementId);
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
	
	public BstatementClass QueryBstatementByYear(String str) throws Exception{
        String sql="select * from bstatement where BstatementYear=?";
        return QueryBstatement(str,sql);
	}
	
	public BstatementClass QueryBstatementByDate(String str) throws Exception{
        String sql="select * from bstatement where BstatementMonth=?";
        return QueryBstatement(str,sql);
	}
	
	private BstatementClass QueryBstatement(String str,String sql) throws Exception{
		BstatementClass rbstatement = new BstatementClass();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
            st = conn.prepareStatement(sql);
            st.setString(1, str);
            rs=st.executeQuery();
            if(rs.next()){
            	rbstatement.setBstatementId(rs.getInt("BstatementId"));
            	rbstatement.setBcurrent1(rs.getString("Bcurrent1"));
            	rbstatement.setBcurrent2(rs.getString("Bcurrent2"));
            	rbstatement.setBcurrent3(rs.getString("Bcurrent3"));
            	rbstatement.setBfixed1(rs.getString("Bfixed1"));
            	rbstatement.setBfixed2(rs.getString("Bfixed2"));
            	rbstatement.setBfixed3(rs.getString("Bfixed3"));
            	rbstatement.setBliabilities1(rs.getString("Bliabilities1"));
            	rbstatement.setBliabilities2(rs.getString("Bliabilities2"));
            	rbstatement.setBliabilities3(rs.getString("Bliabilities2"));
            	rbstatement.setBsurplus1(rs.getString("Bsurplus1"));
            	rbstatement.setBsurplus2(rs.getString("Bsurplus2"));
            	rbstatement.setBsurplus3(rs.getString("Bsurplus3"));
            	rbstatement.setBstatementUnumber(rs.getString("BstatementUnumber"));
            	rbstatement.setBstatementMonth(rs.getString("BstatementMonth"));
            	rbstatement.setBstatementYear(rs.getString("BstatementYear"));
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return rbstatement;
	}
}
