	package p1;
	import java.sql.*;
   

	public class Feedback
	{
		static Connection con;
		PreparedStatement ps;
		ResultSet rs;
		public static void connect()throws Exception
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");
		}
		public int insertData(String f1,String f2, String f3,String f4)throws Exception //user defined method
		{
			connect();
			ps=con.prepareStatement("insert into feedback values(?,?,?,?)");
			ps.setString(1,f1);
			ps.setString(2,f2);
			ps.setString(3,f3);
            ps.setString(4,f4);
			int i=ps.executeUpdate();
            
			con.close();
			return i;
		}
		
	}	        
	
	







