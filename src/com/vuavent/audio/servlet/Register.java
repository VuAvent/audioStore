package com.vuavent.audio.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vuavent.audio.dao.UserDAO;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp");
		dispatcher.forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		String firstname = (String) request.getParameter("firstname");
		String lastname = (String) request.getParameter("lastname");
		String address = (String) request.getParameter("address");
		String phone = (String) request.getParameter("phone");
		String city = (String) request.getParameter("city");
		String email = (String) request.getParameter("email");

		UserDAO userDAO = new UserDAO();
		 userDAO.isUsernameExists(username);

		if ( userDAO.isUsernameExists(username)) {
			request.setAttribute("errorMessage", "Trùng tên roi ml");
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/register.jsp");
			dispatcher.forward(request, response);
			} else {
			userDAO.insertUser(username, password, firstname, lastname, address, phone, city, email );
			response.sendRedirect(request.getContextPath() + "/login");

		}	}

}
