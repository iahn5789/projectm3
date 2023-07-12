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
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(50-48+1)+48)"  name="gift_line"  cmd="="  op="r"  val="48"  val_2="50"  ]
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_02

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=900"  name="money"  cmd="-="  op="t"  val="900"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=2"  name="slove"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(53-51+1)+51)"  name="gift_line"  cmd="="  op="r"  val="51"  val_2="53"  ]
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_03

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1300"  name="money"  cmd="-="  op="t"  val="1300"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=3"  name="slove"  cmd="+="  op="t"  val="3"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(56-54+1)+54)"  name="gift_line"  cmd="="  op="r"  val="54"  val_2="56"  ]
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_04

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1600"  name="money"  cmd="-="  op="t"  val="1600"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=4"  name="slove"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(59-57+1)+57)"  name="gift_line"  cmd="="  op="r"  val="57"  val_2="59"  ]
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
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_05

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2000"  name="money"  cmd="-="  op="t"  val="2000"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=5"  name="slove"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(62-60+1)+60)"  name="gift_line"  cmd="="  op="r"  val="60"  val_2="62"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_05.png'/>
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
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_06

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2400"  name="money"  cmd="-="  op="t"  val="2400"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=6"  name="slove"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(65-63+1)+63)"  name="gift_line"  cmd="="  op="r"  val="63"  val_2="65"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_06.png'/>
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
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_07

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2800"  name="money"  cmd="-="  op="t"  val="2800"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=7"  name="slove"  cmd="+="  op="t"  val="7"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(68-66+1)+66)"  name="gift_line"  cmd="="  op="r"  val="66"  val_2="68"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_07.png'/>
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
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
*popupsul_08

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=3200"  name="money"  cmd="-="  op="t"  val="3200"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=8"  name="slove"  cmd="+="  op="t"  val="8"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(71-69+1)+69)"  name="gift_line"  cmd="="  op="r"  val="69"  val_2="71"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Sul_08.png'/>
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
[button name="Back" storage="Test_Scene_Gift_Shop_Sul_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="1200"]
[anim name=Back time=500 top=984]
[_tb_end_tyrano_code]

[s  ]
