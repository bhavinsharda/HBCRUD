package com.tatva.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtils {
	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName(DBConsts.DRIVER_NAME);
			connection = DriverManager.getConnection(DBConsts.URL,
					DBConsts.USER_NAME, DBConsts.PASSWORD);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return connection;
	}
}
