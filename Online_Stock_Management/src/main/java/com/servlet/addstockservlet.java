package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.addstockDButil;
/*
 * insert/adding  data stock_management stock servlet
 * 
 */
/**
 * Servlet implementation class addstockservlet
 */
@WebServlet("/addstockservlet")
public class addstockservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addstockservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String stockno = request.getParameter("stockno");
		String itemname = request.getParameter("itemname");
		String itemdescr = request.getParameter("itemdescr");
		String unit = request.getParameter("unit");
		String rate = request.getParameter("rate");
		String quantity = request.getParameter("quantity");
		String amount = request.getParameter("amount");
		
		boolean obj;
		addstockDButil addstockDButil = new addstockDButil();
		obj = addstockDButil.insertaddstock(stockno,itemname,itemdescr,unit,rate,quantity,amount);
		
		
		if(obj==true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("stock.jsp");
			dis2.forward(request, response);
		}
	}

}
