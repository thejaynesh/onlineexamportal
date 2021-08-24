package onlineexamportal.usermanagement.dao;
import onlineexamportal.usermanagement.model.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	
	private String jdbcurl="jdbc:mysql://localhost:3306/online_exam_portal";
	private String jdbcusername="root";
	private String jdbcpassword="";
	
	private static final String insert_user_sql= "insert into user"+ " (username,u_password,u_email) values "+"(?,PASSWORD('password'),?);";
	private static final String select_user_by_id= "select userid, username, u_email from user_details where userid=?";
	private static final String select_all_user="select userid, username, u_email from user_details";
	private static final String delete_user_sql="delete from user_details where userid=?;";
	private static final String update_user_sql="update user_details set username =?, u_email=?, u_password=?";
	
	   public UserDAO() {}

	    protected Connection getConnection() throws SQLException {
	        Connection connection = null;
	        
	            try {
	                Class.forName("com.mysql.cj.jdbc.Driver");
	            } catch (ClassNotFoundException e) {
	                e.printStackTrace();
	            }
	            connection = DriverManager.getConnection(jdbcurl, jdbcusername, jdbcpassword);
	        
	        return connection;
	    }

	    public void insertUser(User user) throws SQLException {
	        System.out.println(insert_user_sql);
	        // try-with-resource statement will auto close the connection.
	        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(insert_user_sql)) {
	            preparedStatement.setString(1, user.getUsername());
	            preparedStatement.setString(2, user.getU_email());
	            System.out.println(preparedStatement);
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	    }

	    public User selectUser(int id) {
	        User user = null;
	        
	        try (Connection connection = getConnection();
	            
	            PreparedStatement preparedStatement = connection.prepareStatement(select_user_by_id);) {
	            preparedStatement.setInt(1, id);
	            System.out.println(preparedStatement);
	            ResultSet rs = preparedStatement.executeQuery();

	            
	            while (rs.next()) {
	            	int userid = rs.getInt("userid");
	                String name = rs.getString("username");
	                String email = rs.getString("u_email");
	                
	                user = new User(userid, name, email);
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return user;
	    }

	    public List < User > selectAllUsers() {

	        List < User > users = new ArrayList < > ();
	        
	        try (Connection connection = getConnection();

	            PreparedStatement preparedStatement = connection.prepareStatement(select_all_user);) {
	            System.out.println(preparedStatement);
	           
	            ResultSet rs = preparedStatement.executeQuery();
	            while (rs.next()) {
	                int id = rs.getInt("userid");
	                String name = rs.getString("username");
	                String email = rs.getString("u_email");
	                users.add(new User(id, name, email));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return users;
	    }

	    public boolean deleteUser(int id) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(delete_user_sql);) {
	            statement.setInt(1, id);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }

	    public boolean updateUser(User user) throws SQLException {
	        boolean rowUpdated;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(update_user_sql);) {
	            statement.setInt(1, user.getUserid());
	            statement.setString(2, user.getUsername());
	            statement.setString(3, user.getU_email());

	            rowUpdated = statement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	}