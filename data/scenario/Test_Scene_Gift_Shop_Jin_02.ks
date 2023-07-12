[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Jin_02.ks]

*back

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
*popupjin_01

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=500"  name="money"  cmd="-="  op="t"  val="500"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=1"  name="jlove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(26-24+1)+24)"  name="gift_line"  cmd="="  op="r"  val="24"  val_2="26"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_01.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_02

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=900"  name="money"  cmd="-="  op="t"  val="900"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=2"  name="jlove"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(32-30+1)+30)"  name="gift_line"  cmd="="  op="r"  val="30"  val_2="32"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_02.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_03

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1300"  name="money"  cmd="-="  op="t"  val="1300"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=3"  name="jlove"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(32-30+1)+30)"  name="gift_line"  cmd="="  op="r"  val="30"  val_2="32"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_03.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_04

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1600"  name="money"  cmd="-="  op="t"  val="1600"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=4"  name="jlove"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(35-33+1)+33)"  name="gift_line"  cmd="="  op="r"  val="33"  val_2="35"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_04.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_05

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2000"  name="money"  cmd="-="  op="t"  val="2000"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=5"  name="jlove"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(38-36+1)+36)"  name="gift_line"  cmd="="  op="r"  val="36"  val_2="38"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_05.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_06

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2400"  name="money"  cmd="-="  op="t"  val="2400"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=6"  name="jlove"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(41-39+1)+39)"  name="gift_line"  cmd="="  op="r"  val="39"  val_2="41"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_06.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_07

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2800"  name="money"  cmd="-="  op="t"  val="2800"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=7"  name="jlove"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(44-42+1)+42)"  name="gift_line"  cmd="="  op="r"  val="42"  val_2="44"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_07.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupjin_08

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=3200"  name="money"  cmd="-="  op="t"  val="3200"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=8"  name="jlove"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(47-45+1)+45)"  name="gift_line"  cmd="="  op="r"  val="45"  val_2="47"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_08.png'/>
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
