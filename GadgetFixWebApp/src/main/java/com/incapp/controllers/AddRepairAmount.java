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
@WebServlet("/AddRepairAmount")
public class AddRepairAmount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int repair_amount=Integer.parseInt(request.getParameter("amount"));
			int id=Integer.parseInt(request.getParameter("id"));
		
			DAO db=new DAO();
			db.addRepairAmount(id, repair_amount);
			db.closeConnection();
			HttpSession session=request.getSession();
			session.setAttribute("msg", "Repair Amount Quoted Success!");
			response.sendRedirect("RepairExpertHome.jsp");
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("ExpPage.jsp");
		}
	}

}