<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@ page import="com.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
</head>
<body>
  <%
    User user=(User)request.getSession().getAttribute("user");
  //System.out.println(user.getUserName());
  out.println("��ӭ�㣡"+user.getUserName());
  %>
  <img src="<%=session.getAttribute("image") %>" width="30" height="30"/>
  ��İ����У�
  <%
    for(int i=0;i<user.getHobby().length;i++){
    	out.print(user.getHobby()[i]+"  ");
    }
  %>
</body>
</html>