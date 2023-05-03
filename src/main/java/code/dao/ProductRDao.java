package code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import code.model.ProductR;

public class ProductRDao {
	 private Connection con;
	   	private String query;
	   	private PreparedStatement pst;
	   	private ResultSet rs;
	   	public ProductRDao(Connection con) {
	   		this.con = con;
	   	}
	   	
		public List<ProductR> getAllPRD() {
	        List<ProductR> products= new ArrayList<>();
	        try {

	            query = "select * from PRrau";
	            pst = this.con.prepareStatement(query);
	            rs = pst.executeQuery();

	            while (rs.next()) {
	            	ProductR row = new ProductR();
	            	row.setIdR(rs.getInt("idR"));
	                row.setNameR(rs.getString("nameR"));
	                row.setCategoryR(rs.getString("categoryR"));
	                row.setPriceR(rs.getDouble("priceR"));
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
		
	public ProductR getSingleProduct(int id) {
		ProductR row = null;
	        try {
	            query = "select * from PRrau where id=? ";
	           
	            pst = this.con.prepareStatement(query);
	            pst.setInt(1, id);
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	            	row = new ProductR();
	            	row.setIdR(rs.getInt("idR"));
	                row.setNameR(rs.getString("nameR"));
	                row.setCategoryR(rs.getString("categoryR"));
	                row.setPriceR(rs.getDouble("priceR"));
	                row.setSaleR(rs.getString("saleR"));
	                row.setImageR(rs.getString("imageR"));
	                row.setChitietR(rs.getString("chtietR"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }

	        return row;
	    }
	
	
	
	 public void huydon(int id) {
        //boolean result = false;
        try {
            query = "delete from sanpham1 where id=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            //result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
	
}