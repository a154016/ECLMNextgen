package com.cisco.legal.eclmnextgen.search.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

	/*private static Connection conn;
	
	public static Connection getConnection() {
		if( conn != null )
			return conn;
		
		InputStream inputStream = DBUtil.class.getClassLoader().getResourceAsStream( "/db.properties" );
		Properties properties = new Properties();
		try {
			properties.load( inputStream );
			String driver = properties.getProperty( "driver" );
			String url = properties.getProperty( "url" );
			String user = properties.getProperty( "user" );
			String password = properties.getProperty( "password" );
			Class.forName( driver );
			conn = DriverManager.getConnection( url, user, password );
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;*/
	
	private static Connection con=null;
	public static Connection getConnection() 
	
	{
		if(con!=null)
			return con;
		else
		{
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
			}
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
		    }
			
			try
			{
				String dbHost = "dbs-dev-vm-3011.cisco.com";
				String port = "1805";
				String dbName = "FNTR2DEV";
				String user = "ECMOTHAD";
				String password = "ecmothad123";
				
				String url = new StringBuffer("jdbc:oracle:thin:@").append(dbHost)
						.append(":").append(port).append(":").append(dbName)
						.toString();
				con = DriverManager.getConnection(url, user, password);
				System.out.println("You are in DbUtil.java and Connected ");
			}
		 catch (SQLException e) {
			
		} catch (Exception e) {
			
		}
		
		
		return con;
	}
	}
	public static void closeConnection( Connection toBeClosed ) {
		if( toBeClosed == null )
			return;
		try {
			toBeClosed.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
