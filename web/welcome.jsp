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
        a:link{color:black;}
        a:visited{color:black;}
        a:hover{color:dodgerblue;}
        a:active{color:dodgerblue;}
        a{text-decoration:none;font-family: "等线 Light";font-size: 20px;}
    </style>
    <title>welcome</title>
</head>
<body>
<br><br><hr><br>

<%
    if(session.getAttribute("state")!=null && session.getAttribute("state").equals("登录成功")){
%>
状态：<%=session.getAttribute("state")%>
<br>
欢迎你，用户<%=session.getAttribute("username")%>
<br>
<br>
<a href="logout.jsp">我要登出</a>
<%
    }else {
        session.setAttribute("state",null);
        %>
请先进行登录操作
<br>
<br>
<br>
<a href="login.jsp">点我登录</a>
<%
    }
%>
</body>
</html>
