package Imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import Bean.managebean;
import Bean.sregbean;
import Bean.taskbean;
import Bean.tlfilebean;
import Bean.tlregbean;
import Dbconn.dbconn;
import Inter.Inter;

public class Imple implements Inter {

	Connection con;
	@Override
	public int tlreg(tlregbean tb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO mechanic.tlregister VALUES(id,?,?,?,?,?,?,?)");
				ps.setString(1, tb.getName());
				ps.setString(2, tb.getEmail());
				ps.setString(3, tb.getMobile());
				ps.setString(4, tb.getPassword());
				ps.setString(5, tb.getCpassword());
				ps.setString(6, tb.getImage());
				ps.setString(7, tb.getTeam());
				
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
		
return reg;
	}
	@Override
	public boolean tlog(tlregbean tb) {
		// TODO Auto-generated method stub
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `mechanic`.`tlregister` where email=? and password=? and team=?");
				
				ps.setString(1, tb.getEmail());
				ps.setString(2, tb.getPassword());
				ps.setString(3, tb.getTeam());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}
	@Override
	public int tlf(tlfilebean tf) {
		// TODO Auto-generated method stub
		int dd=0;
		try
		{
			 con=dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO mechanic.tlfileadd VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, tf.getName());
			 ps.setString(2, tf.getMobile());
			 ps.setString(3, tf.getFilename());
			 ps.setString(4, tf.getFiletype());
			 ps.setString(5, tf.getFilesize());
			 ps.setString(6, tf.getFilecontent());
			 ps.setString(7, tf.getEncrypt());
			 ps.setString(8, tf.getDecrypt());
			 ps.setString(9, tf.getMail());
			 ps.setString(10, tf.getDob());
			 ps.setString(11, tf.getLocation());
			 ps.setString(12, tf.getAathor());
			 ps.setString(13, tf.getAge());
			 ps.setString(14, tf.getAddress());
			 ps.setString(15, tf.getLicense());
			 ps.setString(16, "not approved");
			 ps.setString(17, tf.getTeam());
			 ps.setString(18, tf.getmap());
			 
			 dd=ps.executeUpdate();	
			 
			 System.out.println("pin" +tf.getmap());
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
	@Override
	public int sreg(sregbean sb) {
int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO mechanic.staffreg VALUES(id,?,?,?,?,?,?,?)");
				ps.setString(1, sb.getName());
				ps.setString(2, sb.getEmail());
				ps.setString(3, sb.getMobile());
				ps.setString(4, sb.getPassword());
				ps.setString(5, sb.getCpassword());
				ps.setString(6, sb.getImage());
				ps.setString(7, sb.getTeam());
				
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return reg;

}
	@Override
	public boolean slog(sregbean sl) {
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `mechanic`.`staffreg` where email=? and password=?");
				
				ps.setString(1, sl.getEmail());
				ps.setString(2, sl.getPassword());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}
	@Override
	public int task(taskbean t) {
		int dd=0;
		try
		{
			 con=dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO mechanic.task VALUES(idtask,?,?,?,?,?,?,?,?)");
			 ps.setString(1, t.getTask());
			 ps.setString(2, t.getDes());
			 ps.setString(3, t.getFilename());
			 ps.setString(4, t.getTlemail());
			 ps.setString(5, t.getTeam());
			 ps.setString(6, t.getTlkey());
			 ps.setString(7, "Request");
			 ps.setString(8, t.getStaff());
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
	@Override
	public int upk(taskbean u) {
		int update=0;
		try
		{
			con=dbconn.create();
			PreparedStatement ps = con.prepareStatement("UPDATE mechanic.task  SET status='"+u.getStatus()+"' where idtask='"+u.getId()+"'");
			update=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return update;
	}
	@Override
	public int mkey(managebean mb) {
		int dd=0;
		try
		{
			 con=dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO mechanic.manageract VALUES(id,?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, mb.getTask());
			 ps.setString(2, mb.getFilename());
			 ps.setString(3, mb.getTlemail());
			 ps.setString(4, mb.getTeam());
			 ps.setString(5, mb.getTkey());
			 ps.setString(6, mb.getSemail());
			 ps.setString(7, mb.getMkey());
			 ps.setString(8, mb.getPhash());
			 ps.setString(9, mb.getAhash());
			 ps.setString(10, mb.getMail());
			 ps.setString(11, "sended");
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
}
