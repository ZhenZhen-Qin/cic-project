<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
 <% request.setCharacterEncoding("gb2312"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
 .feedbackHide{
   visibility:hidden;
 }
 .feedbackShow{
    visibility:visible;
 }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<script type="text/javascript" src="js/validate.js" charset="utf-8"></script>

</head>
<body>
        <form name="form1" method="post" action="UploadServlet" enctype="multipart/form-data">
        
         <input type="file" name="image" />
         <input type="submit" name="上传照片" value="上传照片"/>
         <img src="<%=session.getAttribute("image") %>" id="photo" width="60" height="40"/>
       
      
       </form>
  <form  name="form" method="post" action="LoginServlet" onsubmit="return checkForm()">
     <table>
     <%
       Cookie c[]=request.getCookies();
      int count=c.length;
      String namevalue="请输入姓名";
      for(int i=0;i<count;i++){
    	  if (c[i].getName().equals("name"))
           namevalue=c[i].getValue();
      }
     %>
       <tr>
       <td>用户名：</td>
       <td><input type="text" name="userName" id="userName" value="<%=namevalue%>"/>
        <font color="red" class="feedbackHide" id="userNameMsg">
          用户名必须为字母和数字组成。
        </font>
       </td>
       </tr>
       <tr>
        <td>邮箱；</td>
        <td>
          <input type="text" name="email" id="email" />
          <font color="red" class="feedbackHide" id="emailMsg">
           邮箱格式不正确！
          </font>
        </td>
       </tr>
       <tr> 
         <td>密码:</td>
         <td>
         <input type="password" name="password" id="password"/>
         <font color="red" class="feedbackHide" id="passwordMsg">
         密码必须由字母和数字组成。
         </font>
         </td>
       </tr>
       <tr>
       <td>确认密码</td>
       <td>
        <input type="password" name="confirmPassword" id="confirmPassword"/>
        <font color="red" class="feedbackHide" id="confirmPasswordMsg">
        密码不一致。
        </font>
       </td>
       </tr>
       <tr>
       <td>性别 </td>
       <td>
        <input type="radio" name="sex" value="男"/>男
        <input type="radio" name="sex" value="女"/>女 
       </td>
       </tr>
       <tr>
       <td>爱好 </td>
       <td>
       <input type="checkbox" name="hobby" value="read"/>看书
       <input type="checkbox" name="hobby" value="game"/>游戏
       <input type="checkbox" name="hobby"  value="travel"/>旅行
       <input type="checkbox" name="hobby" value="program"/>编程
       </td>
       </tr>
       <tr>
         <td>家庭住址</td>
         <td>
           <select name="province" id="province">
             <option>--请选择省份--</option>
           </select>
           <select name="city" id="city">
             <option>--请选择城市--</option>
           </select>
           <select name="address" id="address">
             <option>--请选择区--</option>
           </select>
         </td>
       </tr>
      
     </table>
     
     <br>
     <input type="submit" value="登录"/>
     
  </form>
</body>
</html>