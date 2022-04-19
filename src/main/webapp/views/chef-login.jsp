<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: karthik.kantam
  Date: 17/04/22
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Chef Login</title>
    <style>
        @import url("https://fonts.googleapis.com/css?family=Lato:400,700");
        #bg {
            background-image: url("https://images.pexels.com/photos/5410418/pexels-photo-5410418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            filter: blur(5px);
        }
        body {
            font-family: 'Lato', sans-serif;
            color: #4A4A4A;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
            margin: 0;
            padding: 0;
        }
        form {
            width: 350px;
            position: relative;
        }
        form .form-field::before {
            font-size: 20px;
            position: absolute;
            left: 15px;
            top: 17px;
            color: #888888;
            content: " ";
            display: block;
            background-size: cover;
            background-repeat: no-repeat;
        }
        form .form-field:nth-child(1)::before {
            /*background-image: url('user-icon.png');*/
            background-image: url("../img/user-icon.png");
            width: 20px;
            height: 20px;
            top: 15px;
        }
        form .form-field:nth-child(2)::before {
            background-image: url('../img/lock-icon.png');
            width: 16px;
            height: 16px;
        }
        form .form-field {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            margin-bottom: 1rem;
            position: relative;
        }
        form input {
            font-family: inherit;
            width: 100%;
            outline: none;
            background-color: #fff;
            border-radius: 4px;
            border: none;
            display: block;
            padding: 0.9rem 0.7rem;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
            font-size: 17px;
            color: #4A4A4A;
            text-indent: 40px;
        }
        form .btn {
            outline: none;
            border: none;
            cursor: pointer;
            display: inline-block;
            margin: 0 auto;
            padding: 0.9rem 2.5rem;
            text-align: center;
            background-color: #47AB11;
            color: #fff;
            border-radius: 4px;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
            font-size: 17px;
        }
    </style>
</head>
<body>

<%--<h2>Chef Login</h2>--%>
<%--<form method="post" modelAttribute="chef">--%>
<%--    <input type="text" name="chefId" placeholder="Chef ID">--%>
<%--    <br>--%>
<%--    <input type="password" name="password" placeholder="Password">--%>
<%--    <br>--%>
<%--    <button>Submit</button>--%>
<%--</form>--%>


<%--&lt;%&ndash;@elvariable id="chef" type=""&ndash;%&gt;--%>
<%--<form:form method="POST" modelAttribute="chef">--%>
<%--&lt;%&ndash;    <form:input type="hidden" path="id" id="id"/>&ndash;%&gt;--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <td><label for="id">Chef ID : </label> </td>--%>
<%--            <td><form:input path="chef_id" id="id"/></td>--%>
<%--&lt;%&ndash;            <td><form:errors path="name" cssClass="error"/></td>&ndash;%&gt;--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td><label for="password" >Password :  </label> </td>--%>
<%--            <td><form:input path="chef_pwd" id="password" type="password"/></td>--%>
<%--&lt;%&ndash;            <td><form:errors path="joiningDate" cssClass="error"/></td>&ndash;%&gt;--%>
<%--        </tr>--%>
<%--        <tr>--%>

<%--            <td>--%>
<%--                <button>Submit</button>--%>
<%--            </td>--%>

<%--        </tr>--%>

<%--    </table>--%>
<%--</form:form>--%>


<div id="bg"></div>
<%--@elvariable id="chef" type=""--%>
<form:form method="POST" modelAttribute="chef">
    <div class="form-field">
        <form:input path="chef_id" type="text" placeholder="Chef Id" />
    </div>
    <div class="form-field">
        <form:input path="chef_pwd" type="password" placeholder="Password" />
    </div>
    <div class="form-field">
        <button class="btn" type="submit">Log in</button>
    </div>
</form:form>

</body>
</html>
