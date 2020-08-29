package com.vuavent.audio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;

import com.vuavent.audio.bo.Item;
import com.vuavent.audio.dbconnection.ConnectionFactory;

public class ItemDAO {
	
	
	public ArrayList<Item> searchByType(String type) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<Item> itemListType = new ArrayList<Item>();

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM items WHERE type='" + type + "'";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				itemListType.add(convertToItem(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return itemListType;
	}
	
	public ArrayList<Item> searchByName(String textSearch) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<Item> itemListSearch = new ArrayList<Item>();

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM items WHERE name='" + textSearch + "'";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				itemListSearch.add(convertToItem(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return itemListSearch;
	}

	public Item findById(int id) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM items WHERE id=" + id;
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				Item itemFind = (convertToItem(resultSet));
				return itemFind;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Item findByName(String name) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM items WHERE name=" + name;
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				Item itemFind = (convertToItem(resultSet));
				return itemFind;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

//	public void updateItem(int id, String name, String type, int price, String image) {
//		Connection connection = null;
//		Statement statement = null;
//
//		try {
//			connection = ConnectionFactory.getConnection();
//			String sql = "UPDATE items set name ='" + name + "', type ='" + type + "', price = '" + price + "', image ='" + image + "'" 
//					+ " WHERE id = " + id;
//			System.out.println(sql);
//			statement = connection.createStatement();
//			statement.executeUpdate(sql);
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
	public void updateItem(int id, String name, String type, int price, String image) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = ConnectionFactory.getConnection();
			String insertSQL = "UPDATE items set name = ?, type= ? , price = ? , image = ?"
					+ " WHERE id = " + id;
			System.out.println(insertSQL);
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, type);
			preparedStatement.setInt(3, price);
			preparedStatement.setString(4, image);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void insertItem(String name, String type, int price, String image) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = ConnectionFactory.getConnection();
			String insertSQL = "INSERT INTO items (name,type,price,image)"
					+ " VALUES (?,?,?,?)";
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, type);
			preparedStatement.setInt(3, price);
			preparedStatement.setString(4, image);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
//	public void insertItem(String name, String type, int price, String image) {
//		Connection connection = null;
//		PreparedStatement preparedStatement = null;
//		Statement statement = null;
//
//		try {
//			connection = ConnectionFactory.getConnection();
//			String sql = "INSERT INTO items (name,type,price,image)"
//					+ " VALUES ('" 
//					+ name + "', '" 
//					+ type + "', '" 
//					+ price + "', '" 
//					+ image + "')"; 
//			System.out.println(sql);
//			statement = connection.createStatement();
//			statement.executeUpdate(sql);
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}

	public void deleteItem(int id) {
		Connection connection = null;
		Statement statement = null;

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "DELETE FROM items WHERE id=" + id;
			statement = connection.createStatement();
			statement.executeUpdate(sql);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Item> getAllItem() {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<Item> bookList = new ArrayList<Item>();

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM items";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				bookList.add(convertToItem(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bookList;
	}

	private static Item convertToItem(ResultSet rs) throws SQLException {
		Item item = new Item();

		item.setId(rs.getInt(1));
		item.setName(rs.getString(2));
		item.setType(rs.getString(3));
		
		item.setPrice(rs.getInt(4));
		
		item.setImage(rs.getString(5));
		item.setIntroduce(rs.getString(6));
		item.setConfig(rs.getString(7));
		item.setDetail(rs.getString(8));

		return item;
	}
}
