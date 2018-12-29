package com.crud.db;



	
	
	
	



import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConn {

    private static Connection con = null;

    public static Connection getConnection() {
        if (con != null)
            return con;
        else {
            try {
            	String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/teacherapp";
                String user = "root";
                String password = "root";
                Class.forName(driver);
                con = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException x1) {
                System.out.println(x1);
            } catch (SQLException sqe) {
                System.out.println(sqe);
            }
            System.out.println("done");
            return con;
        }
    }
}
