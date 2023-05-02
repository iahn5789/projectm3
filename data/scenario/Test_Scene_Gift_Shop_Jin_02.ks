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
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(14-12+1)+12)"  name="gift_line"  cmd="="  op="r"  val="12"  val_2="14"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_01.png';>
</div>
</div>

<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("gift_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.gift_line;
}

setGiftLine();
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
*popupjin_02

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=900"  name="money"  cmd="-="  op="t"  val="900"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=2"  name="jlove"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(17-15+1)+15)"  name="gift_line"  cmd="="  op="r"  val="15"  val_2="17"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_02.png';>
</div>
</div>


<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("gift_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.gift_line;
}

setGiftLine();
</script>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
*popupjin_03

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1700"  name="money"  cmd="-="  op="t"  val="1700"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=4"  name="jlove"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(20-18+1)+18)"  name="gift_line"  cmd="="  op="r"  val="18"  val_2="20"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_03.png';>
</div>
</div>


<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("gift_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.gift_line;
}

setGiftLine();
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
*popupjin_04

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2500"  name="money"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=6"  name="jlove"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[tb_eval  exp="f.gift_line=Math.floor(Math.random()*(23-21+1)+21)"  name="gift_line"  cmd="="  op="r"  val="21"  val_2="23"  ]
[call  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_save"  ]
[tb_start_tyrano_code]
[html]
<div class="shopmsg">
<div style="position: absolute; left:0px; top:0px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_04.png';>
</div>
</div>


<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("gift_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.gift_line;
}

setGiftLine();
</script>

[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
