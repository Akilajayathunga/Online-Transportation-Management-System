package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.cj.xdevapi.DbDoc;

import Connection.DBConnection;
import model.Ridebooking;
import model.User;

public class UserServices {

	
	
	public void addUser(User us) {
		
		try {
			String query = "INSERT INTO userreg VALUES('"+us.getEmail()+"' , '"+us.getName()+"' , '"+us.getPasswowrd()+"' , '"+us.getAge()+"' , '"+us.getNumber()+"' , '"+us.getAddress()+"')";
		   Statement sta = DBConnection.getConnection().createStatement();
		   sta.executeUpdate(query);
			
		} catch (Exception e) {
              e.printStackTrace();
		}
	}
	
	
	public boolean validate(User us) {
		
		try {
			
			String query = "SELECT * FROM userreg WHERE email = '"+us.getEmail()+"' AND password = '"+us.getPasswowrd()+"'";
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
	
	public User getone(User us) {
		
		try {
			
			String query = "SELECT * FROM userreg WHERE email = '"+us.getEmail()+"' AND password = '"+us.getPasswowrd()+"'";
		    Statement stat  = DBConnection.getConnection().createStatement();
	       ResultSet rs = stat.executeQuery(query);
			
	       
	       if(rs.next()) {
	    	   
	    	   us.setName(rs.getString("fname"));
	    	   us.setEmail(rs.getString("email"));
	    	   us.setNumber(rs.getString("password"));
	    	   us.setAge(rs.getInt("age"));
	    	   us.setNumber(rs.getString("mno"));
	    	   us.setAddress(rs.getString("address"));
	    	   return us ;
	       }
	       
	       
		} catch (Exception e) {
          e.printStackTrace();
		}
		
		return null;
	}
	
	
	public ArrayList<User> getAllUsers(){
		
		
		try {
			
			ArrayList<User> userlist = new ArrayList<User>();
			String query = "SELECT * FROM userreg";
			Statement stat  = DBConnection.getConnection().createStatement();
		       ResultSet rs = stat.executeQuery(query);

		       if(rs.next()) {
		    	   
		    	   User us = new User();
		    	   us.setName(rs.getString("fname"));
		    	   us.setEmail(rs.getString("email"));
		    	   us.setNumber(rs.getString("password"));
		    	   us.setAge(rs.getInt("age"));
		    	   us.setNumber(rs.getString("mno"));
		    	   us.setAddress(rs.getString("address"));
		    	   userlist.add(us);
		       }
		        
		       return userlist;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null ;
		}
		
	}
	
	
}
