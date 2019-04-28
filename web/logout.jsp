<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/9
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        .input_box{
            color: gray;
            height:40px;
            width: 250px;
            font-size: large;
            font-family: 等线;
            padding: 8px;
            margin-top: 16px;
            border-color: gainsboro;
            border-style:solid;
            border-width: 1px;
        }
    </style>
    <title>logout</title>
</head>
<body>
<div align="center">
<form action="login.jsp" >
    <input class="input_box" type="submit" value="登出">
</form></div>
<%
    session.setAttribute("state","已登出");
%>
</body>
</html>
