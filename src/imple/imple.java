package imple;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

import bean.diverbean;
import bean.drapplication;
import dbcon.Dbcon;

public class imple {
	int reg = 0;
	Connection con;

	public int mnreg(diverbean ob) {

		try {
			con=(Connection) Dbcon.create();

					java.sql.PreparedStatement ps=con.prepareStatement("INSERT INTO humansecurity.managementreg VALUES(id,?,?,?,?)");
			ps.setString(1, ob.getName());
			ps.setString(2, ob.getEmail());
			ps.setString(3, ob.getPass());
			ps.setString(4, "request");

			reg = ps.executeUpdate();

		} catch (SQLException e) {
//TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return reg;
	}

	public boolean manlog(diverbean ob) {
		// TODO Auto-generated method stub

		boolean log = false;
		try {

			con = (Connection) Dbcon.create();

		
		java.sql.PreparedStatement ps=con.prepareStatement("SELECT * FROM `humansecurity`.`managementreg` where email=? and pass=? ");
			ps.setString(1, ob.getEmail());
			ps.setString(2, ob.getPass());

			ResultSet rs = (ResultSet) ps.executeQuery();
			log = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return log;
	}

	
	public int drapplication(drapplication bu) {
		// TODO Auto-generated method stub
		
		
		
		try {
			con=(Connection) Dbcon.create();

					java.sql.PreparedStatement ps=con.prepareStatement("INSERT INTO humansecurity.driverapplication VALUES(id,?,?,?,?,?,?,?,?)");
			ps.setString(1, bu.getFname());
			ps.setString(2, bu.getLname());
			ps.setString(3, bu.getEmail());
			ps.setString(4, bu.getGender());
			ps.setString(5, bu.getVillage());
			ps.setString(6, bu.getCity());
			ps.setString(7, bu.getImage());
			ps.setString(8, "request");

			reg = ps.executeUpdate();
		
		
		} catch (SQLException e) {
			//TODO Auto-generated catch block
						e.printStackTrace();
					}
		
		return reg;
	}

}
