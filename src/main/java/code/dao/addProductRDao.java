package code.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import code.model.addProductR;

public class addProductRDao {
	 // thêm hàng 
	 public int registerAddProductR(addProductR addproduct) throws ClassNotFoundException {
	        String INSERT_USERS_SQL = "INSERT INTO PRrau" +
	            "  (idR, nameR, categoryR, priceR, saleR , imageR, chtietR) VALUES " +
	            " (?, ?, ?, ?, ?, ?, ?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	        		.getConnection("jdbc:mysql://localhost:3306/nhom9","root","07191908");

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setInt(1, addproduct.getIdR());
	            preparedStatement.setString(2, addproduct.getNameR());
	            preparedStatement.setString(3, addproduct.getCategoryR());
	            preparedStatement.setString(4, addproduct.getPriceR());
	            preparedStatement.setString(5, addproduct.getSaleR());
	            preparedStatement.setString(6, addproduct.getImageR());
	            preparedStatement.setString(7, addproduct.getChitietR());
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return result;
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
	 
	 // tìm sản phẩm 
	 public List<addProductR> searchProduct(String query) {
	   	    List<addProductR> results = new ArrayList<>();

	   	    try {
	   	        // Prepare the SQL query with placeholders for the search term
	   	        String sql = "SELECT * FROM PRrau WHERE name LIKE ?";
	   	        PreparedStatement statement = con.prepareStatement(sql);

	   	        // Set the search term as a parameter in the SQL query
	   	        String searchTerm = "%" + query + "%";
	   	        statement.setString(1, searchTerm);

	   	        // Execute the query and loop through the results
	   	        ResultSet resultSet = statement.executeQuery();
	   	        while (resultSet.next()) {
	   	        	addProductR user = new addProductR();
	   	            user.setIdR(resultSet.getInt("id"));
	   	            user.setNameR(resultSet.getString("name"));
	   	            user.setCategoryR(resultSet.getString("category"));
	   	            user.setPriceR(resultSet.getString("price"));
	   	            user.setImageR(resultSet.getString("image"));
	   	            user.setChitietR(resultSet.getString("chtietR"));
	   	            results.add(user);
	   	        }

	   	    } catch (SQLException e) {
	   	        e.printStackTrace();
	   	    }

	   	    return results;
	   	}
	   
	   
	 
	 private Connection con;
	   	private String query;
	   	private PreparedStatement pst;
	   	private ResultSet rs;
	   	public addProductRDao(Connection con) {
	   		this.con = con;
	   	}
	   	
		public List<addProductR> getAllPRD() {
	        List<addProductR> products= new ArrayList<>();
	        try {

	            query = "select * from PRrau";
	            pst = this.con.prepareStatement(query);
	            rs = pst.executeQuery();

	            while (rs.next()) {
	            	addProductR row = new addProductR();
	            	row.setIdR(rs.getInt("idR"));
	                row.setNameR(rs.getString("nameR"));
	                row.setCategoryR(rs.getString("categoryR"));
	                row.setPriceR(rs.getString("priceR"));
	                row.setSaleR(rs.getString("saleR"));
	                row.setImageR(rs.getString("imageR"));
	                row.setChitietR(rs.getString("chtietR"));


	                products.add(row);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }
	        return products;
		
	}
		

}
