<%--
  Created by IntelliJ IDEA.
  User: karthik.kantam
  Date: 17/04/22
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error page</title>

    <style>

        .full-screen {
            background-color: rgb(51, 51, 51);
            width: 100vw;
            height: 100vh;
            color: white;
            font-family: 'Arial Black';
            text-align: center;
        }



        .container {
            padding-top: 4em;
            width: 50%;
            display: block;
            margin: 0 auto;
        }



        .eye {
            background: #fff;
            border-radius: 50%;
            display: inline-block;
            height: 100px;
            position: relative;
            width: 100px;
        }
        .eye::after {
             background: #000;
             border-radius: 50%;
             bottom: 56.1px;
             content: ' ';
             height: 33px;
             position: absolute;
             right: 33px;
             width: 33px;
         }




        .italic {
            font-style: italic;
        }



        p {
            margin-bottom: 4em;
        }



        a {
            color: white;
            text-decoration: none;
            text-transform: uppercase;
        }
        a:hover {
             color: lightgray;
         }


    </style>


</head>
<body>

<%--<h3>Login details mismatch.</h3>--%>
<%--<br/>--%>
<%--<br/>--%>
<%--Go back to <a href="/chef-login">Login Page</a>--%>
<%--&lt;%&ndash;Go back to <a href="<c:url value='/chef-login' />">Login page</a>&ndash;%&gt;--%>

<div class="full-screen">
    <div class='container'>
        <div class='eye'></div>
        <div class='eye'></div>



        <p class="sub-text">Wrong Credentials, Please try again...</p>
        <a href="/chef-login">Go back</a>
    </div>
</div>

<script src="jquery-3.6.0.min.js"></script>
<script>

    $(".full-screen").mousemove(function(event) {
        var eye = $(".eye");
        var x = (eye.offset().left) + (eye.width() / 2);
        var y = (eye.offset().top) + (eye.height() / 2);
        var rad = Math.atan2(event.pageX - x, event.pageY - y);
        var rot = (rad * (180 / Math.PI) * -1) + 180;
        eye.css({
            '-webkit-transform': 'rotate(' + rot + 'deg)',
            '-moz-transform': 'rotate(' + rot + 'deg)',
            '-ms-transform': 'rotate(' + rot + 'deg)',
            'transform': 'rotate(' + rot + 'deg)'
        });
    });


</script>
</body>
</html>
