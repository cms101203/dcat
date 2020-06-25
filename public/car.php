<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-transform " />
<meta name="applicable-device" content="mobile">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
<title>（手机版）河北交通违章查询-河北违章查询网</title>
<meta name="keywords" content="河北交通违章查询,违章查询网,河北市,交通违章查询系统"/>
<meta name="description" content="本网站是河北交通违章查询网,提供河北交通违章记录查询,河北市交通违章或外地车辆在河北市区域范围内的交通违章情况查询，欢迎使用河北交通违章查询系统！"/>
<style>
/**等待对话框**/
#loader_container {
	text-align:center;
	position:fixed;
	margin:150px 20px 20px 20px;
	width:-webkit-fill-available;
	z-index:10000;
	filter:alpha(opacity=90);
	-moz-opacity:0.90;
	opacity:0.90;
	padding-left:0px;
	
}
* html #loader_container {
	position:absolute;
}
#loader {
	font-family:Tahoma, Helvetica, sans;
	font-size:14px;
	color:#004a8f;
	background-color:#ecf5ff;
	display:block;
	width:100%;
	height:220px;
	text-align:center;
	margin:0 auto;
	padding:5px 0;
	border-radius: 10px;
	box-shadow: 0 0 15px #0c80f9;
}
#loader div {
	margin: 4px 0;
}
.loadingtext{ 
	text-align:center;
	color:#000;
	font-size:13px;
	padding:10px 40px 20px 40px;
	line-height:25px;
}
.tishi{font-size:18px; font-weight:300;}
</style>
<script language="JavaScript" type="text/javascript">
   document.write('<div id="loader_container"><div id="loader"><div align="center"><span class="tishi">温馨提示:</span></div><div class="loadingtext">正在加载系统数据，请稍后。。。<br>(如长时间未加载完毕，请点击刷新页面按钮！)</div><div align="center"><img src="https://static.c7c8.com/weixin/images/loading2.gif" alt="loading"  style="margin-bottom:15px;" /><input type="button" style="height: 30px;line-height: 30px; border: 0; background-color: #0099FF; display: block; clear: both; color: #fff; border-radius: 5px; width: 50%; margin: 10px 5%; font-size: 110%;" value="刷新页面" onClick="window.location = window.location" /></div></div></div>');   
   function remove_loading() {
	   var targelem = document.getElementById('loader_container');
	   targelem.style.display='none';
	   targelem.style.visibility='hidden';
   }
   window.onload= function(){
		remove_loading();
   }
</script>
<link rel="stylesheet" type="text/css" href="https://static.c7c8.com/style/plugin/style/css/iconfont.css">
<link href="https://static.c7c8.com/weizhangwang/css/index_m_20171128.css" rel="stylesheet" type="text/css" />
<script src="https://static.c7c8.com/baidu/1.9.0/jquery.js"></script>
<script type="text/javascript">	
	var myDate = new Date();//获取系统当前时间
	document.write("<s"+"cript type='text/javascript' src='https://static.c7c8.com/weizhangwang/js/cityinfo_all_20170918.js?v="+ myDate.getFullYear() + myDate.getMonth() + myDate.getDate() + myDate.getHours() +"'></scr"+"ipt>");
	</script>
<script language="javascript" charset="UTF-8"  type="text/javascript" src="https://static.c7c8.com/weizhangwang/js/weizhangwang_all_20170918_4.js"></script>
<script language="javascript" charset="UTF-8"  type="text/javascript" src="https://static.c7c8.com/weizhangwang/js/mobile_all_20170918_2.js"></script>
<script type="text/javascript" src="https://static.c7c8.com/js/public/ly.js"></script>
<script language="JavaScript" type="text/javascript">
var sourceline='jh';
var ip_p='河北';
var ip_c='';
function checkinput_wx_div(obj)
{
	obj.innerHTML = Jtrim(obj.innerHTML);
	obj.innerHTML = obj.innerHTML.toUpperCase();
	if(obj.innerHTML.length>10)
	{
		if(obj.id=="my_cjhm_input")
		{
			document.getElementById("classtext").style.display="none";
		}else
		{
			document.getElementById("enginetext").style.display="none";
		}
	}else 
	{
		if(obj.id=="my_cjhm_input")
		{
			document.getElementById("classtext").style.display="block";
		}else
		{
			document.getElementById("enginetext").style.display="block";
		}
	}
	document.getElementById("tipenginebox").style.display='none';
	document.getElementById("tipclassbox").style.display='none';
}
function onFocusProvince(){
	closekey();
	document.getElementById('selProvince').className ='myselect focusBorder';
}
function onFocusCity(){
	closekey();
	document.getElementById('selCity').className ='myselect focusBorder';
}
function onFocusLeixing(){
	closekey();
	document.getElementById('my_leixing').className ='myselect focusBorder';
}
function onBlurProvince(){
	document.getElementById('selProvince').className ='myselect';
}
function onBlurCity(){
	document.getElementById('selCity').className ='myselect';
}
function onBlurLeixing(){
	document.getElementById('my_leixing').className ='myselect';
}
function onFocusCarCode(obj){
	obj.blur();
	onFocusClass(obj);
}
function onFocusCarEngine(obj){
	obj.blur();
	onFocusEngine(obj);
}
function clearfocusBorder(){
	document.getElementById('my_jc_select1_input').className ='vselect';
	document.getElementById('my_jc_select2_input').className ='vselect';
	document.getElementById('my_cphm_input').className ='myinput';
	document.getElementById('my_fdjh_input').className ='myinput';
	document.getElementById('my_cjhm_input').className ='myinput';
}
function updateToInput(){
	document.getElementById("my_jc_select1").value = document.getElementById("my_jc_select1_input").innerHTML;
	document.getElementById("my_jc_select2").value = document.getElementById("my_jc_select2_input").innerHTML;
	document.getElementById("my_cphm").value = document.getElementById("my_cphm_input").innerHTML;
	document.getElementById("my_fdjh").value = document.getElementById("my_fdjh_input").innerHTML;
	document.getElementById("my_cjhm").value = document.getElementById("my_cjhm_input").innerHTML;	
}

function updateToDiv(){
	document.getElementById("my_jc_select1_input").innerHTML = document.getElementById("my_jc_select1").value;
	document.getElementById("my_jc_select2_input").innerHTML = document.getElementById("my_jc_select2").value;
	document.getElementById("my_cphm_input").innerHTML = document.getElementById("my_cphm").value;
	document.getElementById("my_fdjh_input").innerHTML = document.getElementById("my_fdjh").value;
	document.getElementById("my_cjhm_input").innerHTML = document.getElementById("my_cjhm").value;	
}
////////////虚拟键盘
//点击的输入框(车牌|车架号|发动机号)
var currentInput;
var indexKey1 = 0;
var indexKey2 = 0;
//获取输入值
function keyvalue(obj){
	var text = obj.getElementsByTagName("span")[0].innerHTML;
	if(currentInput.id == 'my_jc_select1_input'){//点击了车牌省份简称
		currentInput.innerHTML = text;
		currentInput = document.getElementById('my_jc_select2_input');
		key(currentInput);
	} else if(currentInput.id == 'my_jc_select2_input'){//点击了车牌城市简称
		if(!/^[a-zA-Z]$/.test(text)){
			alert('这里只能输入字母！');
			return;
		}		
		currentInput.innerHTML = text;
		currentInput = document.getElementById('my_cphm_input');
		//key(currentInput);
		clearfocusBorder();
		currentInput.className += ' focusBorder';
	} else if(currentInput.id == 'my_cphm_input'){//点击了车牌号码输入框
		if(!/^[0-9a-zA-Z]$/.test(text)){
			alert('这里只能输入数字和字母！');
			return;
		}
		if(text == 'I'){
			alert('车牌号码没有字母I，请检查是否是数字1');
			return;	
		}
		if(text == 'O'){
			alert('车牌号码没有字母O，请检查是否是数字0');
			return;	
		}
		//alert(currentInput.innerHTML);
		if(currentInput.innerHTML.indexOf('车') == -1){
			if(currentInput.innerHTML.length >=5){
				alert('只能输入5位车牌号码，暂未支持新能源汽车!');
				return;
			}
			currentInput.innerHTML += text;
		} else {
			currentInput.innerHTML = text;
		}		
	} else if(currentInput.id == 'my_fdjh_input'){//点击了发动机号码输入框
		if(!/^[0-9a-zA-Z*-]$/.test(text)){
			alert('这里只能输入数字和字母！');
			return;
		}
		if(text == 'I'){
			alert('发动机号码没有字母I，请检查是否是数字1');
			return;	
		}
		if(text == 'O'){
			alert('发动机号码没有字母O，请检查是否是数字0');
			return;	
		}
		if(currentInput.innerHTML.indexOf('请') == -1){
			currentInput.innerHTML += text;
		} else {
			currentInput.innerHTML = text;
		}
		checkinput_wx_div(currentInput);
	} else if(currentInput.id == 'my_cjhm_input'){//点击了车架号输入框
		if(!/^[0-9a-zA-Z]$/.test(text)){
			alert('这里只能输入数字和字母！');
			return;
		}
		if(text == 'I'){
			alert('车架号没有字母I，请检查是否是数字1');
			return;	
		}
		if(text == 'O'){
			alert('车架号没有字母O，请检查是否是数字0');
			return;	
		}
		if(currentInput.innerHTML.indexOf('请') == -1){
			currentInput.innerHTML += text;
		} else {
			currentInput.innerHTML = text;
		}
		checkinput_wx_div(currentInput);
	}
}
//清空功能
function cleardiv(){
	currentInput.innerHTML = '';
	updateToInput();
}
//删除功能
function del(){
	var inputvalue = currentInput.innerHTML;
	var newvalue=inputvalue.substring(0,inputvalue.length-1);
	currentInput.innerHTML = newvalue;
}
//粘贴弹窗
function zt(){
	if(currentInput.id == 'my_jc_select2_input'){
		alert('这里不能粘贴内容!');
		return;
	}
	layer.prompt({
		formType: 0,
		title: '请粘贴内容到以下输入框',
	  }, function(value, index, elem){
		var vinvalue = value;
		//alert(vinvalue); 
		currentInput.innerHTML = vinvalue;
		layer.close(index);
	  });
}
//键盘弹窗
function key(obj){
	if(typeof(layer) == 'undefined' || typeof(layer) == 'null'){
		alert('页面未加载完成，现在重新加载！如果多次出现这个问题，请在公众号内回复数字0联系客服！');
		window.location.reload();
		return;
	}
	//$("#spaceDiv").show();
	if(obj.id == 'my_jc_select2_input' || obj.id == 'my_cphm_input'){
		if($("#my_form").offset().top > 0){
			$("html,body").animate({scrollTop: $("#my_form").offset().top}, 500);
		}
	} else if(obj.id == 'my_fdjh_input' || obj.id == 'my_cjhm_input'){
		$("html,body").animate({scrollTop: $("#my_leixing").offset().top}, 500);
	}
	if(obj.id == 'my_fdjh_input' || obj.id == 'my_cjhm_input' || obj.id == 'my_cphm_input'){
		checkinput_wx_div(obj);
	}
	//location.hash = 'boxtag';
	if(indexKey2 > 0){
		layer.close(indexKey2);
	}
	currentInput = obj;
	clearfocusBorder();
	currentInput.className += ' focusBorder';
	if(indexKey1 > 0){//键盘已经显示
		return;
	}
	var index= layer.open({type: 1,title: false,area: '100%',closeBtn: 0,shadeClose: false,offset: 'b',anim: 2,fixed: true,
		shade: 0
		,content: $('#keybox')
		,success: function(layero, index){
			$('#keybox').find('#cxbt').data('layerindex', index);
			indexKey1 = index;
			currentInput.className += ' focusBorder';
		},
		end: function(){
			//clearfocusBorder();
			indexKey1 = 0;
			//$("#spaceDiv").hide();
		}
	});
	layer.style(index, {
			'box-shadow':'none',
	});
}
function key2(obj){
	if(typeof(layer) == 'undefined' || typeof(layer) == 'null'){
		alert('页面未加载完成，现在重新加载！如果多次出现这个问题，请在公众号内回复数字0联系客服！');
		window.location.reload();
		return;
	}
	//$("#spaceDiv").show();
	$("html,body").animate({scrollTop: $("#my_form").offset().top}, 500);
	if(indexKey1 > 0){
		layer.close(indexKey1);
	}
	currentInput = obj;
	clearfocusBorder();
	currentInput.className += ' focusBorder';
	if(indexKey2 > 0){//键盘已经显示
		return;
	}
	var index= layer.open({type: 1,title: false,area: '100%',closeBtn: 0,shadeClose: false,offset: 'b',anim: 2,fixed: true,
		shade: 0
		,content: $('#keybox2')
		,success: function(layero, index){
			$('#keybox2').find('#cxbt').data('layerindex', index);
			indexKey2 = index;
			currentInput.className += ' focusBorder';
		},
		end: function(){
			indexKey2 = 0;
			//clearfocusBorder();
			//$("#spaceDiv").hide();
		}
	});
	layer.style(index, {
			'box-shadow':'none',
	});
}
function closekey(){
	layer.closeAll();
	clearfocusBorder();
}
</script>
</head>
<body>
<div class="mobilebody">
<div align="center">
	<div class="topline" style="min-height:42px;">
		<div align="center">
    	<img src="https://static.c7c8.com/weizhangwang/image/logo_m.gif" alt="全国交通违章查询系统手机版" />
        </div>	
	</div>
</div>
<div align="center" class="infobox">
<div align="center" id="querylist">
</div>
	<div align="center" class="top_title p_t10">
    	<div class="title1 color1" style="color:#F60">河北交通违章查询系统</div>
    </div>
<div class="historylistm" id="historylistm">
<div class="quicktext"></div>
<div class="clear"></div>
</div>
<div class="clear"></div>
<div class="box">
<form name="my_form" method="post" id="my_form" action="" onSubmit="" target="_self">
	<div class="inputbox">
		<div class="top2">
			<div class="leftbox">
			 <div class="provincesel" id="provincesel">			 	
                <select name="province" id="selProvince" style="width:100%;" onChange = "getCity(this.options[this.selectedIndex].value);updateAll();" onFocus="lockedcode(0);"  class="myselect">
          <option value="">-省份-</option>
		  <option value="北京">北京</option>
          <option value="上海">上海</option>
          <option value="天津">天津</option>
          <option value="重庆">重庆</option>

          <option value="河北">河北</option>
          <option value="山西">山西</option>
          <option value="内蒙古">内蒙古</option>
          <option value="辽宁">辽宁</option>
          <option value="吉林">吉林</option>
          <option value="黑龙江">黑龙江</option>

          <option value="江苏">江苏</option>
          <option value="浙江">浙江</option>
          <option value="安徽">安徽</option>
          <option value="福建">福建</option>
          <option value="江西">江西</option>
          <option value="山东">山东</option>

          <option value="河南">河南</option>
          <option value="湖北">湖北</option>
          <option value="湖南">湖南</option>
          <option value="广东">广东</option>
          <option value="广西">广西</option>
          <option value="海南">海南</option>

          <option value="四川">四川</option>
          <option value="贵州">贵州</option>
          <option value="云南">云南</option>
          <option value="西藏">西藏</option>
          <option value="陕西">陕西</option>
          <option value="甘肃">甘肃</option>

          <option value="宁夏">宁夏</option>
          <option value="青海">青海</option>
          <option value="新疆">新疆</option>
        </select>
			 </div>
			 <div class="hphmjc">
			 	<div class="hphmjc1">
                <i class="iconfont icon-unfold icon1"></i>
                <div id="my_jc_select1_input" onClick="key2(this)" class="vselect" onFocus="">粤</div>
                    <select name="province_sn" id="my_jc_select1" style="width:100%; height:40px; display:none;" onFocus="this.blur()" onChange = ""  class="myselect">
          <option selected="selected" value="粤">粤</option>
          <option value="浙">浙</option>
          <option value="京">京</option>
          <option value="沪">沪</option>
          <option value="川">川</option>

          <option value="津">津</option>
          <option value="渝">渝</option>
          <option value="鄂">鄂</option>
          <option value="赣">赣</option>
          <option value="冀">冀</option>
          <option value="蒙">蒙</option>

          <option value="鲁">鲁</option>
          <option value="苏">苏</option>
          <option value="辽">辽</option>
          <option value="吉">吉</option>
          <option value="皖">皖</option>
          <option value="湘">湘</option>

          <option value="黑">黑</option>
          <option value="琼">琼</option>
          <option value="贵">贵</option>
          <option value="桂">桂</option>
          <option value="云">云</option>
          <option value="藏">藏</option>

          <option value="陕">陕</option>
          <option value="甘">甘</option>
          <option value="宁">宁</option>
          <option value="青">青</option>
          <option value="豫">豫</option>
          <option value="闽">闽</option>

          <option value="新">新</option>
          <option value="晋">晋</option>
        </select>
				</div>
				<div class="hphmjc2">
                <i class="iconfont icon-unfold icon1"></i>
                <div id="my_jc_select2_input" onClick="key(this)" class="vselect" >A</div>				
                <select name="city_sn" id="my_jc_select2" style="width:100%; height:40px; display:none;" onChange = ""  class="myselect" onFocus="this.blur()">
          <option selected="selected" value="A">A</option>
          <option value="B">B</option>
          <option value="C">C</option>

          <option value="D">D</option>
          <option value="E">E</option>
          <option value="F">F</option>
          <option value="G">G</option>
          <option value="H">H</option>
          <option value="I">I</option>

          <option value="J">J</option>
          <option value="K">K</option>
          <option value="L">L</option>
          <option value="M">M</option>
          <option value="N">N</option>
          <option value="O">O</option>

          <option value="P">P</option>
          <option value="Q">Q</option>
          <option value="R">R</option>
          <option value="S">S</option>
          <option value="T">T</option>
          <option value="U">U</option>

          <option value="V">V</option>
          <option value="W">W</option>
          <option value="X">X</option>
          <option value="Y">Y</option>
          <option value="Z">Z</option>
        </select>
				</div>
			 </div>
			</div>
			<div class="rightbox">
				<div class="citysel"  id="citysel">
                <select name="c_id" id="selCity" onChange = "updateAll();" style="width:100%;"   class="myselect"  onFocus="onFocusCity()" onBlur="onBlurCity()">
				  <option>-城市-</option>
				</select>
				</div>
				<div class="hphmno">				
               <div name="cphm" id="my_cphm_input" style="width:100%" onClick="key(this)" class="myinput"></div>			
                <input name="cphm" type="hidden" id="my_cphm" size="10" style="width:100%" onKeyUp="checkinput_wx(this)" onClick="key(this)"  onFocus=""  onblur="this.blur()" class="myinput"  readonly="readonly" />
				</div>
			</div>
		</div>
		<div class="hpzl">
        <select name="hpzl" id="my_leixing" size="1" style="width:100%; height:40px;" class="myselect" onFocus="onFocusLeixing()" onBlur="onBlurLeixing()">
          <option value="01">大型汽车</option>

          <option selected="selected" value="02">小型汽车</option>
          <option value="03">使馆汽车</option>
          <option value="04">领馆汽车</option>
          <option value="05">境外汽车</option>
          <option value="06">外籍汽车</option>
          <option value="07">两、三轮摩托车</option>

          <option value="08">轻便摩托车</option>
          <option value="09">使馆摩托车</option>
          <option value="10">领馆摩托车</option>
          <option value="11">境外摩托车</option>
          <option value="12">外籍摩托车</option>
          <option value="13">低速车</option>

          <option value="14">拖拉机</option>
          <option value="15">挂车</option>
          <option value="16">教练汽车</option>
          <option value="17">教练摩托车</option>
          <option value="20">临时入境汽车</option>
          <option value="21">临时入境摩托车</option>

          <option value="22">临时行驶车</option>
          <option value="23">警用汽车</option>
          <option value="24">警用摩托</option>
          <option value="99">其它</option>
        </select>
		</div>
		<div class="engineno"  id="fadongjitr">		
        <input name="enginenumber" type="hidden" id="my_fdjh" onFocus="onFocusCarEngine(this)" onClick="key(this)"  onblur="onblurEngine(this)" onChange="checkinput_wx(this)"  onKeyUp="checkinput_wx(this)"  class="myinput" /><div name="enginenumber" type="hidden" id="my_fdjh_input" onClick="key(this)" class="myinput"></div><div id="tipenginebox"></div><div id="enginetext" onClick="key(document.getElementById('my_fdjh_input'))"></div>
		</div>
		<div class="classno" id="chejiatr">
         <input name="classnumber" type="hidden" id="my_cjhm" onFocus="onFocusCarCode(this)"  onClick="key(this)" onblur="onblurClass(this)" onChange="checkinput_wx(this)" onKeyUp="checkinput_wx(this)"  class="myinput" /><div name="classnumber" id="my_cjhm_input" onClick="key(this)" class="myinput"></div><div id="tipclassbox"></div><div id="classtext" onClick="key(document.getElementById('my_cjhm_input'))"></div>
		</div>
		<div class="tiptext">
        	<span style="color:#F00">【系统升级，需要的参数可能有变！】<br>【如发现键盘无法使用请返回旧版查询！】</span>
        </div>

		
        <div class="tiptext">
        	<a href="http://m.weizhangwang.com/Article/218.html">【 <span style="color:#F00">车架号</span>是什么？ <span style="color:#F00">发动机号</span>是什么？】</a>
        </div>
		<div class="querybtn">
		<input id="line1" class="btn" onclick="updateToInput();fsubmit_m(1);" value="全国联网查询" type="button"> <input id="line2" class="btn" onclick="updateToInput();fsubmit_m(2);" value="备线路二查询" type="button"> <input id="line3" class="btn" onclick="updateToInput();fsubmit_m(3);" value="备线路三查询" type="button">
		</div>
	</div>
	<input name="cityname" type="hidden" id="cityname" value="" />
<input name="areacode" type="hidden" id="areacode" value="" />   
    <input name="city_id" type="hidden" id="city_id" value="" />
    <input name="province_id" type="hidden" id="province_id" value="" />
    <input name="pid" type="hidden" id="pid" value="" />
    <input name="jhcc" type="hidden" id="jhcc" value="" />
     <input name="id360" type="hidden" id="id360" value="" />
    <input name="sourceline" type="hidden" id="sourceline" value="" />
    <input name="hpzl_text" type="hidden" id="hpzl_text" value="" />
    <input name="km_jgjId" type="hidden" id="km_jgjId" value="" />
<input name="js_carorg" type="hidden" id="js_carorg" value="" />
             <input name="dd_carorg" type="hidden" id="dd_carorg" value="" />
             <input name="sjb_carorg" type="hidden" id="sjb_carorg" value="" />
             <input name="classlen" type="hidden" id="classlen" value="" />
             <input name="enginelen" type="hidden" id="enginelen" value="" />
<input name="refer" type="hidden" id="refer" value="m_weizhangwang" />
</form>
<div class="content_one">
	<div  class="title3"><h3>河北交通违章查询说明</h3></div>
        <div class="content">&nbsp;&nbsp;&nbsp;&nbsp;本站可以查询所有车辆在河北市辖区内，包括在所发生的未处理的电子眼违章或者现场单违章。在河北市发生的交通违章行为需要车主到河北市的交警大队接受处理和缴纳交通违章罚款。逾期不缴纳交通违章罚款，车主将会被河北市车管所暂停办理相关业务等。如果网上因为故障或升级等原因不能查河北市的交通违章记录信息，你可以打114咨询河北市的交警大队电话，通过打河北市交警部门的电话查询河北市的交通违章。
        </div>
	</div>
<div class="clear"></div>
<div class="content_one">
		<div class="clear"></div>	
		<div class="content_one"><div  class="title3"><h3><a href="http://m.hebei.weizhangwang.com/" target="_blank">河北省交通违章查询</a></h3></div><div class="citylist">
		<ul>
		</ul></div>
		</div><div class="clear"></div>
		<div class="content_one"><div  class="title3"><h3>热点城市交通违章查询</h3></div>
        <div  class="citylist">
		<ul>
<li><a href="http://020.m.weizhangwang.com/">广州</a></li>
<li><a href="http://0757.m.weizhangwang.com/">深圳</a></li>
<li><a href="http://0579.m.weizhangwang.com/" target="_blank">金华</a></li>
<li><a href="http://025.m.weizhangwang.com/" target="_blank">南京</a></li>
<li><a href="http://0769.m.weizhangwang.com/">东莞</a></li>
<li><a href="http://0512.m.weizhangwang.com/" target="_blank">苏州</a></li>
<li><a href="http://0591.m.weizhangwang.com/" target="_blank">福州</a></li>
<li><a href="http://0752.m.weizhangwang.com/">惠州</a></li>
<li><a href="http://029.m.weizhangwang.com/" target="_blank">西安</a></li>
<li><a href="http://0757.m.weizhangwang.com/">佛山</a></li>
<li><a href="http://0756.m.weizhangwang.com/">珠海</a></li>
<li><a href="http://024.m.weizhangwang.com/" target="_blank">沈阳</a></li>
<li><a href="http://028.m.weizhangwang.com/" target="_blank">成都</a></li>
<li><a href="http://0571.m.weizhangwang.com/" target="_blank">杭州</a></li>
<li><a href="http://0531.m.weizhangwang.com/" target="_blank">济南</a></li>
<li><a href="http://0551.m.weizhangwang.com/" target="_blank">合肥</a></li>
<li><a href="http://0411.m.weizhangwang.com/" target="_blank">大连</a></li>
<li><a href="http://0575.m.weizhangwang.com/" target="_blank">绍兴</a></li>
<li><a href="http://0311.m.weizhangwang.com/" target="_blank">石家庄</a></li>
<li><a href="http://0731.m.weizhangwang.com/" target="_blank">长沙</a></li>
<li><a href="http://0351.m.weizhangwang.com/" target="_blank">太原</a></li>


		</ul></div>
		</div><div class="clear"></div>
<script type="text/javascript" src="https://ip.c7c8.com/source/getsourcejs2.php?refer=m_weizhangwang"></script>
<script type="text/javascript">
var tt=setInterval(LoadingJS,500); 
var loadtimes=0; 
function LoadingJS()
{
	//判断js是否加载完成weizhangwang_all.js和citydata.js
	try{
		var len=_citylist.length;
		var c=getcityinfo1(1);
	}catch(e)
	{
		loadtimes++;
		return;
	}	
	//尝试读取ip定位数据以判断是否加载完毕
	try{
		//ip_p =a_ip_p;
		//ip_c =a_ip_c;
		sourceline=default_line;
	}catch(e)
	{
		if(loadtimes++<100)//未超时10秒继续等待
		{
			return;
		}
	}
	window.clearInterval(tt); 
	loadjs=1;
	updateipcity();
	updateHistoryCars_m();
	if(getCookie("olduser")=="1")
	{
		document.getElementById("line2").style.display="block";
		document.getElementById("line3").style.display="block";
	}else
	{
		/*$.ajax({
		type :"get",
		url:"/getquerylist_m.php",
		timeout : 10000,
		success:showquerylist,
		data:"cityname="+_SelectCity.c_name
		});*/
	}
	SetCookie("olduser","1",365);
	updateToDiv();
}
function showquerylist(data)
{
	document.getElementById("querylist").innerHTML=data;
	startmarquee(16,20,1500);
	updateToDiv();
}
</script>
</div>
<!--查询框结束-->
</div>
<div align="center">

</div>
<div class="bottomline"><div align="center" class="top_title" style="padding-bottom:10px;"><div class="backhome"><a href="http://hebei.weizhangwang.com/">【电脑版】</a></div><div class="title2 color1">© 2007-2015 weizhangwang.com 版权所有</div>
</div></div>
</div>
<div style="display:none"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255199193'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/stat.php%3Fid%3D1255199193' type='text/javascript'%3E%3C/script%3E"));</script><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ff7549f5e257bbf12279000f4560f1ad3' type='text/javascript'%3E%3C/script%3E"));
</script>

</div>
<!-- 键盘div  车牌省份 -->
<div class="keybox" id="keybox2" ontouchstart="">
	<div class="closekey" onclick="closekey()">收起键盘</div>
    <ul class="keybox-one">
        <li onclick="keyvalue(this)"><span>粤</span></li>
        <li onclick="keyvalue(this)"><span>浙</span></li>
        <li onclick="keyvalue(this)"><span>京</span></li>
        <li onclick="keyvalue(this)"><span>沪</span></li>
        <li onclick="keyvalue(this)"><span>川</span></li>
        <li onclick="keyvalue(this)"><span>津</span></li>
        <li onclick="keyvalue(this)"><span>渝</span></li>
        <li onclick="keyvalue(this)"><span>鄂</span></li>
        <li onclick="keyvalue(this)"><span>赣</span></li>
        <li onclick="keyvalue(this)"><span>冀</span></li>
        <li onclick="keyvalue(this)"><span>蒙</span></li>
        <li onclick="keyvalue(this)"><span>鲁</span></li>
        <li onclick="keyvalue(this)"><span>苏</span></li>
        <li onclick="keyvalue(this)"><span>辽</span></li>
        <li onclick="keyvalue(this)"><span>吉</span></li>
        <li onclick="keyvalue(this)"><span>皖</span></li>
        <li onclick="keyvalue(this)"><span>湘</span></li>
        <li onclick="keyvalue(this)"><span>黑</span></li>
        <li onclick="keyvalue(this)"><span>琼</span></li>
        <li onclick="keyvalue(this)"><span>贵</span></li>
        <li onclick="keyvalue(this)"><span>桂</span></li>
        <li onclick="keyvalue(this)"><span>云</span></li>
        <li onclick="keyvalue(this)"><span>藏</span></li>
        <li onclick="keyvalue(this)"><span>陕</span></li>
        <li onclick="keyvalue(this)"><span>甘</span></li>
        <li onclick="keyvalue(this)"><span>宁</span></li>
        <li onclick="keyvalue(this)"><span>青</span></li>
        <li onclick="keyvalue(this)"><span>豫</span></li>
        <li onclick="keyvalue(this)"><span>闽</span></li>
        <li onclick="keyvalue(this)"><span>新</span></li>
        <li onclick="keyvalue(this)"><span>晋</span></li>        
    </ul>
    <div class="keytips"></div>
</div>
<!-- 键盘div  车牌后6位 -->
<div class="keybox" id="keybox"  ontouchstart="">
	<div class="closekey" onclick="closekey()">收起键盘</div>
    <ul class="keybox-one">
        <li onclick="keyvalue(this)"><span>1</span></li>
        <li onclick="keyvalue(this)"><span>2</span></li>
        <li onclick="keyvalue(this)"><span>3</span></li>
        <li onclick="keyvalue(this)"><span>4</span></li>
        <li onclick="keyvalue(this)"><span>5</span></li>
        <li onclick="keyvalue(this)"><span>6</span></li>
        <li onclick="keyvalue(this)"><span>7</span></li>
        <li onclick="keyvalue(this)"><span>8</span></li>
        <li onclick="keyvalue(this)"><span>9</span></li>
        <li onclick="keyvalue(this)"><span>0</span></li>
    </ul>
    <ul class="keybox-one">
        <li onclick="keyvalue(this)"><span>Q</span></li>
        <li onclick="keyvalue(this)"><span>W</span></li>
        <li onclick="keyvalue(this)"><span>E</span></li>
        <li onclick="keyvalue(this)"><span>R</span></li>
        <li onclick="keyvalue(this)"><span>T</span></li>
        <li onclick="keyvalue(this)"><span>Y</span></li>
        <li onclick="keyvalue(this)"><span>U</span></li>
        <li onclick="keyvalue(this)"><span>I</span></li>
        <li onclick="keyvalue(this)"><span>O</span></li>
        <li onclick="keyvalue(this)"><span>P</span></li>
    </ul>
    <ul class="keybox-one">
        <li onclick="keyvalue(this)" class="keyboxm"><span>A</span></li>
        <li onclick="keyvalue(this)"><span>S</span></li>
        <li onclick="keyvalue(this)"><span>D</span></li>
        <li onclick="keyvalue(this)"><span>F</span></li>
        <li onclick="keyvalue(this)"><span>G</span></li>
        <li onclick="keyvalue(this)"><span>H</span></li>
        <li onclick="keyvalue(this)"><span>J</span></li>
        <li onclick="keyvalue(this)"><span>K</span></li>
        <li onclick="keyvalue(this)"><span>L</span></li>
    </ul>
    <ul class="keybox-one">
		<li onclick="keyvalue(this)" class="keyboxm"><span>*</span></li>
        <li onclick="keyvalue(this)"><span>Z</span></li>
        <li onclick="keyvalue(this)"><span>X</span></li>
        <li onclick="keyvalue(this)"><span>C</span></li>
        <li onclick="keyvalue(this)"><span>V</span></li>
        <li onclick="keyvalue(this)"><span>B</span></li>
        <li onclick="keyvalue(this)"><span>N</span></li>
        <li onclick="keyvalue(this)"><span>M</span></li>
        <li onclick="keyvalue(this)"><span>-</span></li>
    </ul>
	<ul class="keybox-one keybd">
    	<li id="pasteButton" onclick="zt()" class="zt" style="width: 33% !important;"><span class="ztspan">粘 贴</span></li>
        <li id="pasteButton" onclick="cleardiv()" class="zt" style="width: 33% !important;"><span class="ztspan">清空</span></li>
		<li class="zt" onclick="del()" style="width: 33% !important;"><span class="del">删除</span></li>
	</ul>
    <div class="keytips"></div>
</div>
</body>
</html>