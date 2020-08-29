package com.vuavent.audio.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vuavent.audio.dao.ItemDAO;

/**
 * Servlet implementation class Single
 */
@WebServlet("/single")
public class Single extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Single() {
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
		com.vuavent.audio.bo.Item itemFind = itemDAO.findById(id);
		ArrayList<com.vuavent.audio.bo.Item> itemFinds = new ArrayList<com.vuavent.audio.bo.Item>();
		itemFinds.add(itemFind);
		request.setAttribute("itemFinds", itemFinds);
		
	RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/single.jsp");
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
