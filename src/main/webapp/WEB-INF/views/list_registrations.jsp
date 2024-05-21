<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="margin: 20px;">

     <table style="border-collapse: collapse; width: 100%;">
     <thead>
          <tr style="background-color: #f2f2f2;">
          <th style="padding: 10px; border: 1px solid #ccc;">Name</th>
          <th style="padding: 10px; border: 1px solid #ccc;">Vendor</th>
          <th style="padding: 10px; border: 1px solid #ccc;">Price</th>
          <th style="padding: 10px; border: 1px solid #ccc;">Quantity</th>
          <th style="padding: 10px; border: 1px solid #ccc;">Delete</th>
          <th style="padding: 10px; border: 1px solid #ccc;">Edit</th>
 
          </tr>
          </thead>
          <tbody>
          <c:forEach var="item" items="${item}">
          <tr>
          <td style="padding: 10px; border: 1px solid #ccc;">${item.name}</td>
          <td style="padding: 10px; border: 1px solid #ccc;">${item.vendor}</td>
          <td style="padding: 10px; border: 1px solid #ccc;">${item.price}</td>
          <td  style="padding: 10px; border: 1px solid #ccc;">${item.quantity}</td>
          <td style="padding: 10px; border: 1px solid #ccc;"><a href="delete?id=${item.id}">delete</a></td>
          <td style="padding: 10px; border: 1px solid #ccc;"><a href="getRegistrationById?id=${item.id}&quantity=${item.quantity}">Edit</a></td>
          </tr>
   </c:forEach>
   </tbody>
    </table>
   </div>
</body>
</html>