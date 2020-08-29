package com.vuavent.audio.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.vuavent.audio.bo.User;
import com.vuavent.audio.dbconnection.ConnectionFactory;

public class UserDAO {

	public User findId(String name) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * from users WHERE username = '" + name + "'";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				User user = new User();
				user = convertToUser(resultSet);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}



	public void insertUser(String username, String password, String firstname, String lastname, String address,
			String phone, String city, String email) {
		Connection connection = null;
		Statement statement = null;

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO users (username, password, role, firstname, lastname, address, phone, city, email)"
					+ " VALUES ('" + username + "', '" + password + "', 'user'," + "'" + firstname + "', '" + lastname
					+ "', '" + address + "', '" + phone + "', '" + city + "', '" + email + "' );";
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean isUsernameExists(String username) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM users WHERE username='" + username + "'";
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public User findByUsernameAndPassword(String username, String password) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = ConnectionFactory.getConnection();
			String sql = "SELECT * FROM users WHERE username='" + username + "' AND password = '" + password + "'";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				User user = new User();
				user = convertToUser(resultSet);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	private static User convertToUser(ResultSet rs) throws SQLException {
		User user = new User();

		user.setId(rs.getInt(1));
		user.setUsername(rs.getString(2));
		user.setPassword(rs.getString(3));
		user.setRole(rs.getString(4));
		user.setFirstname(rs.getString(5));
		user.setLastname(rs.getString(6));
		user.setAddress(rs.getString(7));
		user.setPhone(rs.getString(8));
		user.setCity(rs.getString(9));
		user.setEmail(rs.getString(10));

		return user;
	}
}
