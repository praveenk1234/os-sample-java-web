<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://172.30.1.142:3306/test_db","test_user","test_user");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user");
while(rs.next())
	{
		out.println("user id = "+rs.getString(1));
		out.println("username = "+rs.getString(2));
		out.println("pass = "+rs.getString(3));
		out.println("col4 = "+rs.getString(4));
		out.println("col5 ="+rs.getString(5));
		out.println("col6 ="+rs.getString(6));
		out.println("col7 ="+rs.getString(7));
		out.println("-------------------------------------------------------");
	}
%>
