package com.fms.DBaction;

import com.fms.Salary.SalaryClass;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SalaryOperateDB {

	public boolean AddEmployee(SalaryClass salaryinfo) throws Exception {
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into salary(employeeID,employeeName,workingtime,"
        			+ "leavetime,salarylevel,grosspay,cutpayment,fsalary,checkflag) "
        			+ "value(null,?,?,?,?,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, salaryinfo.getEmployeeName());
            st.setInt(2, salaryinfo.getWorkingtime());
            st.setInt(3, salaryinfo.getLeavetime());
            st.setFloat(4, salaryinfo.getSalarylevel());
            st.setFloat(5, salaryinfo.getGrosspay());
            st.setFloat(6, salaryinfo.getCutpayment());
            st.setFloat(7, salaryinfo.getFsalary());
            st.setBoolean(8, salaryinfo.getCheckflag());
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
	
	public List<SalaryClass> QuerySalary(SalaryClass salaryinfo) throws Exception{
		ArrayList<SalaryClass> list = new ArrayList<SalaryClass>();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from salary where employeeName=?";
            st = conn.prepareStatement(sql);
            st.setString(1, salaryinfo.getEmployeeName());
            rs=st.executeQuery();
            while(rs.next()){
            	SalaryClass t_salary = new SalaryClass();
            	t_salary.setEmployeeID(rs.getString("employeeID"));
            	t_salary.setEmployeeName(rs.getString("employeeName"));
            	t_salary.setWorkingtime(rs.getInt("workingtime"));
            	t_salary.setLeavetime(rs.getInt("leavetime"));
            	t_salary.setSalarylevel(rs.getFloat("salarylevel"));
            	//t_salary.setGrosspay(rs.getFloat("grosspay"));
            	//t_salary.setCutpayment(rs.getFloat("cutpayment"));
            	//t_salary.setFsalary(rs.getFloat("fsalary"));
            	t_salary.setCheckflag(rs.getBoolean("checkflag"));
            	t_salary.setSalarydate(rs.getDate("salarydate"));
            	list.add(t_salary);
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return list;
    }
	
	public boolean DeleteSalary(String employeeID) throws Exception{
        boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="delete from salary where employeeID=?";
            st = conn.prepareStatement(sql);
            st.setString(1, employeeID);
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
