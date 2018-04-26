<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<style type="text/css">
   .box{
      position:absolute;
      top:240px;
      width:120px;
      margin-left:-10px;
      list-style:none;
   }
  .box li{
  float:left; 
  border-radius:10px;
  background:gray;
  cursor:pointer;
  width:15px;
  height:15px;
  }
  .box li.cur{
    background:#f60;
  }
</style>
<script type="text/javascript">
  var sign=2;
  function showpic(index){
	  var fimage=document.getElementById("image");
	  var img="image/a"+index+".jpg";
	  fimage.src=img;
	  var lis=document.getElementsByClassName("box")[0].getElemenstByTagName("li");
	  for(var i=0;i<lis.length;i++){
		  lis[0].className="";
	  }
	  lis[index-1].className="cur";
  }
  function setCurrentPic(){
	  showpic(sign);
	  sign++;
	  if (sign==11) sign=1;
  }
  window.onload=function(){
   showpic(3);
  };
  
  window.setInterval("setCurrentPic()",1000);
</script>
</head>
<body>

  <img src="image/a6.jpg" width="250" height="236" id="image"/>
    
    <ul class="box">
      <li onclick="showpic(1)"></li>
      <li onclick="showpic(2);"></li>
      <li onclick="showpic(3)"></li>
      <li onclick="showpic(4);"></li>
      <li onclick="showpic(5);"></li>
      <li onclick="showpic(6);"></li>
      <li onclick="showpic(7);"></li>
      <li onclick="showpic(8);"></li>
      <li onclick="showpic(9);"></li>
      <li onclick="showpic(10);"></li>
    </ul>
    
 
</body>
</html>