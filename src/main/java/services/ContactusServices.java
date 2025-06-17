package services;

import java.sql.ResultSet;
import java.sql.Statement;

import Connection.DBConnection;
import model.Contactus;

public class ContactusServices {

	public void addMsg(Contactus cs) {

		try {

			String query = "INSERT INTO Contact Values('" + cs.getEmail() + "' , '" + cs.getName() + "' ,  '"
					+ cs.getDate() + "' , '" + cs.getMsg() + "' )";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Contactus getone(Contactus us) {

		try {

			String query = "SELECT * FROM Contact WHERE email = '" + us.getEmail() + "' ";
			Statement stat = DBConnection.getConnection().createStatement();
			ResultSet rs = stat.executeQuery(query);
			if (rs.next()) {
				us.setName(rs.getString("name"));
				us.setEmail(rs.getString("email"));
				us.setMsg(rs.getString("Msg"));
				us.setDate(rs.getDate("date"));

				return us;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;

	}

	public void Update(Contactus cs) {

		try {

			String query = "UPDATE Contact SET name = '" + cs.getName() + "'  , Date = '" + cs.getDate() + "' , Msg = '" + cs.getMsg() + "' ";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public void delet(Contactus cs) {
		try {
			String query = "DELETE from Contact WHERE email = '" + cs.getEmail() + "'";
			Statement stat = DBConnection.getConnection().createStatement();
			stat.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
