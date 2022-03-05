<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!-- database connection -->

<%
String id = request.getParameter("stockno");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "stock_management";
String userid = "root";
String password = "runrunzx";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from stock where stockno";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<!DOCTYPE html>
<html>
<head>
<style>
h1{font-size:150%;}
body{background: linear-gradient(135deg, #71b7e6, #9b59b6);font-family: 'Poppins',sans-serif;}

</style>
     <meta charset="ISO-8859-1">
     <title>Confirm Stock Delete | Online Stock Management System</title>
</head>

<body>

<h1 style="position: relative;color: #fff;">Confirm Delete</h1>

</br>

<!-- database connection to get data -->

<%
String stockno = request.getParameter("stockno");
String itemname = request.getParameter("itemname");
String itemdescr = request.getParameter("itemdescr");
String unit = request.getParameter("unit");
String rate = request.getParameter("rate");
String quantity = request.getParameter("quantity");
String amount = request.getParameter("amount");
%>

<!-- set want delete data to a form -->

<form action ="deletestockservlet" method="Post">

Stock Number<input type="text" name="stockno" value="<%=resultSet.getString("stockno") %>"readonly><br>
Item Name<input type="text" name="itemname" value="<%=resultSet.getString("itemname") %>"><br>
Item Description<input type="text" name="itemdescr" value="<%=resultSet.getString("itemdescr") %>"><br>
Unit<input type="text" name="unit" value="<%=resultSet.getString("unit") %>"><br>
Rate<input type="text" name="rate" value="<%=resultSet.getString("rate") %>"><br>
Quantity<input type="text" name="quantity" value="<%=resultSet.getString("quantity") %>"><br>
Amount<input type="text" name="amount" value="<%=resultSet.getString("amount") %>"><br>



</br>

<!-- button for delete data -->

<input type ="submit" name="submit" value="Delete Stock Data">



</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>





</body>
</html>