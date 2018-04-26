<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb23120">
<title>Insert title here</title>
</head>
<style type="text/css">
   .xx{
     visibility:hidden
   }
   .yy{
     visibility:visible
   }
</style>
<body>
   <script type="text/javasript">
   int x=0;
  window.onclick=function(){
if (x==0) x=1; else x=0;
  if (x==0){ document.getElementsByTagName("font")[0].className="xx";
       alert("xx");}else
        document.getElementsByTagName("font")[0].className="yy";
  };
</script>
   <font color="red" class="xx">´ó¼ÒºÃ</font>
   
</body>
</html>