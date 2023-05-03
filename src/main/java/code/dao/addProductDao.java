package code.dao;

import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import code.model.addProduct;

public class addProductDao {
	 // thêm hàng 
	 public int registerAddProduct(addProduct addproduct) throws ClassNotFoundException {
	        String INSERT_USERS_SQL = "INSERT INTO sanpham1" +
	            "  (id, name, category, price, image, chitiet) VALUES " +
	            " (?, ?, ?, ?, ?, ?);";

	        int result = 0;

	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	        		.getConnection("jdbc:mysql://localhost:3306/nhom9","root","07191908");

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	            preparedStatement.setInt(1, addproduct.getId());
	            preparedStatement.setString(2, addproduct.getName());
	            preparedStatement.setString(3, addproduct.getCategory());
	            preparedStatement.setString(4, addproduct.getPrice());
	            preparedStatement.setString(5, addproduct.getImage());
	            preparedStatement.setString(6, addproduct.getChitiet());
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
	 public List<addProduct> searchProduct(String query) {
	   	    List<addProduct> results = new ArrayList<>();

	   	    try {
	   	        // Prepare the SQL query with placeholders for the search term
	   	        String sql = "SELECT * FROM sanpham1 WHERE name LIKE ?";
	   	        PreparedStatement statement = con.prepareStatement(sql);

	   	        // Set the search term as a parameter in the SQL query
	   	        String searchTerm = "%" + query + "%";
	   	        statement.setString(1, searchTerm);

	   	        // Execute the query and loop through the results
	   	        ResultSet resultSet = statement.executeQuery();
	   	        while (resultSet.next()) {
	   	        	addProduct user = new addProduct();
	   	            user.setId(resultSet.getInt("id"));
	   	            user.setName(resultSet.getString("name"));
	   	            user.setCategory(resultSet.getString("category"));
	   	            user.setPrice(resultSet.getString("price"));
	   	            user.setImage(resultSet.getString("image"));
	   	            user.setChitiet(resultSet.getString("chitiet"));
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
	   	public addProductDao(Connection con) {
	   		this.con = con;
	   	}
	   	
		public List<addProduct> getAllPRD() {
	        List<addProduct> products= new ArrayList<>();
	        try {

	            query = "select * from sanpham1";
	            pst = this.con.prepareStatement(query);
	            rs = pst.executeQuery();

	            while (rs.next()) {
	            	addProduct row = new addProduct();
	                row.setId(rs.getInt("id"));
	                row.setName(rs.getString("name"));
	                row.setCategory(rs.getString("category"));
	                row.setPrice(rs.getString("price"));
	                row.setImage(rs.getString("image"));
	                row.setChitiet(rs.getString("chitiet"));

	                products.add(row);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }
	        return products;
		
	}
		

}
