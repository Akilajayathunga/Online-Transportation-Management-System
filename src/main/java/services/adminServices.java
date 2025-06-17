package services;

import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.xdevapi.DbDoc;

import Connection.DBConnection;
import model.Driver;
import model.admin;



public class adminServices {

	
	public boolean validate(admin ad) {
		
		try {
			
			String query = "SELECT * from admin WHERE email = '"+ad.getEmail()+"' and password = '"+ad.getPassword()+"'";
			
			Statement stat = DBConnection.getConnection().createStatement();
			ResultSet rs = stat.executeQuery(query);
			
			if(rs.next()) {
				return true ;
			}
			
			
		} catch (Exception e) {
 
		 e.printStackTrace();
		}
		
		return false ;
	}
	
	
	public admin getone(admin ad) {
		
		try {
			
			String query = "SELECT * from admin WHERE email = '"+ad.getEmail()+"' ";
			
			
			Statement stat = DBConnection.getConnection().createStatement();
			ResultSet rs = stat.executeQuery(query);
			
			if(rs.next()) {
                  
				ad.setEmail(rs.getString("email"));
				ad.setName(rs.getString("name"));
				ad.setContact(rs.getString("phone"));
				ad.setAge(rs.getInt("age"));
				return ad ;
			}
			
		} catch (Exception e) {

		e.printStackTrace();
		}
		return null ;
	}
	
	public void updateAdmin(admin ad) {
		try {
			
			String query = "UPDATE admin SET name = '"+ad.getName()+"' ,age ='"+ad.getAge()+"' WHERE email = '"+ad.getEmail()+"' ";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}
	
	
	
	public  void addDriver(Driver d) {
		
		
		try {
			
			String query = "INSERT INTO  driver VALUES ('"+d.getEmail()+"' , '"+d.getName()+"' , '"+d.getAge()+"' , '"+d.getNo()+"' , '"+d.getPassword()+"')";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
			
		} catch (Exception e) {
             e.printStackTrace();
		}
		
	}
	
	
	public void deletedriver(Driver dr) {
		try {
			
			String query = "DELETE FROM driver WHERE email = '"+dr.getEmail()+"'";
			Statement staat = DBConnection.getConnection().createStatement();
			staat.executeUpdate(query);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	public void updatDriver(model.Driver dr) {
		
		try {
			
			String query = "UPDATE driver SET  name = '"+dr.getName()+"' , age = '"+dr.getAge()+"' , Contactno = '"+dr.getNo()+"'  WHERE email = '"+dr.getEmail()+"'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();		}
		
	}
	
}
