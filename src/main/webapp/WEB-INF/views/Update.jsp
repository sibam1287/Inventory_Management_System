<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Registration</title>
</head>
<body>

    <div style="text-align: center; padding: 20px;">
        <h2>Edit Registration</h2>
        <form action="getRegistrationById" method="post" style="max-width: 300px; margin: 0 auto;">
            <div style="margin-bottom: 15px;">
                <label for="id">ID</label><br>
                <input type="text" id="id" name="id" value="${items.id}" style="width: 100%; padding: 8px; box-sizing: border-box;">
            </div>
            <div style="margin-bottom: 15px;">
                <label for="quantity">Quantity</label><br>
                <input type="text" id="quantity" name="quantity" value="${items.quantity}" style="width: 100%; padding: 8px; box-sizing: border-box;">
            </div>
            <div>
                <input type="submit" value="Update" style="width: 100%; padding: 10px; box-sizing: border-box;">
            </div>
        </form>
    </div>

</body>
</html>
