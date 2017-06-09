<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://172.30.1.142:3306/test_db","test_user","test_user");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user");
	if(rs.next())
	{
	
		out.println("welcome"+rs.getString(1));
	
	}
	else
	{
		out.println("Invalid password try again");
	}
%>
