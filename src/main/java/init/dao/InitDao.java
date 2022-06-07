package init.dao;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.jdbc.ScriptRunner;

import user.domain.User;



/**
 * DDL functions performed in database
 */
public class InitDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "healthcaresystem";  //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "health";  //TODO change password
		
	/**
	 * initialize
	 */
	public void initialize(InputStream input) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hospital_database", MySQL_user, MySQL_password);
			
			//Initialize the script runner
	   		ScriptRunner sr = new ScriptRunner(connect);
	   		//Creating a reader object
	   		Reader reader = new InputStreamReader(input);
	   		//Running the script
	   		sr.runScript(reader);
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}	
	public void delete(InputStream input) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hospital_database", MySQL_user, MySQL_password);
			
			//Initialize the script runner
	   		ScriptRunner sr = new ScriptRunner(connect);
	   		//Creating a reader object
	   		Reader reader = new InputStreamReader(input);
	   		//Running the script
	   		sr.runScript(reader);
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}	
}