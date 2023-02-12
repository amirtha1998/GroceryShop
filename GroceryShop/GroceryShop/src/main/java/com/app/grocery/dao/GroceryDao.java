package com.app.grocery.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.app.grocery.model.Grocerydetails;

@Repository
public class GroceryDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	DataSource dataSource;

	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;

	public boolean InsertProduct(Grocerydetails grocerydetails) {
		String sql = "insert into productdetails values(?,?,?,?,?,?)";
		int flag = jdbcTemplate.update(sql, grocerydetails.getProductid(), grocerydetails.getProductname(),
				grocerydetails.getPrice(), grocerydetails.getManufacturedate(), grocerydetails.getExpirydate(),
				grocerydetails.getStock());
		if (flag > 0)
			return true;
		else
			return false;
	}
	
	
	
	public List<Grocerydetails> viewallproduct() {
		List<Grocerydetails> list = new ArrayList<Grocerydetails>();
		try {
			connection = dataSource.getConnection();
			String sql = "select * from productdetails";
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Grocerydetails gro = new Grocerydetails();
				{
					gro.setProductid(resultSet.getInt("productid"));
					gro.setProductname(resultSet.getString("productname"));
					gro.setPrice(resultSet.getInt("price"));
					gro.setManufacturedate(resultSet.getString("manufacturedate"));
					gro.setExpirydate(resultSet.getString("expirydate"));
					gro.setStock(resultSet.getString("stock"));
					list.add(gro);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Grocerydetails> showAllExpi() {
		List<Grocerydetails> list = new ArrayList<Grocerydetails>();
		try {
			connection = dataSource.getConnection();
			String sql = "select * from productdetails";
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
			Date date = new Date();
			preparedStatement = connection.prepareStatement(sql);
			String dt1 = formatter.format(date);
			Date d1 = formatter.parse(dt1);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Grocerydetails gro = new Grocerydetails();
				String dt2 = resultSet.getString("expirydate");
				Date d2 = formatter.parse(dt2);
				if (d1.compareTo(d2) > 0) {
					gro.setProductid(resultSet.getInt("productid"));
					gro.setProductname(resultSet.getString("productname"));
					gro.setManufacturedate(resultSet.getString("manufacturedate"));
					gro.setExpirydate(resultSet.getString("expirydate"));
					gro.setStock(resultSet.getString("stock"));
					list.add(gro);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean removeProduct(Grocerydetails grocerydetails) {
		try {
			connection = dataSource.getConnection();
			String sql = "delete from productdetails where productid = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, grocerydetails.getProductid());
			int u = preparedStatement.executeUpdate();
			connection.close();
			if (u > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

	public Grocerydetails updateGrocery(Grocerydetails grocery) {
		try {
			connection = dataSource.getConnection();
			String sql = "UPDATE productdetails SET productname=?,price=?,manufacturedate=?,expirydate=?,stock=? where productid=?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, grocery.getProductname());
			preparedStatement.setInt(2, grocery.getPrice());
			preparedStatement.setString(3, grocery.getManufacturedate());
			preparedStatement.setString(4, grocery.getExpirydate());
			preparedStatement.setString(5, grocery.getStock());
			preparedStatement.setInt(6, grocery.getProductid());
			int u = preparedStatement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return grocery;
	}
	public Grocerydetails searchgro(int id){
		Grocerydetails gro=null;
		try {
			connection=dataSource.getConnection();
			String sql="select * from productdetails where productid=?";
			preparedStatement =connection.prepareStatement(sql);
			preparedStatement.setInt(1,id);
			resultSet=preparedStatement.executeQuery();
			while(resultSet.next()) {
				gro=new Grocerydetails();
				gro.setProductid(resultSet.getInt("productid"));
				gro.setProductname(resultSet.getString("productname"));
				gro.setPrice(resultSet.getInt("price"));
				gro.setManufacturedate(resultSet.getString("manufacturedate"));
				gro.setExpirydate(resultSet.getString("Expirydate"));
				gro.setStock(resultSet.getString("stock"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return gro;
	}
	
	public Grocerydetails searchgrodet(String productname){
		Grocerydetails gro=null;
		try {
			connection=dataSource.getConnection();
			String sql="select * from productdetails where productname=?";
			preparedStatement =connection.prepareStatement(sql);
			preparedStatement.setString(1,productname);
			resultSet=preparedStatement.executeQuery();
			while(resultSet.next()) {
				gro=new Grocerydetails();
				gro.setProductid(resultSet.getInt("productid"));
				gro.setProductname(resultSet.getString("productname"));
				gro.setPrice(resultSet.getInt("price"));
				gro.setManufacturedate(resultSet.getString("manufacturedate"));
				gro.setExpirydate(resultSet.getString("Expirydate"));
				gro.setStock(resultSet.getString("stock"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return gro;
	}

}
