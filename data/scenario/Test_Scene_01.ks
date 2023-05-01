[_tb_system_call storage=system/_Test_Scene_01.ks]

*testscene

[tb_hide_message_window  ]
[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[tb_keyconfig  flag="0"  ]
[hidemenubutton]

[cm  ]
[tb_start_tyrano_code]
[clearfix name="lootcommon"]
[clearfix name="lootkang"]
[clearfix name="lootjin"]
[clearfix name="lootsul"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=210 y=178 width=150 color="0x9D4804" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=30 x=200 y=410 width=150 color="0x9D4804" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=200 y=504 width=150 color="0x9D4804" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=200 y=602 width=150 color="0x9D4804" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=248 y=80 width=60 color="0x9D4804" align="right" vertical=false face="PyeongChangPeaceLight" ]
;[ptext layer=2 name="score" page=fore text="&[f.score]" size=49 x=1370 y=64 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="343" height="209" x="47" y="841"]
[button name="teststart" storage="Test_Scene_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="348" height="106" x="653" y="1100"]
[button name="msgshow" storage="Test_Scene_01.ks" target="msgshow" graphic="../image/New_GUI/Test_UI/Msg_Bt_01.png" enterimg="../image/New_GUI/Test_UI/Msg_Bt_02.png" width="348" height="106" x="1128" y="1100"]
[_tb_end_tyrano_code]

[jump  storage="ROOT_SETTINGS.ks"  target="*Day_Check"  ]
[s  ]
*After_Button_Change

[tb_start_tyrano_code]
;[anim name="teststart" top=912 time=300 effect=easeInQuad]
;[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_01" top=1100 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=1100 time=1000 effect=easeInQuad]
[anim name="test_back_bt_01" top=1100 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.testScene='FALSE'"  name="testScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
*After_Button_Click

[s  ]
*close_back

[tb_keyconfig  flag="0"  ]
[mask  time="300"  effect="rotateInUpRight"  color="0x000000"  ]
[tb_eval  exp="f.testScene='FALSE'"  name="testScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[hidemenubutton]

[cm  ]
[tb_start_tyrano_code]
[clearfix name="lootcommon"]
[clearfix name="lootkang"]
[clearfix name="lootjin"]
[clearfix name="lootsul"]
[_tb_end_tyrano_code]

[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=210 y=182 width=150 color="0x9D4804" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=30 x=200 y=408 width=150 color="0x9D4804" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=200 y=500 width=150 color="0x9D4804" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=200 y=599 width=150 color="0x9D4804" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=248 y=84 width=60 color="0x9D4804" align="right" vertical=false face="The Jamsil5Bold" ]
;[ptext layer=2 name="score" page=fore text="&[f.score]" size=49 x=1370 y=64 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="343" height="209" x="47" y="841"]
[button name="teststart" storage="Test_Scene_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="348" height="106" x="653" y="1100"]
[button name="msgshow" storage="Test_Scene_01.ks" target="msgshow" graphic="../image/New_GUI/Test_UI/Msg_Bt_01.png" enterimg="../image/New_GUI/Test_UI/Msg_Bt_02.png" width="348" height="106" x="1128" y="1100"]

[_tb_end_tyrano_code]

[jump  storage="ROOT_SETTINGS.ks"  target="*Day_Check"  ]
[s  ]
[tb_start_tyrano_code]
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[mask_off  time="300"  effect="rotateOutUpRight"  ]
[s  ]
*msgshow

[tb_start_tyrano_code]
[anim name="teststart" top=1100 time=200 effect=easeInQuad]
[anim name="msgshow" top=1100 time=200 effect=easeInQuad]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=736 height=419 left=696 top=1100 page=fore visible=true name=testscene storage = ../image/New_GUI/Test_UI/Desk_01.png ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="msgkangbt" storage="Test_Scene_01.ks" target="msgkang" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="231" height="229" x="946" y="1100"]
[button name="msgjinbt" storage="Test_Scene_01.ks" target="msgjin" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="240" height="241" x="730" y="1100"]
[button name="msgsulbt" storage="Test_Scene_01.ks" target="msgsul" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="256" height="256" x="1131" y="1100"]
[button name="msgclosebt" storage="Test_Scene_01.ks" target="msgclosebt" graphic="../image/New_GUI/Test_UI/Msg_Close_Bt_01.png" enterimg="../image/New_GUI/Test_UI/Msg_Close_Bt_02.png" width="135" height="229" x="1430" y="1100"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="msgkangbt" top=720 time=300 effect=easeInQuad]
[anim name="msgjinbt" top=770 time=300 effect=easeInQuad]
[anim name="msgsulbt" top=750 time=300 effect=easeInQuad]
[anim name="testscene" top=671 time=300 effect=easeInQuad]
[anim name="msgclosebt" top=847 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*msgclosebt

[tb_start_tyrano_code]
[anim name="msgkangbt" top=1100 time=300 effect=easeInQuad]
[anim name="msgjinbt" top=1100 time=300 effect=easeInQuad]
[anim name="msgsulbt" top=1100 time=300 effect=easeInQuad]
[anim name="testscene" top=1100 time=300 effect=easeInQuad]
[anim name="msgclosebt" top=1100 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[wait  time="300"  ]
[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*gift

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang"  cond="f.testScene=='FALSE'"  ]
[s  ]
*teststart

[jump  storage="Test_Scene_01.ks"  target="*teststart_02"  cond="f.testScene=='FALSE'"  ]
[s  ]
*teststart_02

[tb_eval  exp="f.testScene='TRUE'"  name="testScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[anim name=msgkang time=1 opacity=50]
[anim name=lootkang time=1 opacity=50]
[anim name=lootjin time=1 opacity=50]
[anim name=lootsul time=1 opacity=50]
[anim name=gift time=1 opacity=50]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="testscenefadein">
<div style="position: absolute;top: 0px;left: 0px;z-index: 99999999;">
<img src=data/image/New_GUI/Test_UI/Test_In_Msg_01.png>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<p  style='z-index:2; left:1000px; top:480px; width:700px; height:100px; color:white; position:absolute;font-size: 50px;'>
<span id="score_form"></span>
</p>
<p  style='z-index:2; left:1000px; top:595px; width:700px; height:100px; color:white; position:absolute;font-size: 50px;'>
<span id="money_form"></span>
</p>
</div>

<script>
function setScore() {
let giftLineElem = document.getElementById("score_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.score;
}
function setMoney() {
let giftLineElem = document.getElementById("money_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.money;
}
setMoney();
setScore();
</script>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="test_start_bt_01" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" width="348" height="106" x="575" y="1100" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png"]
[button name="test_back_bt_01" storage="Test_Scene_01.ks" target="testback" graphic="../image/New_GUI/Test_UI/Test_Close_01.png" width="348" height="106" x="999" y="1100" enterimg="../image/New_GUI/Test_UI/Test_Close_02.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="teststart" top=1100 time=300 effect=easeInQuad]
[anim name="msgshow" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=912 time=800 effect=easeInQuad]
[anim name="test_back_bt_01" top=912 time=800 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*testback

[tb_start_tyrano_code]
[freeimage layer="1" time=500 wait=false ]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*test_back_bt_01

[tb_eval  exp="f.testScene='FALSE'"  name="testScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*msgkang

[jump  storage="Test_Scene_01.ks"  target="*msgkang_02"  cond="f.testScene=='FALSE'"  ]
[s  ]
*msgkang_02

[tb_eval  exp="f.testScene='TRUE'"  name="testScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=lootkang time=1 opacity=50]
[anim name=lootjin time=1 opacity=50]
[anim name=lootsul time=1 opacity=50]
[anim name=gift time=1 opacity=50]
[anim name="msgkangbt" top=1100 time=200 effect=easeInQuad]
[anim name="msgjinbt" top=1100 time=200 effect=easeInQuad]
[anim name="msgsulbt" top=1100 time=200 effect=easeInQuad]
[anim name="testscene" top=1100  time=200 effect=easeInQuad]
[anim name="msgclosebt" top=1100 time=200 effect=easeInQuad]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="msgkang">
<div style="position: absolute; left:366px; top:31px; z-index: 99999999;">
<img src=data/image/New_GUI/Test_UI/Secret_Msg_Kang_01.png>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_secret_bt_01" storage="Test_Scene_01.ks" target="kang_secret_bt_01" graphic="../image/New_GUI/Test_UI/Popup_Buy_01.png" width="348" height="106" x="575" y="1100" enterimg="../image/New_GUI/Test_UI/Popup_Buy_02.png"]
[button name="kang_secret_bt_02" storage="Test_Scene_01.ks" target="kang_secret_bt_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="348" height="106" x="999" y="1100" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="kang_secret_bt_01" top=920 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=920 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*kang_secret_bt_01

[jump  storage="Test_Scene_01.ks"  target="*kang_secret_buy_01"  cond="f.money>300"  ]
[jump  storage="Test_Scene_01.ks"  target="*secret_buy_fail_01"  ]
[s  ]
*kang_secret_buy_01

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  val_2="undefined"  ]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Msg_Open_01.ks"  target="*Msg_Open_Kang_01"  ]
[tb_start_tyrano_code]
[button name="msg_close_01" storage="Test_Scene_01.ks" target="msg_close_01" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="348" height="106" x="786" y="920" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[s  ]
*msg_close_01

[tb_start_tyrano_code]
[iscript]
setTimeout(function () {
$('.msgopen03').fadeOut(300);
}, 100);
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*secret_buy_fail_01

[quake  time="300"  count="3"  hmax="3"  wait="false"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*kang_secret_bt_02

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*msgjin

[jump  storage="Test_Scene_01.ks"  target="*msgjin_02"  cond="f.testScene=='FALSE'"  ]
[s  ]
*msgjin_02

[tb_eval  exp="f.testScene='TRUE'"  name="testScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=lootkang time=1 opacity=50]
[anim name=lootjin time=1 opacity=50]
[anim name=lootsul time=1 opacity=50]
[anim name=gift time=1 opacity=50]
[anim name="msgkangbt" top=1100 time=200 effect=easeInQuad]
[anim name="msgjinbt" top=1100 time=200 effect=easeInQuad]
[anim name="msgsulbt" top=1100 time=200 effect=easeInQuad]
[anim name="testscene" top=1100  time=200 effect=easeInQuad]
[anim name="msgclosebt" top=1100 time=200 effect=easeInQuad]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="msgjin">
<div style="position: absolute; left:366px; top:31px; z-index: 99999999;">
<img src=data/image/New_GUI/Test_UI/Secret_Msg_Jin_01.png>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_secret_bt_01" storage="Test_Scene_01.ks" target="jin_secret_bt_01" graphic="../image/New_GUI/Test_UI/Popup_Buy_01.png" width="348" height="106" x="575" y="1100" enterimg="../image/New_GUI/Test_UI/Popup_Buy_02.png"]
[button name="jin_secret_bt_02" storage="Test_Scene_01.ks" target="jin_secret_bt_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="348" height="106" x="999" y="1100" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="jin_secret_bt_01" top=920 time=300 effect=easeInQuad]
[anim name="jin_secret_bt_02" top=920 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*jin_secret_bt_01

[cm  ]
[jump  storage="Test_Scene_01.ks"  target="*jin_secret_buy_01"  cond="f.money>300"  ]
[jump  storage="Test_Scene_01.ks"  target="*secret_buy_fail_01"  ]
[s  ]
*jin_secret_buy_01

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  val_2="undefined"  ]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Msg_Open_01.ks"  target="*Msg_Open_Jin_01"  ]
[tb_start_tyrano_code]
[button name="msg_close_02" storage="Test_Scene_01.ks" target="msg_close_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="348" height="106" x="786" y="920" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[s  ]
*msg_close_02

[tb_start_tyrano_code]
[iscript]
setTimeout(function () {
$('.msgopen03jin').fadeOut(300);
}, 100);
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*jin_secret_bt_02

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*msgsul

[jump  storage="Test_Scene_01.ks"  target="*msgsul_02"  cond="f.testScene=='FALSE'"  ]
[s  ]
*msgsul_02

[tb_eval  exp="f.testScene='TRUE'"  name="testScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=lootkang time=1 opacity=50]
[anim name=lootjin time=1 opacity=50]
[anim name=lootsul time=1 opacity=50]
[anim name=gift time=1 opacity=50]
[anim name="msgkangbt" top=1100 time=200 effect=easeInQuad]
[anim name="msgjinbt" top=1100 time=200 effect=easeInQuad]
[anim name="msgsulbt" top=1100 time=200 effect=easeInQuad]
[anim name="testscene" top=1100  time=200 effect=easeInQuad]
[anim name="msgclosebt" top=1100 time=200 effect=easeInQuad]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="msgsul">
<div style="position: absolute; left:366px; top:31px; z-index: 99999999;">
<img src=data/image/New_GUI/Test_UI/Secret_Msg_Sul_01.png>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_secret_bt_01" storage="Test_Scene_01.ks" target="sul_secret_bt_01" graphic="../image/New_GUI/Test_UI/Popup_Buy_01.png" width="348" height="106" x="575" y="1100" enterimg="../image/New_GUI/Test_UI/Popup_Buy_02.png"]
[button name="sul_secret_bt_02" storage="Test_Scene_01.ks" target="sul_secret_bt_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="348" height="106" x="999" y="1100" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="sul_secret_bt_01" top=920 time=300 effect=easeInQuad]
[anim name="sul_secret_bt_02" top=920 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*sul_secret_bt_01

[cm  ]
[jump  storage="Test_Scene_01.ks"  target="*sul_secret_buy_01"  cond="f.money>300"  ]
[jump  storage="Test_Scene_01.ks"  target="*secret_buy_fail_01"  ]
[s  ]
*sul_secret_buy_01

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  val_2="undefined"  ]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[call  storage="Msg_Open_01.ks"  target="*Msg_Open_Sul_01"  ]
[tb_start_tyrano_code]
[button name="msg_close_03" storage="Test_Scene_01.ks" target="msg_close_03" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="348" height="106" x="786" y="920" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[s  ]
*msg_close_03

[tb_start_tyrano_code]
[iscript]
setTimeout(function () {
$('.msgopen03sul').fadeOut(300);
}, 100);
[endscript]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*sul_secret_bt_02

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*TestStart_Bt_Anim

[tb_start_tyrano_code]
[iscript]
console.log("teststart_SCNEDNC")
[endscript]
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_01" top=1100 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=1100 time=1000 effect=easeInQuad]
[anim name="test_back_bt_01" top=1100 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
