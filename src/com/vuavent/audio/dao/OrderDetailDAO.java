package com.vuavent.audio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.vuavent.audio.bo.Item;
import com.vuavent.audio.bo.Order;
import com.vuavent.audio.bo.OrderDetail;
import com.vuavent.audio.dbconnection.ConnectionFactory;

public class OrderDetailDAO {
	public void insertOrderDetail(int orderid, int itemid, String username, String itemname, int quantity, int total) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = ConnectionFactory.getConnection();
			String insertSQL = "INSERT INTO orderdetail (orderid, username, itemid, itemname, quantity, total)"
					+ " VALUES (?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setInt(1, orderid);
			preparedStatement.setString(2, username);
			preparedStatement.setInt(3, itemid);
			preparedStatement.setString(4, itemname);
			preparedStatement.setInt(5, quantity);
			preparedStatement.setInt(6, total);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<OrderDetail> getAllOrder() {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		ArrayList<OrderDetail> orderList = new ArrayList<OrderDetail>();

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM orderdetail";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				orderList.add(convertToOrderDetail(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orderList;
	}

	private static OrderDetail convertToOrderDetail(ResultSet rs) throws SQLException {
		OrderDetail orderD = new OrderDetail();
		orderD.setId(rs.getInt(1));
		orderD.setOrderId(rs.getInt(2));
		orderD.setUserName(rs.getString(3));
		orderD.setItemId(rs.getInt(4));
		orderD.setItemName(rs.getString(5));
		orderD.setQuantity(rs.getInt(6));
		orderD.setTotal(rs.getInt(7));

		return orderD;
	}
}
