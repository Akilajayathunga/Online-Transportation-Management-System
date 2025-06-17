package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import Connection.DBConnection;
import model.Payment;

public class PaymentServices {

	
	public void addPay(Payment pay)
	{	
		
		try {
			
			
			String query = "Insert into payments Values('"+pay.getId()+"' , '"+pay.getCardNumber()+"' , '"+pay.cvv+"' , '"+pay.expiry+"' , '"+pay.payment+"')";
		       Statement sta = DBConnection.getConnection().createStatement();
		        sta.executeUpdate(query);
		} catch (Exception e) {
           e.printStackTrace();
		}
	}
	
	public Payment getSingel(int id) {
        Payment p = null;

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "SELECT * FROM payments WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                p = new Payment();
                p.setId(rs.getInt("id"));
                p.setCardNumber(rs.getString("card"));
                p.setCvv(rs.getString("cvv"));
                p.setExpiry(rs.getString("expiry"));
                p.setPayment(rs.getString("payment"));
            }

            rs.close();
            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return p;
    }
	
	
	public void updatePayment(Payment pay) {
		
		try {
			
			String query = "Update payments SET card= '"+pay.getCardNumber()+"' , cvv = '"+pay.getCvv()+"'  , expiry = '"+pay.getExpiry()+"' , payment = '"+pay.getPayment()+"' WHERE id = '"+pay.getId()+"'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deletePay(Payment pay) {
		try {
			String query = "DELETE from payments WHERE id = '" + pay.getId() + "'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
