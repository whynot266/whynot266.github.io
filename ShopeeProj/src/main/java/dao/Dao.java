package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.Connect;
import entity.Product;
import entity.User;

public class Dao {
	public  ArrayList<Product> getAllProduct(){
		ArrayList<Product> list = new ArrayList<Product>();
		String query= "select id,productName,productPrice,productImg,productOrderImg,discount from products";
		Connection conn= Connect.openConnect();
		Statement stmt;
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
			}
		} catch (SQLException e) {
			e.printStackTrace(); 
		}
		
		return list;
	}
	public  ArrayList<Product> getPageOfProductFromId(int pid){
		ArrayList<Product> list = new ArrayList<Product>();
		String query= "select id,productName,productPrice,productImg,productOrderImg,discount from products where id between " +pid+" and "+(pid+5);
		Connection conn= Connect.openConnect();
		Statement stmt;
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
			}
		} catch (SQLException e) {
			e.printStackTrace(); 
		}
		
		return list;
	}

	public Product getProductById(String id){
		
		String query= "select id,productName,productPrice,productImg,productOrderImg,discount from products where id= "+id;
		Connection conn= Connect.openConnect();
		Statement stmt;
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while(rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getInt(6));
			}
		} catch (SQLException e) {
			e.printStackTrace(); 
		}
		return null;
	}
	public User findUser(String email, String password ) {
		User user =null;
		Connection conn= Connect.openConnect();
		Statement stmt;
		try {
			stmt= conn.createStatement();
			ResultSet rs= stmt.executeQuery("select email, password from users where email= '"+email+ "' and password= '"+password+"'");
			
			if (rs.next()) {
				user=new User(rs.getString(1),rs.getString(2));
				System.out.println(rs.getString(1)+rs.getString(2));
			}
		} catch ( SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public void addProduct(Product p) {
		Connection conn= Connect.openConnect();
		
		try {
			PreparedStatement rs= conn.prepareStatement
					("Insert into products (productName, productPrice, productImg, productOrderImg, discount) values (?,?,?,?,?);" );
			rs.setString(1, p.getProductName());
			rs.setDouble(2, p.getProductPrice());
			rs.setString(3, p.getProductImg());
			rs.setString(4, p.getProductOrderImg());
			rs.setInt(5, p.getDiscount());
			rs.execute();
			
		} catch ( SQLException e) {
			e.printStackTrace();
		}
	}
	public void updateProduct(Product p) {
		Connection conn= Connect.openConnect();
		System.out.println("update p");
		try {
			PreparedStatement rs= conn.prepareStatement
					("update products set productName=?, productPrice=?, productImg=?, productOrderImg=?, discount=? where id=?;" );
			rs.setString(1, p.getProductName());
			rs.setDouble(2, p.getProductPrice());
			rs.setString(3, p.getProductImg());
			rs.setString(4, p.getProductOrderImg());
			rs.setInt(5, p.getDiscount());
			rs.setInt(6,p.getId());
			rs.execute();
			
		} catch ( SQLException e) {
			e.printStackTrace();
		}
	}
	public void deleteProductById(String id) {
		Connection conn= Connect.openConnect();
		
		try {
			PreparedStatement rs= conn.prepareStatement
					("delete from products where id=?;" );
			rs.setString(1,id);
			rs.execute();
			
		} catch ( SQLException e) {
			e.printStackTrace();
		}
	}
	public Product searchProductByName(String name) {
		String query ="select id, productName, productPrice, productImg, productOrderImg, discount from products where productName=?";
		System.out.println(query);
		System.out.println(name);
		try {
			Connection conn= Connect.openConnect();
			PreparedStatement ps= conn.prepareStatement(query);
			ps.setString(1,name);
			
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getString(5), rs.getInt(6));
			}
			
		} catch ( SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}