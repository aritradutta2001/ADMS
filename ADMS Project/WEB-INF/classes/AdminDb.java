 	package p1;
	import java.sql.*;
	

	public class AdminDb
	{
		static Connection con;
		PreparedStatement ps;
		ResultSet rs;
		public static void connect()throws Exception
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
		}
		public int insertDataAdmin(String f1,String f2, String f3,String f4)throws Exception //user defined method
		{
			connect();
			ps=con.prepareStatement("insert into admin_login values(?,?,?,?)");
			ps.setString(1,f1);
			ps.setString(2,f2);
			ps.setString(3,f3);
			ps.setString(4,f4);
			int i=ps.executeUpdate();
			con.close();
			return i;
		}
		public boolean checkLoginAdmin(String f1,String f2)throws Exception //user defined method
		{
			connect();
			boolean b=false;
			ps=con.prepareStatement("select * from admin_login where aid=? and pwd=?");
		      ps.setString(1,f1);
			ps.setString(2,f2);
			rs=ps.executeQuery();
			while(rs.next())
			{
				b=true;
			}
			con.close();
			return b;
 		}
		public String getAdminOldPassword(String f1) throws Exception //user defined method
		{
			String pass=null;	
			connect();
			ps=con.prepareStatement("select *from admin_login where aid=?");
			ps.setString(1,f1);
			rs=ps.executeQuery();
			while(rs.next())
			{
				pass=rs.getString("pwd");
			}
			con.close();
			return pass;
		}
		public int changePasswordAdmin(String f1,String f2)throws Exception //user defined method
		{
			connect();
			ps=con.prepareStatement("update admin_login set  pwd=? where pwd=?");
		      ps.setString(1,f2);
			ps.setString(2,f1);
			int i= ps.executeUpdate();
			con.close();
			return i;
 		}
		
		
	}	        
	
	







