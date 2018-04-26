var myCanvas=document.getElementById("myCanvas");
var context=myCanvas.getContext("2d");

myCanvas.onmousedown=function(e){
   var e=e||window.event; 
   var x=e.clientX-this.offsetLeft;
   var y=e.clientY-this.offsetTop;
   var cc=document.getElementById("cc");
   var pen=document.getElementById("pen");
   myCanvas.onmousemove=function(e){
	   var ee=e||window.event;  
	   var x1=e.clientX-this.offsetLeft;
	   var y1=e.clientY-this.offsetTop;
	   
	   if (document.getElementById("delete").checked){
		   context.strokeStyle="#f0f0f0";
	   }else{
	      context.strokeStyle=cc.value;
	   }
	   context.lineWidth=pen.value;
	   context.beginPath();
	   context.moveTo(x,y);
	   context.lineTo(x1,y1);
	   context.stroke();
	   x=x1; y=y1;
   };
   myCanvas.onmouseup=function(){
	  myCanvas.onmousemove=null; 
   };
};

function save(){
	var image=myCanvas.toDataURL("image/png");
	var my=window.open("","","width=400,height=300");
	my.document.write("这是我画的！<br>");
	my.document.write("<img src='"+image+"'/>"); 
}

function save1(){
	var image=myCanvas.toDataURL("image/png").replace("image/png","image/octet-stream");
	//location history
	window.location.href=image;
}

