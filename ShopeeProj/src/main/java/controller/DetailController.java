package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import entity.Product;

/**
 * Servlet implementation class DetailController
 */
@WebServlet("/detail")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dao dao =new Dao();
		String id = request.getParameter("id");
		Product p= dao.getProductById(id);
		request.setAttribute("p", p);
		RequestDispatcher dispatcher= request.getRequestDispatcher("/Product.jsp");
		dispatcher.forward(request, response);
	}

	

}
