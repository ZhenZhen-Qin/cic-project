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
         <input type="submit" name="�ϴ���Ƭ" value="�ϴ���Ƭ"/>
         <img src="<%=session.getAttribute("image") %>" id="photo" width="60" height="40"/>
       
      
       </form>
  <form  name="form" method="post" action="LoginServlet" onsubmit="return checkForm()">
     <table>
     <%
       Cookie c[]=request.getCookies();
      int count=c.length;
      String namevalue="����������";
      for(int i=0;i<count;i++){
    	  if (c[i].getName().equals("name"))
           namevalue=c[i].getValue();
      }
     %>
       <tr>
       <td>�û�����</td>
       <td><input type="text" name="userName" id="userName" value="<%=namevalue%>"/>
        <font color="red" class="feedbackHide" id="userNameMsg">
          �û�������Ϊ��ĸ��������ɡ�
        </font>
       </td>
       </tr>
       <tr>
        <td>���䣻</td>
        <td>
          <input type="text" name="email" id="email" />
          <font color="red" class="feedbackHide" id="emailMsg">
           �����ʽ����ȷ��
          </font>
        </td>
       </tr>
       <tr> 
         <td>����:</td>
         <td>
         <input type="password" name="password" id="password"/>
         <font color="red" class="feedbackHide" id="passwordMsg">
         �����������ĸ��������ɡ�
         </font>
         </td>
       </tr>
       <tr>
       <td>ȷ������</td>
       <td>
        <input type="password" name="confirmPassword" id="confirmPassword"/>
        <font color="red" class="feedbackHide" id="confirmPasswordMsg">
        ���벻һ�¡�
        </font>
       </td>
       </tr>
       <tr>
       <td>�Ա� </td>
       <td>
        <input type="radio" name="sex" value="��"/>��
        <input type="radio" name="sex" value="Ů"/>Ů 
       </td>
       </tr>
       <tr>
       <td>���� </td>
       <td>
       <input type="checkbox" name="hobby" value="read"/>����
       <input type="checkbox" name="hobby" value="game"/>��Ϸ
       <input type="checkbox" name="hobby"  value="travel"/>����
       <input type="checkbox" name="hobby" value="program"/>���
       </td>
       </tr>
       <tr>
         <td>��ͥסַ</td>
         <td>
           <select name="province" id="province">
             <option>--��ѡ��ʡ��--</option>
           </select>
           <select name="city" id="city">
             <option>--��ѡ�����--</option>
           </select>
           <select name="address" id="address">
             <option>--��ѡ����--</option>
           </select>
         </td>
       </tr>
      
     </table>
     
     <br>
     <input type="submit" value="��¼"/>
     
  </form>
</body>
</html>