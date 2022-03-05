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
 * update data stock_management stock servlet
 */
/**
 * Servlet implementation class updatestockservlet
 */
@WebServlet("/updatestockservlet")
public class updatestockservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatestockservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String stockno=request.getParameter("stockno");
		String itemname=request.getParameter("itemname");
		String itemdescr=request.getParameter("itemdescr");
		String unit=request.getParameter("unit");
		String rate=request.getParameter("rate");
		String quantity=request.getParameter("quantity");
		String amount=request.getParameter("amount");
		
		boolean isTrue;
		addstockDButil addtaskDButil = new addstockDButil();
		isTrue=addtaskDButil.updatestock(stockno, itemname, itemdescr, unit, rate, quantity, amount);
		
		if(isTrue==true){
			
			RequestDispatcher dis = request.getRequestDispatcher("successUpdate.jsp");
			dis.forward(request,response);
	}

}
}
