<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
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

<!DOCTYPE html>
<html>
<head>
     <meta charset="ISO-8859-1">
     <title>View Stock | Online Stock Management System</title>
<center>
<style>
h1{font-size:150%;}
body{background: linear-gradient(135deg, #71b7e6, #9b59b6);font-family: 'Poppins',sans-serif;}

.button {background-color: #e7e7e7; color: black;}
</style>
</head>


<body>
<h1 style="position: relative;color: #fff;">Stock Details</h1>

<!-- table for display added stock -->

<table>
<tr>
    <th colspan="7" style="background-color:#CCCCFF;">Stock records</th>
    </tr>
    <tr style="background-color:#9FE2BF;">
        <th class="border">Stock Number</th>
        <th class="border">Item Name</th>
        <th class="border">Item Description</th>
        <th class="border">Unit</th>
        <th class="border">Rate</th>
        <th class="border">Quantity</th>
        <th class="border">Amount</th>
      </tr>  
   
<!-- database connection -->   

 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from stock";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    
<!-- set data values for table data -->

    <c:forEach var="stock" items="${stocks}">
    	
    <c:set var="StockNo" value="${stock.stockno}"/>
    <c:set var="ItemName" value="${stock.itemname}"/>
    <c:set var="itemdescr" value="${stock.itemdescr}"/>
    <c:set var="unit" value="${stock.unit}"/>
    <c:set var="rate" value="${stock.rate}"/>    
    <c:set var="quantity" value="${stock.quantity}"/>
    <c:set var="amount" value="${stock.amount}"/>
    
    <tr>
    
<!-- set data values for update -->    
    
        <c:url value="/UpdateStock.jsp" var="update">

<c:param name="stockno" value="${ stockno}"/>
<c:param name="itemname" value="${ itemname}"/>
<c:param name="itemdescr" value="${ itemdescr}"/>
<c:param name="unit" value="${ unit}"/>
<c:param name="rate" value="${ rate}"/>
<c:param name="quantity" value="${ quantity}"/>
<c:param name="amount" value="${ amount}"/>
</c:url>


 <!-- set data values for delete -->
 
        <c:url value="/DeleteStock.jsp" var="delete">

<c:param name="stockno" value="${ stockno}"/>
<c:param name="itemname" value="${ itemname}"/>
<c:param name="itemdescr" value="${ itemdescr}"/>
<c:param name="unit" value="${ unit}"/>
<c:param name="rate" value="${ rate}"/>
<c:param name="quantity" value="${ quantity}"/>
<c:param name="amount" value="${ amount}"/>
</c:url>


         	<td><c:out value="${stock.stockno}"></c:out></td> 
            <td><c:out value="${stock.itemname}"></c:out></td>
            <td><c:out value="${stock.itemdescr}"></c:out></td>
            <td><c:out value="${stock.unit}"></c:out></td>
            <td><c:out value="${stock.rate}"></c:out></td>
            <td><c:out value="${stock.quantity}"></c:out></td>
            <td><c:out value="${stock.amount}"></c:out></td>

 
        </tr>
     
    
     </c:forEach> 
     
<!-- set result data connection -->     
     
<tr>
<td><%=resultSet.getInt("stockno") %></td>
<td><%=resultSet.getString("itemname") %></td>
<td><%=resultSet.getString("itemdescr") %></td>
<td><%=resultSet.getString("unit") %></td>
<td><%=resultSet.getString("rate") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("amount") %></td>

<!-- buttons for do update and delete -->

<td><a href="UpdateStock.jsp?id=<%=resultSet.getString("stockno")%>"><input type = "button" button class="button update" id="update" name="update" value="Update"></a></td>
<td><a href="DeleteStock.jsp?id=<%=resultSet.getString("stockno")%>"><input type = "button" button class="button delete" id="btn2" name="delete" value="Delete"></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>     
     
    
 </table>
 </br>
 
 <!-- button for insert stock data -->
 
<button type="button" style="height: 45px;margin: 35px 0height: 100%;width: 18%;border-radius: 5px;border: none;color: #fff;font-size: 18px;font-weight: 500;font-family: 'Poppins',sans-serif;color: black;letter-spacing: 1px;cursor: pointer;transition: all 0.3s ease;background: #CCCCFF;"
onclick="window.location='stock.jsp'">Insert Stock</button>


</body>
</center>
</html>
 