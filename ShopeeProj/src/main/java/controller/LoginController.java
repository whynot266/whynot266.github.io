package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import entity.Product;
import entity.User;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	RequestDispatcher dis= request.getRequestDispatcher("/Login.jsp");
	dis.forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dao dao=new Dao();
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		User user= dao.findUser(email, password);
				
				
//		System.out.println(email + password);
		if (user!=null ) {
			
			response.sendRedirect("/ShopeeProj/Home");		
			
		}else {
			RequestDispatcher dis= request.getRequestDispatcher("/Login.jsp");
			dis.forward(request, response);
		}
	}
	
}
