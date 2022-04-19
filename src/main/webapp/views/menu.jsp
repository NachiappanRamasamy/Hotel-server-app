<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order here</title>

    <style>
        h1{
            text-align: center;
        }
        form{
            display:flex;
            flex-direction:column;
            align-items: center;
            justify-content: center;
        }
        .table-no{
            font-size: 1.5em;
            margin-bottom:1em;
        }
        table {
            font-family: arial, sans-serif;
            font-size: 1.5em;
            border-collapse: collapse;
            width: 50%;
            background-color: #ACFFAD;
        }



        td, th {
            border: 1px solid #71EFA3;
            text-align: center;
            padding: 8px;
        }



        tr:nth-child(even) {
            background-color: #71EFA3;
        }
        input{
            font-size: 1em;
        }
        button{
            margin-top: 1em;
            font-size: 1.5em;
            background-color: #54436B;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h1>Place your order </h1>

<form action="/menu" method="POST">
<div>
  <label class="table-no">Table number:</label>
  <input class="table-no" name="tableNumber" type="number" min="0" max="10">
</div>
<table>
  <tr>
    <th>Food</th>
    <th>Price</th>
    <th>Quantity</th>
  </tr>
  <c:forEach items="${foods}" var="food">
	  <tr>
	    <td>${food.food_name }</td>
	    <td>₹ ${food.food_price }</td>
	    <td><input name="${food.food_id }" type="number" value="0"/></td>
	  </tr>
  </c:forEach>
</table>

<button class="order-btn">Order</button>

</form>

</body>
</html>