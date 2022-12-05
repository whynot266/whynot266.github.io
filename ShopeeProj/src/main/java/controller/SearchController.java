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


@WebServlet("/Search")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Dao dao=new Dao();
		String input= request.getParameter("input");	
		Product p= dao.searchProductByName(input);
		System.out.println(p.getProductName());
		if (p!=null) {
			request.setAttribute("p", p);
			RequestDispatcher dispatcher= request.getRequestDispatcher("/Product.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("/ShopeeProj/Home");
		}
	}
	
}
