package com.vuavent.audio.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vuavent.audio.bo.Item;
import com.vuavent.audio.bo.Order;
import com.vuavent.audio.bo.Product;
import com.vuavent.audio.dao.ItemDAO;

/**
 * Servlet implementation class AddtoCart
 */
@WebServlet("/addtoCart")
public class AddtoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddtoCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int quantity = 1;
		int id;
		if (request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
			ItemDAO itemDAO = new ItemDAO();
			Item itemFind = itemDAO.findById(id);
			if (itemFind != null) {
				if (request.getParameter("quantity") != null) {
					quantity = Integer.parseInt(request.getParameter("quantity"));
				}

				HttpSession session = request.getSession();

				if (session.getAttribute("order") == null) {
					Order order = new Order();
					List<Product> listProduct = new ArrayList<Product>();
					Product product = new Product();
					product.setQuantity(quantity);
					product.setItem(itemFind);
					product.setPrice(itemFind.getPrice());
					listProduct.add(product);
					order.setProducts(listProduct);
					session.setAttribute("order", order);
				} else {
					Order order = (Order) session.getAttribute("order");
					List<Product> listProduct = order.getProducts();
					boolean check = false;
					for (Product product : listProduct) {
						if (product.getItem().getId() == itemFind.getId()) {
							product.setQuantity(product.getQuantity() + quantity);
							check = true;
						}
					}
					if (check == false) {
						Product product = new Product();
						product.setQuantity(quantity);
						product.setItem(itemFind);
						product.setPrice(itemFind.getPrice());
						listProduct.add(product);
					}
					session.setAttribute("order", order);
				}
			}

			response.sendRedirect(request.getContextPath() + "/checkout");
		} else {
			response.sendRedirect(request.getContextPath() + "/checkout");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
