package com.fms.DBaction;

import com.fms.Invoice.InvoiceClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InvoiceOperateDB {
	
	public boolean AddInvoice(InvoiceClass invoice) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="insert into invoice(invoiceId,invoicePayer,invoiceProject,";
        	sql+="invoiceMoney,invoiceCmoney,invoiceType,invoicePayee,invoiceNumber,";
        	sql+="invoiceRemarks,invoiceDate,invoiceUnumber) value(null,?,?,?,?,?,?,?,?,?,?)";
            st = conn.prepareStatement(sql);
            st.setString(1, invoice.getInvoicePayer());
            st.setString(2, invoice.getInvoiceProject());
            st.setString(3, invoice.getInvoiceMoney());
            st.setString(4, invoice.getInvoiceCmoney());
            st.setString(5, invoice.getInvoiceType());
            st.setString(6, invoice.getInvoicePayee());
            st.setInt(7, invoice.getInvoiceNumber());
            st.setString(8, invoice.getInvoiceRemarks());
            st.setDate(9, invoice.getInvoiceDate());
            st.setString(10, invoice.getInvoiceUnumber());
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
	
	public List<InvoiceClass> QueryInvoiceByDate(InvoiceClass invoice) throws Exception{
		ArrayList<InvoiceClass> list = new ArrayList<InvoiceClass>();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from invoice where invoiceDate=?";
            st = conn.prepareStatement(sql);
            st.setDate(1, invoice.getInvoiceDate());
            rs=st.executeQuery();
            while(rs.next()){
            	InvoiceClass t_invoice = new InvoiceClass();
            	t_invoice.setInvoiceId(rs.getInt("invoiceId"));
            	t_invoice.setInvoiceDate(rs.getDate("invoiceDate"));
            	t_invoice.setInvoiceUnumber(rs.getString("invoiceUnumber"));
            	list.add(t_invoice);
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return list;
    }
	
	public InvoiceClass QueryInvoiceById(int invoiceId) throws Exception{
		InvoiceClass rinvoice = new InvoiceClass();
    	Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="select * from invoice where invoiceId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, invoiceId);
            rs=st.executeQuery();
            if(rs.next()){
            	rinvoice.setInvoiceId(rs.getInt("invoiceId"));
            	rinvoice.setInvoicePayer(rs.getString("invoicePayer"));
            	rinvoice.setInvoiceProject(rs.getString("invoiceProject"));
            	rinvoice.setInvoiceMoney(rs.getString("invoiceMoney"));
                rinvoice.setInvoiceCmoney(rs.getString("invoiceCmoney"));
            	rinvoice.setInvoiceType(rs.getString("invoiceType"));
            	rinvoice.setInvoicePayee(rs.getString("invoicePayee"));
            	rinvoice.setInvoiceNumber(rs.getInt("invoiceNumber"));
            	rinvoice.setInvoiceRemarks(rs.getString("invoiceRemarks"));
            	rinvoice.setInvoiceDate(rs.getDate("invoiceDate"));
            	rinvoice.setInvoiceUnumber(rs.getString("invoiceUnumber"));
            }
            st.close();
            conn.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    	return rinvoice;
    }
	
	public boolean UpdateInvoice(InvoiceClass invoice) throws Exception{
		boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="update invoice set invoicePayer=?,invoiceProject=?,";
        	sql+="invoiceMoney=?,invoiceCmoney=?,invoiceType=?,invoicePayee=?,invoiceNumber=?,";
        	sql+="invoiceRemarks=?,invoiceDate=?,invoiceUnumber=? where invoiceId=?";
            st = conn.prepareStatement(sql);
            st.setString(1, invoice.getInvoicePayer());
            st.setString(2, invoice.getInvoiceProject());
            st.setString(3, invoice.getInvoiceMoney());
            st.setString(4, invoice.getInvoiceCmoney());
            st.setString(5, invoice.getInvoiceType());
            st.setString(6, invoice.getInvoicePayee());
            st.setInt(7, invoice.getInvoiceNumber());
            st.setString(8, invoice.getInvoiceRemarks());
            st.setDate(9, invoice.getInvoiceDate());
            st.setString(10, invoice.getInvoiceUnumber());
            st.setInt(11, invoice.getInvoiceId());
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

	public boolean DeleteInvoice(int invoiceId) throws Exception{
        boolean result=false;
    	Connection conn = null;
		PreparedStatement st = null;
        try{
        	conn=DBconnection.Conn();
        	String sql="delete from invoice where InvoiceId=?";
            st = conn.prepareStatement(sql);
            st.setInt(1, invoiceId);
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
