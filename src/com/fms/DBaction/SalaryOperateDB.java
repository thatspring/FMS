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

}
