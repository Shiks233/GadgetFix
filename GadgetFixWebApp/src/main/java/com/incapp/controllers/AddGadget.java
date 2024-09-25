package com.incapp.controllers;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.incapp.models.DAO;

/**
 * Servlet implementation class AdminLogin
 */
@MultipartConfig
@WebServlet("/AddGadget")
public class AddGadget extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		    String user_email = request.getParameter("user_email");
		    String repair_expert_email = request.getParameter("repair_expert_email");
		    String gadget_name = request.getParameter("gadget_name");
		    String gadget_brand_name = request.getParameter("gadget_brand_name");
		    String problem = request.getParameter("problem");
		    
		    Part part1 = request.getPart("photo1");
		    Part part2 = request.getPart("photo2");
		    
		    try (InputStream photo1 = (part1 != null && part1.getSize() > 0) ? part1.getInputStream() : null;
		         InputStream photo2 = (part2 != null && part2.getSize() > 0) ? part2.getInputStream() : null) {
		         
		        DAO db = new DAO();
		        db.addGadget(gadget_name, gadget_brand_name, problem, photo1, photo2, user_email, repair_expert_email);
		        db.closeConnection();
		        
		        HttpSession session = request.getSession();
		        session.setAttribute("msg", "Gadget Repair Request Send Success!");
		        response.sendRedirect("UserHome.jsp");
		    }
		} catch (Exception e) {
		    e.printStackTrace();
		    System.out.println(e);
//		    response.sendRedirect("ExpPage.jsp");
		}
	}
}
