<%@ page import="com.model.Food" %>
<%@ page import="com.service.FoodService" %>
<%@ page import="com.service.FoodServiceImpl" %>
<%@ page import="com.model.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.OrderDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Orders</title>

    <style>
        body{
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            gap: 1rem;
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
            padding: 0.5em;

        }
        button>a{
            text-decoration: none;
            color: #fff;


        }
    </style>
 
</head>
 
 
<body>
    <h2>List of Orders</h2>
    

    <table>
        <tr>
            <th>Dish-name</th><th>Quantity</th><th>Table-no</th>
        </tr>
<%--        <c:forEach items="${orderService.findAllOrders()}" var="order">--%>
        <c:forEach items="${orders}" var="order">
            <%  %>
            <tr>
            <td>${order.dish_name}</td>
<%--            <td>${order.ordered_food_id}</td>--%>
            <td>${order.quantity}</td>
                <td>${order.table_no}</td>
            </tr>
        </c:forEach>
    </table>
     <button><a href="/">Logout</a></button>
</body>
</html>