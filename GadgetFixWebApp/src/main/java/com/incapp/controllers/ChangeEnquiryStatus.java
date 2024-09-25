package com.incapp.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.incapp.models.DAO;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/ChangeEnquiryStatus")
public class ChangeEnquiryStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			String status=request.getParameter("status");
			DAO db=new DAO();
			db.changeEnquiryStatus(id, status);
			db.closeConnection();
			HttpSession session=request.getSession();
			session.setAttribute("msg", "Status Updation Success !");
			response.sendRedirect("AdminHome.jsp");
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("ExpPage.jsp");
		}
	}

}