package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;
import com.service.stockservice;
import com.stock.stock;

/*
 * This is Database connection creation class
 */
public class addstockDButil implements stockservice {   

	/*
	 * Database creation class for insert/add stock.
	 */

public boolean insertaddstock (String stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount) {
	
	boolean isSuccess = false;
	
	String url = "jdbc:mysql://localhost:3306/stock_management";
	String user = "root";
	String pass = "runrunzx";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		
		
		String sql = "insert into stock_management.stock(stockno, itemname, itemdescr, unit, rate, quantity, amount) values('"+stockno+"','"+itemname+"','"+itemdescr+"','"+unit+"','"+rate+"','"+quantity+"','"+amount+"')";
		
		System.out.println("sql statement" + sql);
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
			
		}
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}


   /*
    * Database creation class for stock display.
    */

public ArrayList<stock> getstocklist() {
       
	ArrayList<stock> list = new ArrayList<stock>();
	
	
	String url = "jdbc:mysql://localhost:3306/stock_management";
	String user = "root";
	String pass = "runrunzx";
	ResultSet rs = null;
	PreparedStatement preparedStatement = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, user, pass);
		
		
		String sql = "select * from stock_management.stock";
		
		System.out.println("sql statement" + sql);
		preparedStatement = (PreparedStatement) con.prepareStatement(sql);
		rs = preparedStatement.executeQuery();
		
		while (rs.next()) {
			list.add(new stock(rs.getInt("StockNo"), rs.getString("ItemName"), rs.getString("ItemDescr"), rs.getString("Unit"), rs.getString("Rate"), rs.getString("Quantity"), rs.getString("Amount")));
			
			
		}
		
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return list;
}


    /*
     * Database creation class for stock update.
     */

public boolean updatestock(String stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount) {
	boolean isSuccess = false;
	
	String url ="jdbc:mysql://localhost:3306/stock_management";
	String user ="root";
	String pass ="runrunzx";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		String sql = "update stock_management.stock set itemname='"+itemname+"', itemdescr='"+itemdescr+"', unit='"+unit+"', rate='"+rate+"', quantity='"+quantity+"', amount='"+amount+"' "
                 +"where stockno="+stockno+";";
		System.out.println("sql statement" + sql);
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
			
		}
		
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
}


    /*
     * Database creation class for stock delete.
     */

public boolean deletestock(String stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount) {
	boolean isSuccess = false;
	
	String url ="jdbc:mysql://localhost:3306/stock_management";
	String user ="root";
	String pass ="runrunzx";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,user,pass);
		Statement stmt = con.createStatement();
		
		
		
		String sql ="delete from stock_management.stock where stockno="+stockno+";";
		System.out.println("sql statement" + sql);
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
			
			
		}
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}





}
	


