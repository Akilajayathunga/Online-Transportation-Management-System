package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Connection.DBConnection;
import model.Ridebooking;


public class RideServices {

	
	public void addRide(Ridebooking rb) {
	    try {
	        String query = "INSERT INTO rides (email, leaving, going, vehicle, date, time) VALUES ('"
	                        + rb.getEmail() + "', '"
	                        + rb.getLeaving() + "', '"
	                        + rb.getGoing() + "', '"
	                        + rb.getVehicle() + "', '"
	                        + rb.getDate() + "', '"
	                        + rb.getTime() + "')";
	        
	        Statement sta = DBConnection.getConnection().createStatement();
	        sta.executeUpdate(query);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	public ArrayList<Ridebooking> getAllRides(String email){
		ArrayList<Ridebooking> ridelis = new ArrayList<Ridebooking>();
		
		try {
			
			String query = "SELECT * from rides WHERE email = '"+email+"' ";
			Statement stat = DBConnection.getConnection().createStatement();
			ResultSet rs = stat.executeQuery(query);
			
			
			while(rs.next()) {
				
				Ridebooking rb = new Ridebooking();
				rb.setId(rs.getInt("id"));
				rb.setEmail(rs.getString("email"));
				rb.setLeaving(rs.getString("leaving"));
				rb.setGoing(rs.getString("going"));
				rb.setVehicle(rs.getString("vehicle"));
				rb.setDate(rs.getString("date"));
				rb.setTime(rs.getString("time"));
				ridelis.add(rb);
			}
			
			return ridelis ;
			
		} catch (Exception e) {
               
			e.printStackTrace();
			return null ;
		}
		
		
		
	}
	
	
	public Ridebooking getSingleById(int id) {
	    Ridebooking rb = null;
	    try {
	        String query = "SELECT * FROM rides WHERE id = " + id;
	        Statement stat = DBConnection.getConnection().createStatement();
	        ResultSet rs = stat.executeQuery(query);

	        if (rs.next()) {
	            rb = new Ridebooking();
	            rb.setId(rs.getInt("id"));
	            rb.setEmail(rs.getString("email"));
	            rb.setLeaving(rs.getString("leaving"));
	            rb.setGoing(rs.getString("going"));
	            rb.setVehicle(rs.getString("vehicle"));
	            rb.setDate(rs.getString("date"));
	            rb.setTime(rs.getString("time"));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return rb;
	}
  
	
	public void updateride(Ridebooking rb) {
		
		try {
			
			String query = "UPDATE rides SET email = '"+rb.getEmail()+"' , leaving = '"+rb.getLeaving()+"' , going = '"+rb.getGoing()+"' , vehicle = '"+rb.getVehicle()+"' , date = '"+rb.getDate()+"' , time = '"+rb.getTime()+"' WHERE id = '"+rb.getId()+"'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();		}
		
	}
	
	
	public void deleteRide(Ridebooking os) {
		try {
			String query = "DELETE from rides WHERE id = '" + os.getId() + "'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Ridebooking> getAllRides1(){
		
		try {
			
			ArrayList<Ridebooking> ridelis = new ArrayList<Ridebooking>();
			String query = "SELECT * from rides ";
			Statement stat = DBConnection.getConnection().createStatement();
			ResultSet rs = stat.executeQuery(query);
			
			
			while(rs.next()) {
				
				Ridebooking rb = new Ridebooking();
				rb.setId(rs.getInt("id"));
				rb.setEmail(rs.getString("email"));
				rb.setLeaving(rs.getString("leaving"));
				rb.setGoing(rs.getString("going"));
				rb.setVehicle(rs.getString("vehicle"));
				rb.setDate(rs.getString("date"));
				rb.setTime(rs.getString("time"));
				ridelis.add(rb);
			}
			
			return ridelis ;
			
		} catch (Exception e) {
               
			e.printStackTrace();
			return null ;
		}
		
		
		
	}
	
}
