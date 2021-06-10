/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package storage;

import bean1.ProductBean;
import config.DBconnect;
import static java.lang.System.out;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Vedansh
 */
public class ProductData {
    
    
    public static void setProductDetails(ProductBean pb){
        try{
            Connection con= DBconnect.getConnection();
            String q="insert into new_auction(category,description,intial_peice,schedule_date,b_id) value(?,?,?,?,?)";
            PreparedStatement ps= con.prepareStatement(q);
            ps.setString(1,pb.getCategory());
            ps.setString(2,pb.getDescription());
            ps.setString(3,pb.getInitial_price());
            ps.setString(4,pb.getSchedule_date());
            ps.setInt(5,pb.getB_id());
            
            ps.executeQuery();
            con.close();
        }
        catch(Exception e){
            out.println(e+" At Product Details setting");
        }
    }
    
    public static void setImage(String path,int id){
        try{
            Connection con= DBconnect.getConnection();
            String q="update new_auction set path='"+path+"' where product_id='"+id+"'";
            PreparedStatement ps= con.prepareStatement(q);
           
            
            ps.executeQuery();
            con.close();
        }
        catch(Exception e){
            out.println(e+" At Product Details setting");
        }
    }
     public static int getImageId(){
         
         int id=0;
         try{
             Connection con= DBconnect.getConnection();
             String q="select product_id from new_auction ";
             PreparedStatement ps=con.prepareStatement(q);
             ResultSet rs= ps.executeQuery();
             
             if(rs.last()){
                 id= rs.getInt(1);
             }
             con.close();
         }
         catch(Exception e){
             out.println("Error in get product id in product data  "+e);
         }
         
         
         return id;
         
     }
    
    public static ArrayList<ArrayList<String>> getAllRecords(int bid)
	{
		ArrayList<ArrayList<String>> a = new ArrayList<ArrayList<String>>();
		try
		{
			Connection con = DBconnect.getConnection();
			String q = "select * from new_auction where b_id=?";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setInt(1,bid);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				ArrayList<String> b = new ArrayList<String>();
				b.add(rs.getString(1));
				b.add(rs.getString(2));
				b.add(rs.getString(3));
				b.add(rs.getString(4));
				b.add(rs.getString(5));
				b.add(rs.getString(6));
				a.add(b);
			}
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return a;
	}
}
