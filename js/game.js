var image=new Image();
image.src="image/a12.jpg";
var myCanvas=document.getElementById("myCanvas");
image.width=myCanvas.width;
image.height=myCanvas.height;

var context=myCanvas.getContext("2d");

var widthNum=4; 
var heightNum=4; 

var martix=new Array();
var k=0;
for(var i=0;i<heightNum;i++){
	martix[i]=new Array();
	for(var j=0;j<widthNum;j++){
		martix[i][j]=k; k=k+1;
	}
}
martix[0][widthNum-1]=widthNum*heightNum;

var widthPer=myCanvas.width/widthNum;
var heightPer=myCanvas.height/heightNum;

function drawLine(){
	for(var i=0;i<=heightNum;i++){
		context.moveTo(0,heightPer*i);                 //0,0   400,0   
		context.lineTo(myCanvas.height,heightPer*i);            // 0,100, 400,100
	}
	for(var i=0;i<=widthNum;i++){
		context.moveTo(i*widthPer,0);  //0,0  0,400
		context.lineTo(i*widthPer,myCanvas.width);             //80,0  80,400
	}
	context.stroke();
}
function drawPic(){
	//清空画布
	context.fillStyle="#f0f0f0"; //
	context.fillRect(0,0,myCanvas.width,myCanvas.height);
	//根据martix的值来绘制画布
	for(var i=0;i<martix.length;i++){
		for(var j=0;j<martix[i].length;j++){  //martix[i][j]=16;
			if (martix[i][j]!=widthNum*heightNum){
			 var pointX=Math.floor(martix[i][j]%widthNum)*widthPer;
			 var pointY=Math.floor(martix[i][j]/widthNum)*heightPer;
			 context.drawImage(image,pointX,pointY,widthPer,heightPer,j*widthPer,i*heightPer,widthPer,heightPer);
			}
		}
	}
	
	//一下代码咩有用，是测试的
	for(var i=0;i<martix.length;i++){
		for(var j=0;j<martix[i].length;j++){
			console.log(martix[i][j]);
		}
	}
	//
	if (isSuccess()){
	//在这里你要查文档找到在画布上写艺术文字的方法和属性
		//设置文字的大小，文字的阴影，轮廓，颜色，阴影的颜色
	   context.fontSize=20;
	   
	   context.fillText("success",100,100);
	}else{
	  drawLine(); 
	}
}
//JSON 对象  whiteBlock.row=5;
var whiteBlock={row:0,col:widthNum-1};

function moveRight(){
	if(whiteBlock.col<widthNum-1){
		martix[whiteBlock.row][whiteBlock.col]=martix[whiteBlock.row][whiteBlock.col+1];
		martix[whiteBlock.row][whiteBlock.col+1]=widthNum*heightNum;
		whiteBlock.col=whiteBlock.col+1; }
}
function moveLeft(){
	if(whiteBlock.col>0){
		martix[whiteBlock.row][whiteBlock.col]=martix[whiteBlock.row][whiteBlock.col-1];
		martix[whiteBlock.row][whiteBlock.col-1]=widthNum*heightNum;
		whiteBlock.col=whiteBlock.col-1; }
}
function moveUp(){
	if(whiteBlock.row>0){
		martix[whiteBlock.row][whiteBlock.col]=martix[whiteBlock.row-1][whiteBlock.col];
		martix[whiteBlock.row-1][whiteBlock.col]=widthNum*heightNum;
		whiteBlock.row=whiteBlock.row-1; }
}
function moveDown(){
	if(whiteBlock.row<heightNum-1){
	martix[whiteBlock.row][whiteBlock.col]=martix[whiteBlock.row+1][whiteBlock.col];
	martix[whiteBlock.row+1][whiteBlock.col]=widthNum*heightNum;
	whiteBlock.row=whiteBlock.row+1; }
}

function isSuccess(){
   //martix的值是否是  0 1 2 3 20 | 5 6 7 8 9|10 11 12 ..
   var flag=true;
   if (martix[0][widthNum-1]!=widthNum*heightNum)
	   return false;
   //alert("sss");
   for(var i=0;i<martix.length;i++){
	   for(var j=0;j<martix[i].length;j++){
		   if (!(i==0&&j==widthNum-1)){
		   if (martix[i][j]!=i*widthNum+j){
			   flag=false;
		   } }
	   }
   }
   //alert("sss");
   return flag;
}

function init(){
	//打乱martix数组,随机的上下左右移动一番，直到空白到了左下角
	var k=0;
	while(true){ 
		var ran=Math.floor(Math.random()*4);
		switch(ran){
		case 0:
			moveUp(); break;
		case 1: moveDown();break;
		case 2: moveRight();break;
		case 3: moveLeft();break;
		}
		k=k+1;
		if (k==20) break;
	}
	drawPic();
}
window.onload=function(){ 
   init();
};

document.body.onkeydown=function(e){
	var e=e||window.event; 
	//37左  39右  38 上  40 下
	if (e.keyCode==37){
		moveLeft();
	}
	if (e.keyCode==38){
		moveUp();
	}
	if (e.keyCode==39){
		moveRight();
	}
	if (e.keyCode==40){
		moveDown();
	}
	
		drawPic();
	
	
};