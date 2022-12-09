<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = null;
Statement statement = null; ResultSet resultSet = null;
String name=request.getParameter("name"); String pass=request.getParameter("password");
connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/webtechnology","roo t", “”);
statement=connection.createStatement();
String sql ="SELECT * FROM users WHERE name='"+name+"' AND password='"+pass+"'"; 
resultSet = statement.executeQuery(sql);
int rowCount=0; while(resultSet.next()){
rowCount++; } if(rowCount>0){ %> Login Successfully
<% }
else{ %> Login Failed
<% } %>
