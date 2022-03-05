package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stock.stock;
import com.util.addstockDButil;

/*
 * display stock_management stock servlet.
 */

/**
 * Servlet implementation class displaystockservlet
 */
@WebServlet("/displaystockservlet")
public class displaystockservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		addstockDButil AddstockDButil = new addstockDButil();
		      ArrayList<stock> list = AddstockDButil.getstocklist();
		session.setAttribute("stock", list);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
		dis.forward(request, response);
		
	}

	

}
