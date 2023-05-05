[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Sul_02.ks]

*back

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
*popupsul_01

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=500"  name="money"  cmd="-="  op="t"  val="500"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=1"  name="slove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(26-24+1)+24)"  name="gift_line"  cmd="="  op="r"  val="24"  val_2="26"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_01.png'/>
<p class="msgrandomtext">
<span id="gift_line_form"></span>
</p>
</div>
</div>

<script>
var giftLineElem = document.getElementById("gift_line_form");
var string = window.TYRANO.kag.stat.f.gift_line;
var replacedString = string.replace(/\u00A0/g, ' ');
var array = replacedString.split("");
var frameTimer;

function frameLooper() {
if (array.length > 0) {
giftLineElem.textContent+= array.shift();
frameTimer = requestAnimationFrame(frameLooper);
} else {
cancelAnimationFrame(frameTimer);
}
}
setTimeout(frameLooper, 500);
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="109" height="93" x="1385" y="1100"]
[anim name=Back time=200 top=948]
[_tb_end_tyrano_code]

[s  ]
*popupsul_02

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=900"  name="money"  cmd="-="  op="t"  val="900"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=2"  name="slove"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(29-27+1)+27)"  name="gift_line"  cmd="="  op="r"  val="27"  val_2="29"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_02.png'/>
<p class="msgrandomtext">
<span id="gift_line_form"></span>
</p>
</div>
</div>

<script>
var giftLineElem = document.getElementById("gift_line_form");
var string = window.TYRANO.kag.stat.f.gift_line;
var replacedString = string.replace(/\u00A0/g, ' ');
var array = replacedString.split("");
var frameTimer;

function frameLooper() {
if (array.length > 0) {
giftLineElem.textContent+= array.shift();
frameTimer = requestAnimationFrame(frameLooper);
} else {
cancelAnimationFrame(frameTimer);
}
}
setTimeout(frameLooper, 500);
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="109" height="93" x="1385" y="1100"]
[anim name=Back time=200 top=948]
[_tb_end_tyrano_code]

[s  ]
*popupsul_03

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1700"  name="money"  cmd="-="  op="t"  val="1700"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=4"  name="slove"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(32-30+1)+30)"  name="gift_line"  cmd="="  op="r"  val="30"  val_2="32"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_03.png'/>
<p class="msgrandomtext">
<span id="gift_line_form"></span>
</p>
</div>
</div>

<script>
var giftLineElem = document.getElementById("gift_line_form");
var string = window.TYRANO.kag.stat.f.gift_line;
var replacedString = string.replace(/\u00A0/g, ' ');
var array = replacedString.split("");
var frameTimer;

function frameLooper() {
if (array.length > 0) {
giftLineElem.textContent+= array.shift();
frameTimer = requestAnimationFrame(frameLooper);
} else {
cancelAnimationFrame(frameTimer);
}
}
setTimeout(frameLooper, 500);
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="109" height="93" x="1385" y="1100"]
[anim name=Back time=200 top=948]
[_tb_end_tyrano_code]

[s  ]
*popupsul_04

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2500"  name="money"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=6"  name="slove"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(35-33+1)+33)"  name="gift_line"  cmd="="  op="r"  val="33"  val_2="35"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_04.png'/>
<p class="msgrandomtext">
<span id="gift_line_form"></span>
</p>
</div>
</div>


<script>
var giftLineElem = document.getElementById("gift_line_form");
var string = window.TYRANO.kag.stat.f.gift_line;
var replacedString = string.replace(/\u00A0/g, ' ');
var array = replacedString.split("");
var frameTimer;

function frameLooper() {
if (array.length > 0) {
giftLineElem.textContent+= array.shift();
frameTimer = requestAnimationFrame(frameLooper);
} else {
cancelAnimationFrame(frameTimer);
}
}
setTimeout(frameLooper, 500);
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="109" height="93" x="1385" y="1100"]
[anim name=Back time=200 top=948]
[_tb_end_tyrano_code]

[s  ]
