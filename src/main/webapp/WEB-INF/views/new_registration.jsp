<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<title>Welcome to My Page</title>
</head>
<body>
    <div style="text-align: center; padding: 20px;">
        <h2>Welcome to my page</h2>
        <form action="saveReg" method="post" style="max-width: 300px; margin: 0 auto;">
            <div style="margin-bottom: 15px;">
                <label for="name">Name</label><br>
                <input type="text" id="name" name="name" style="width: 100%; padding: 8px; box-sizing: border-box;">
            </div>
            <div style="margin-bottom: 15px;">
                <label for="vendor">Vendor</label><br>
                <input type="text" id="vendor" name="vendor" style="width: 100%; padding: 8px; box-sizing: border-box;">
            </div>
            <div style="margin-bottom: 15px;">
                <label for="price">Price</label><br>
                <input type="text" id="price" name="price" style="width: 100%; padding: 8px; box-sizing: border-box;">
            </div>
            <div style="margin-bottom: 15px;">
                <label for="quantity">Quantity</label><br>
                <input type="text" id="quantity" name="quantity" style="width: 100%; padding: 8px; box-sizing: border-box;">
            </div>
            <div>
                <input type="submit" value="Save" style="width: 100%; padding: 10px; box-sizing: border-box;">
            </div>
        </form>
        ${msg}
    </div>
</body>
</html>
