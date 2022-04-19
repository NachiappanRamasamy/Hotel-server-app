<%--
  Created by IntelliJ IDEA.
  User: karthik.kantam
  Date: 18/04/22
  Time: 6:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
    <style>

        body{
            background-image:url("https://images.pexels.com/photos/6098744/pexels-photo-6098744.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            color: white;
        }



        .wrapper{
            display:flex;
            flex-direction:column;
            align-items: center;
        }



        button{
            width:100%;
            margin: 20px;
            background-color: #3a9859;
            padding:10px;
        }



        button > a{
            color: white;
            padding:10px;
            font-size:1.5em;
            text-decoration: none;
        }

    </style>
</head>
<body>
<div class="wrapper">
    <h1>Welcome to Sirius Hotel!!!</h1>
    <h2>Choose your role</h2>
    <div>
        <button> <a href="/menu">Waiter</a></button>
        <button> <a href="/chef-login">Chef</a></button>
    </div>
</div>
</body>
</html>
