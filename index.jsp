<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script type="text/javascript">
  function insertStart(){
	  appendRow(1);
  }
  function insertEnd(){
	  var index=document.getElementById("myTable").rows.length;
	 // alert(index);
	  appendRow(index);
  }
  function appendRow(index){
	  var myTable=document.getElementById("myTable");
	  var row=myTable.insertRow(index);
	  row.insertCell(0).innerHTML=document.getElementById("userId").value;
	  row.insertCell(1).innerHTML=document.getElementById("userName").value;
	  row.insertCell(2).innerHTML=document.getElementById("telephone").value;
	  row.insertCell(3).innerHTML="<input type='button' value='删除' onclick='deleteRow(this)'/>";
  }
  function deleteRow(bbt){
	  var index=bbt.parentNode.parentNode.rowIndex;
	  var myTable=document.getElementById("myTable");
	  myTable.deleteRow(index);
  }
  function insert(){
	  var index=document.getElementById("userId").value;
	  var arrayRow=document.getElementById("myTable").rows;
	  for(var i=0;i<arrayRow.length;i++){
		  if (arrayRow[i].cells[0].innerHTML==index) {
			  alert("不能插入");return;
		  }
	  }
	  if (index<0||index>arrayRow.length) {
		  alert("不能插入");return ;
	  }
	  appendRow(index);
  }
</script>
</head>
<body>

 <table id="myTable" border="1" width="200">
   <tr>
     <th>ID</th>
     <th>姓名 </th>
     <th>电话</th>
     <th>删除</th>
   </tr>
   <tr>
     <td>2</td>
     <td>张小娴</td>
     <td>13122885169</td>
     <td>
        <input type="button" value="删除" onclick="deleteRow(this)"/>
     </td>
   </tr>
    <tr>
     <td>3</td>
     <td>李鹏</td>
     <td>14322885169</td>
     <td>
        <input type="button" value="删除" onclick="deleteRow(this)"/>
     </td>
   </tr>
 </table>
 ID：<input type="text" id="userId" /><br/>
 姓名 ： <input type="text" id="userName"/><br/>
 电话:<input type="text" id="telephone"/><br/>
 <input type="button" value="头部插入一行 " onclick="insertStart()"/>
 <input type="button" value="尾部追加一行 " onclick="insertEnd()"/>
 <br/>
 <input type="button" value="插入" onclick="insert()"/>
</body>
</html>