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

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/Home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dao dao= new Dao();
		
		String pid = request.getParameter("pid");
		request.setAttribute("pid",pid);
		ArrayList<Product> list= new ArrayList<Product>();
		if (pid==null || Integer.valueOf(pid)<=1) {
			list= dao.getPageOfProductFromId(1);
		}else {
			list= dao.getPageOfProductFromId(Integer.valueOf(pid));
		}
		
		request.setAttribute("list", list);
		RequestDispatcher dispatcher= request.getRequestDispatcher("/Home.jsp");
		dispatcher.forward(request, response);		
	}

	

}
