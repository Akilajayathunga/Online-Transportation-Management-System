package services;

import java.sql.Driver;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Connection.DBConnection;
import model.Ridebooking;
import model.User;

public class DriverServices {

	
	public boolean validate(model.Driver d) {
		
		try {
			
			String query = "SELECT * FROM driver WHERE email = '"+d.getEmail()+"' AND password = '"+d.getPassword()+"'";
            Statement stat  = DBConnection.getConnection().createStatement();
            ResultSet rs = stat.executeQuery(query);
            
            if(rs.next()) {
            	return true ;
            }
			
		} catch (Exception e) {
               e.printStackTrace();
		}
		
		return false ;
	}
	
	
	
	public model.Driver getone(model.Driver d){
		
		try {
			
			String query = "SELECT * FROM driver WHERE email = '"+d.getEmail()+"' ";
		    Statement stat  = DBConnection.getConnection().createStatement();
	       ResultSet rs = stat.executeQuery(query);			
	       
	       if(rs.next()) {
	    	   
	    	   d.setEmail(rs.getString("email"));
	    	   d.setName(rs.getString("name"));
	    	   d.setAge(rs.getString("age"));
	    	   d.setNo(rs.getString("Contactno"));
	    	   return d ;
	       }
	       
	       
	       
		} catch (Exception e) {
               e.printStackTrace();
		}
		
		return null ;
		
	}
	
	
	public void updatDriver(model.Driver dr) {
		
		try {
			
			String query = "UPDATE driver SET  name = '"+dr.getName()+"' , age = '"+dr.getAge()+"' , Contactno = '"+dr.getNo()+"'  WHERE email = '"+dr.getEmail()+"'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();		}
		
	}
	
	public void deleteDriver(model.Driver dr) {
		
		try {
			
			String query = "DELETE from driver WHERE email = '"+dr.getEmail()+"'";
			Statement staat = DBConnection.getConnection().createStatement();
			staat.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public ArrayList<model.Driver> getAllDrivers(){
		
		
		try {
			
			ArrayList<model.Driver> dlist = new ArrayList<model.Driver>();
			String query = "SELECT * from driver";
			Statement stat  = DBConnection.getConnection().createStatement();
		    ResultSet rs = stat.executeQuery(query);
		    while(rs.next()) {
		    	   
				 model.Driver d = new model.Driver();
		    	   d.setEmail(rs.getString("email"));
		    	   d.setName(rs.getString("name"));
		    	   d.setAge(rs.getString("age"));
		    	   d.setNo(rs.getString("Contactno"));
                  dlist.add(d);
		    }
		       
		    return dlist;
		} catch (Exception e) {

			e.printStackTrace();
			return null ;
			
		}
		
		
	}
	
	
}
