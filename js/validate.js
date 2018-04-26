/**
 * 
 */
 var provinces=["山东省","山西省","河北省"];
 var cities=[["济南市","青岛市"],["大同市 ","太原市"],["石家庄市","廊坊市"]];
 var areas=[[["市中区","历下区","天桥区","槐荫区","历城区","长清区 "],
	 ["市南区","市北区 ","四方区 ","李沧区","城阳区","崂山区 "]],
	 [["新城区","棚户区","新安区","天镇区","阳高区","广灵区"],
	 ["杏花岭区","五一区","小寨区","西瓜区","新城区"]],
	 [["桥西区","新华区","长安区 ","鹿泉区","栾城区"],
	 ["安次区","广阳区","三河区","香河区","永清区","固安区"]]];
 var province,city,area;
 function initProvince(){
	 province=document.getElementById("province");
	 city=document.getElementById("city");
	 area=document.getElementById("address");
	 province.options.length=1;
	 for(var i=0;i<provinces.length;i++){
		 var option=new Option(provinces[i],provinces[i]);
		 province.options.add(option);
	 }
 }
 function provinceChange(){
	 var pindex=province.selectedIndex;
	 city.options.length=1;
	 for(var i=0;i<cities[pindex-1].length;i++){
		 var optionValue=cities[pindex-1][i];
		 var option=new Option(optionValue,optionValue);
		 city.options.add(option);
	 }
	 cityChange();
 }
 function cityChange(){
	 var pindex=province.selectedIndex;
	 var cindex=city.selectedIndex;
	 area.options.length=1;
	 for(var i=0;i<areas[pindex-1][cindex-1].length;i++){
		 var optionValue=areas[pindex-1][cindex-1][i];
		 var option=new Option(optionValue,optionValue);
		 area.options.add(option);
	 }
 }
 
 function onFocus(){
	 this.select();
	 this.style.backgroundColor="#FFEC8B";
	 this.style.style.color="#000000";
 }
 
 function onBlur(){
	 this.style.backgroundColor="#FFFFFF";
	 this.style.style.color="#000000";
 }
 
 function checkUserName(){
	 var namevalue=document.getElementById("userName").value;
	 var regex=new RegExp("^[\u4E00-\u9FA5]{1,4}$");
	 if (regex.test(namevalue)){
		 document.getElementById("userNameMsg").className="feedbackHide";
		 return true;
	 }else{ 
		 document.getElementById("userNameMsg").className="feedbackShow";
		 return false;
	 }	 
 }
 
 function checkEmail(){
	 var emailvalue=document.getElementById("email").value;
	 var regex=new RegExp("^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+[.a-zA-Z0-9_-]+$");
	 if (regex.test(emailvalue)){
		 document.getElementById("emailMsg").className="feedbackHide";
		 return true;
	 }else{
		 document.getElementById("emailMsg").className="feedbackShow";
		 return false;
	 }
 }
 function checkPassword(){
	 var passwordvalue=document.getElementById("password").value;
	 var regex=new RegExp("^[a-zA-Z0-9]{6,10}$");
	 if (regex.test(passwordvalue)){
		 document.getElementById("passwordMsg").className="feedbackHide";
		 return true;
	 }else{
		 document.getElementById("passwordMsg").className="feedbackShow";
		 return false;
	 }
 }
 function checkConfirmPassword(){
	  var passwordvalue=document.getElementById("password").value;
	  var confirmvalue=document.getElementById("confirmPassword").value;
	  if (passwordvalue==confirmvalue){
			 document.getElementById("confirmPasswordMsg").className="feedbackHide";
			 return true;
		 }else{
			 document.getElementById("confirmPasswordMsg").className="feedbackShow";
       return false;
		 }
 }
 function checkForm(){
	var c1=checkUserName(); 
	var c2=checkPassword(); 
	var c3=checkEmail();
	var c4=checkConfirmPassword();
	if (c1&&c2&&c3&&c4){ 
		return true;
	}else { 
		return false;}
 }
 window.onload=function(){
	 initProvince();
	 province.onchange=provinceChange;
	 city.onchange=cityChange;
	 
 };