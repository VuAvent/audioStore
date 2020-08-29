package com.vuavent.audio.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vuavent.audio.bo.Order;
import com.vuavent.audio.bo.Product;
import com.vuavent.audio.bo.User;
import com.vuavent.audio.dao.OrderDAO;
import com.vuavent.audio.dao.OrderDetailDAO;
import com.vuavent.audio.dao.UserDAO;

/**
 * Servlet implementation class Success
 */
@WebServlet("/success")
public class Success extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Success() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Order order = (Order) session.getAttribute("order");
		
		HttpSession session2 = request.getSession();
		String username = (String) session2.getAttribute("username");
		
		UserDAO userDAO = new UserDAO();
		User user = new User();
		user = userDAO.findId(username);
		int userid = user.getId();
		String userName = user.getFirstname();
		int total = Integer.parseInt(request.getParameter("total"));
		
		request.setAttribute("total", total);
		OrderDAO orderDAO = new OrderDAO();
		int orderID = orderDAO.insertOrder3(userid, total);
		
		session.setAttribute("order", order);
		session.setAttribute("username", username);	
		
		List<Product> listProduct = order.getProducts();
		OrderDetailDAO orderdetail = new OrderDetailDAO();
		
		for (Product product: listProduct) {
			int quantity = product.getQuantity();
			com.vuavent.audio.bo.Item item = product.getItem();
			int itemid = item.getId();
			int price = product.getPrice();
			String name = item.getName();
			int totalItem = price * quantity;
			orderdetail.insertOrderDetail(orderID, itemid,userName,name, quantity, totalItem);
		}
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/success.jsp");
		dispatcher.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
