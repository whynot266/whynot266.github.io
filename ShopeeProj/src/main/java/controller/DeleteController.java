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


@WebServlet("/Delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dao dao=new Dao();
		String did=request.getParameter("did");
		dao.deleteProductById(did);
		response.sendRedirect("/ShopeeProj/LOP");	
		
	}
	
	
}
