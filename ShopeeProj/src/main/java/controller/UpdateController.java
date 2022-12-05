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


@WebServlet("/Update")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id= request.getParameter("id");
	request.setAttribute("id", id);
	RequestDispatcher dis= request.getRequestDispatcher("/UpdateProduct.jsp");
	dis.forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dao dao=new Dao();
		request.setCharacterEncoding("UTF-8");
		String id= request.getParameter("id");	
		String Pname= request.getParameter("Pname");
		String Pimg= request.getParameter("Pimg");
		String Pprice= request.getParameter("Pprice");
		String Pdiscount= request.getParameter("Pdiscount");
		System.out.println(Pname);
		Product newP= new Product();
		newP.setId(Integer.valueOf(id));
		newP.setProductName(Pname);
		newP.setProductImg(Pimg);
		newP.setProductOrderImg(Pimg);
		newP.setProductPrice(Double.valueOf(Pprice));
		newP.setDiscount(Integer.valueOf(Pdiscount));
		dao.updateProduct(newP);
		
		response.sendRedirect("/ShopeeProj/LOP");		
				
	}
	
}
