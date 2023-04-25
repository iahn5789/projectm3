[_tb_system_call storage=system/_Test_Scene_01.ks]

*testscene

[tb_hide_message_window  ]
[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[tb_keyconfig  flag="0"  ]
[hidemenubutton]

[cm  ]
[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=160 y=226 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=30 x=190 y=495 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=190 y=627 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=190 y=756 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=168 y=134 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="score" page=fore text="&[f.score]" size=49 x=1370 y=64 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="343" height="209" x="47" y="841"]
[button name="teststart" storage="Test_Scene_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="348" height="106" x="653" y="1100"]
[button name="msgshow" storage="Test_Scene_01.ks" target="msgshow" graphic="../image/New_GUI/Test_UI/Msg_Bt_01.png" enterimg="../image/New_GUI/Test_UI/Msg_Bt_02.png" width="348" height="106" x="1128" y="1100"]
[button name="lootkang" storage="Test_Scene_01.ks" target="lootkang" graphic="../image/New_GUI/Test_UI/Loot_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Loot_Kang_02.png" width="274" height="410" x="614" y="105" ]
[button name="lootjin" storage="Test_Scene_01.ks" target="lootjin" graphic="../image/New_GUI/Test_UI/Loot_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Loot_Jin_02.png" width="274" height="410" x="927" y="105"]
[button name="lootsul" storage="Test_Scene_01.ks" target="lootsul" graphic="../image/New_GUI/Test_UI/Loot_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Loot_Sul_02.png" width="274" height="410" x="1241" y="105"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.testScene='FALSE'"  name="testScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[s  ]
*close_back

[tb_keyconfig  flag="0"  ]
[mask  time="300"  effect="rotateInUpRight"  color="0x000000"  ]
[tb_eval  exp="f.testScene='FALSE'"  name="testScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[hidemenubutton]

[cm  ]
[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=160 y=226 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=30 x=190 y=495 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=190 y=627 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=190 y=756 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=168 y=134 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="score" page=fore text="&[f.score]" size=49 x=1370 y=64 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="343" height="209" x="47" y="841"]
[button name="teststart" storage="Test_Scene_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="348" height="106" x="653" y="1100"]
[button name="msgshow" storage="Test_Scene_01.ks" target="msgshow" graphic="../image/New_GUI/Test_UI/Msg_Bt_01.png" enterimg="../image/New_GUI/Test_UI/Msg_Bt_02.png" width="348" height="106" x="1128" y="1100"]
[button name="lootkang" storage="Test_Scene_01.ks" target="lootkang" graphic="../image/New_GUI/Test_UI/Loot_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Loot_Kang_02.png" width="274" height="410" x="614" y="105" ]
[button name="lootjin" storage="Test_Scene_01.ks" target="lootjin" graphic="../image/New_GUI/Test_UI/Loot_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Loot_Jin_02.png" width="274" height="410" x="927" y="105"]
[button name="lootsul" storage="Test_Scene_01.ks" target="lootsul" graphic="../image/New_GUI/Test_UI/Loot_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Loot_Sul_02.png" width="274" height="410" x="1241" y="105"]
[_tb_end_tyrano_code]

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
[button name="msgkangbt" storage="Test_Scene_01.ks" target="msgkangbt" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="231" height="229" x="946" y="1100"]
[button name="msgjinbt" storage="Test_Scene_01.ks" target="msgjinbt" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="240" height="241" x="730" y="1100"]
[button name="msgsulbt" storage="Test_Scene_01.ks" target="msgsulbt" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="256" height="256" x="1131" y="1100"]
[button name="msgclosebt" storage="Test_Scene_01.ks" target="msgclosebt" graphic="../image/New_GUI/Test_UI/Msg_Close_Bt_01.png" enterimg="../image/New_GUI/Test_UI/Msg_Close_Bt_02.png" width="100" height="104" x="1430" y="1100"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="msgkangbt" top=720 time=300 effect=easeInQuad]
[anim name="msgjinbt" top=770 time=300 effect=easeInQuad]
[anim name="msgsulbt" top=750 time=300 effect=easeInQuad]
[anim name="testscene" top=671 time=300 effect=easeInQuad]
[anim name="msgclosebt" top=922 time=300 effect=easeInQuad]
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

[filter layer=all blur=5 opacity=40]
[anim name=msgkang time=1 opacity=50]
[anim name=msgjin time=1 opacity=50]
[anim name=msgsul time=1 opacity=50]
[anim name=teststart time=1 opacity=50]
[anim name=gift time=1 opacity=50]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Test_UI/Test_In_Msg_01.png' style='z-index:-1; left:500px; top:216px; width:927px; height:656px; position:absolute;'>
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
[button name="test_start_bt_01" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_Bt_01.png" width="241" height="69" x="660" y="754" enterimg="../image/New_GUI/Test_UI/Test_Start_Bt_02.png"]
[button name="test_back_bt_01" storage="Test_Scene_01.ks" target="test_back_bt_01" graphic="../image/New_GUI/Test_UI/Test_Back_Bt_01.png" width="241" height="69" x="1022" y="754" enterimg="../image/New_GUI/Test_UI/Test_Back_Bt_02.png"]
[_tb_end_tyrano_code]

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
[anim name=msgkang time=1 opacity=50]
[anim name=msgjin time=1 opacity=50]
[anim name=msgsul time=1 opacity=50]
[anim name=teststart time=1 opacity=50]
[anim name=gift time=1 opacity=50]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Test_UI/Secret_Msg_Kang_01.png' style='z-index:-1; left:630px; top:302px; width:668px; height:485px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_secret_bt_01" storage="Test_Scene_01.ks" target="kang_secret_bt_01" graphic="../image/New_GUI/Test_UI/Popup_Buy_01.png" width="142" height="106" x="1289" y="349" enterimg="../image/New_GUI/Test_UI/Popup_Buy_02.png"]
[button name="kang_secret_bt_02" storage="Test_Scene_01.ks" target="kang_secret_bt_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="142" height="106" x="1289" y="638" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[s  ]
*kang_secret_bt_01

[jump  storage="Test_Scene_01.ks"  target="*kang_secret_buy_01"  cond="f.money>300"  ]
[jump  storage="Test_Scene_01.ks"  target="*secret_buy_fail_01"  ]
[s  ]
*kang_secret_buy_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  val_2="undefined"  ]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*secret_buy_fail_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*kang_secret_bt_02

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
[bg  time="0"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
*msgjin

[jump  storage="Test_Scene_01.ks"  target="*msgjin_02"  cond="f.testScene=='FALSE'"  ]
[s  ]
*msgjin_02

[tb_eval  exp="f.testScene='TRUE'"  name="testScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]

[filter layer=all blur=5 opacity=40]
[anim name=msgkang time=1 opacity=50]
[anim name=msgjin time=1 opacity=50]
[anim name=msgsul time=1 opacity=50]
[anim name=teststart time=1 opacity=50]
[anim name=gift time=1 opacity=50]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Test_UI/Secret_Msg_Jin_01.png' style='z-index:-1; left:630px; top:302px; width:668px; height:485px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_secret_bt_01" storage="Test_Scene_01.ks" target="jin_secret_bt_01" graphic="../image/New_GUI/Test_UI/Popup_Buy_01.png" width="142" height="106" x="1289" y="349" enterimg="../image/New_GUI/Test_UI/Popup_Buy_02.png"]
[button name="jin_secret_bt_02" storage="Test_Scene_01.ks" target="jin_secret_bt_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="142" height="106" x="1289" y="638" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[s  ]
*jin_secret_bt_01

[cm  ]
[jump  storage="Test_Scene_01.ks"  target="*jin_secret_buy_01"  cond="f.money>300"  ]
[jump  storage="Test_Scene_01.ks"  target="*secret_buy_fail_01"  ]
[s  ]
*jin_secret_buy_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=1"  name="jlove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*jin_secret_bt_02

[cm  ]
[tb_start_tyrano_code]
[cm]
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
[anim name=msgkang time=1 opacity=50]
[anim name=msgjin time=1 opacity=50]
[anim name=msgsul time=1 opacity=50]
[anim name=teststart time=1 opacity=50]
[anim name=gift time=1 opacity=50]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Test_UI/Secret_Msg_Sul_01.png' style='z-index:-1; left:630px; top:302px; width:668px; height:485px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_secret_bt_01" storage="Test_Scene_01.ks" target="sul_secret_bt_01" graphic="../image/New_GUI/Test_UI/Popup_Buy_01.png" width="142" height="106" x="1289" y="349" enterimg="../image/New_GUI/Test_UI/Popup_Buy_02.png"]
[button name="sul_secret_bt_02" storage="Test_Scene_01.ks" target="sul_secret_bt_02" graphic="../image/New_GUI/Test_UI/Popup_Close_01.png" width="142" height="106" x="1289" y="638" enterimg="../image/New_GUI/Test_UI/Popup_Close_02.png"]

[_tb_end_tyrano_code]

[s  ]
*sul_secret_bt_01

[cm  ]
[jump  storage="Test_Scene_01.ks"  target="*sul_secret_buy_01"  cond="f.money>300"  ]
[jump  storage="Test_Scene_01.ks"  target="*secret_buy_fail_01"  ]
[s  ]
*sul_secret_buy_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=1"  name="slove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*sul_secret_bt_02

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
