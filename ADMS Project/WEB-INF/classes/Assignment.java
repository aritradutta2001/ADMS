	package p1;
	import java.sql.*;


	public class Assignment
	{
		static Connection con;
		PreparedStatement ps;
		ResultSet rs;
		public static void connect()throws Exception
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
		}
		public int insertData(String f1,String f2, String f3,String f4,String f5,String f6,String f7)throws Exception //user defined method
		{
			connect();
			ps=con.prepareStatement("insert into assignments values(?,?,?,?,?,?,?)");
			ps.setString(1,f1);
			ps.setString(2,f2);
			ps.setString(3,f3);
			ps.setString(4,f4);
            ps.setString(5,f5);
			ps.setString(6,f6);
			ps.setString(7,f7);
			int i=ps.executeUpdate();
            
			con.close();
			return i;
		}
		
	}	        
	
	







