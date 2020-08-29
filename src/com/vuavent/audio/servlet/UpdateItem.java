package com.vuavent.audio.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vuavent.audio.bo.Item;
import com.vuavent.audio.dao.ItemDAO;
import com.vuavent.audio.utils.FileUpdateUtil;

/**
 * Servlet implementation class UpdateItem
 */
@WebServlet("/updateItem")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10,
		maxFileSize = 1024 * 1024 * 50,
		maxRequestSize = 1024 * 1024 * 100
		)
public class UpdateItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idStr = (String) request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		ItemDAO itemDAO = new ItemDAO();
		Item itemFind = itemDAO.findById(id);
		request.setAttribute("itemFind", itemFind);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/updateItem.jsp");
		dispatcher.forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String idStr = (String) request.getParameter("id");
		int id = Integer.parseInt(idStr);
		String name = (String) request.getParameter("name");
		String type = (String) request.getParameter("type");
		
		String priceStr = (String) request.getParameter("price");
		int price = Integer.parseInt(priceStr);


//		String image = (String) request.getParameter("image");
		
		String imagePath = FileUpdateUtil.saveImage(request);
		
		
		ItemDAO itemDAO = new ItemDAO();
		itemDAO.updateItem(id,name,type, price, imagePath);
		
		response.sendRedirect(request.getContextPath() + "/admin");
	}	
}


