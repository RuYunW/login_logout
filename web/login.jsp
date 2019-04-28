<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/9
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
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
    <title>login</title>
    <%
//        session.setAttribute("state",null);
        String uname = request.getParameter("username");
        String pword = request.getParameter("password");
        String u = "sdnu";
        String p = "1234";
        if(u.equals(uname)&&p.equals(pword)){
            session.setAttribute("username",u);
            session.setAttribute("state","登录成功");
            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }
        else if(uname!=null){
            session.setAttribute("state","登录失败");
    %>
    <%=session.getAttribute("state")%>
    <%
        }
        else if(session.getAttribute("state")!=null){
            %>
    <%=session.getAttribute("state")%>
    <%
        }

    %>
</head>

<body>
<br><br><hr>
<form action="login.jsp">
    <div align="center">
        <input type="text" class="input_box" placeholder="账号" name="username" >
        <br>
        <input type="password" class="input_box" placeholder="密码" name="password">
        <br>
        <input type="submit" class="input_box" value="登录">
    </div>
</form>
</body>
</html>
