package com.vuavent.audio.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vuavent.audio.bo.Item;
import com.vuavent.audio.bo.OrderDetail;
import com.vuavent.audio.dao.ItemDAO;
import com.vuavent.audio.dao.OrderDetailDAO;

/**
 * Servlet implementation class Admin2
 */
@WebServlet("/admin2")
public class Admin2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	OrderDetailDAO orderDD = new OrderDetailDAO();
	ArrayList<OrderDetail> orderDDList = orderDD.getAllOrder();
	request.setAttribute("orderDDList", orderDDList);
	
	RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/admin2.jsp");
	dispatcher.forward(request, response);}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
