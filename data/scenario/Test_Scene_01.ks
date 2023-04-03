[_tb_system_call storage=system/_Test_Scene_01.ks]

*testscene

[tb_keyconfig  flag="0"  ]
[hidemenubutton]

[tb_start_tyrano_code]
[freeimage layer="2" ]
[_tb_end_tyrano_code]

[cm  ]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
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
[ptext layer=2 name="score" page=fore text="&[f.score]" size=49 x=1290 y=55 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="383" height="185" x="21" y="891"]
[button name="teststart" storage="Test_Scene_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="612" height="96" x="731" y="969"]
[button name="msgkang" storage="Test_Scene_01.ks" target="msgkang" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="311" height="174" x="566" y="701"]
[button name="msgjin" storage="Test_Scene_01.ks" target="msgjin" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="311" height="174" x="888" y="701"]
[button name="msgsul" storage="Test_Scene_01.ks" target="msgsul" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="310" height="174" x="1210" y="701"]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[s  ]
*close_back

[tb_keyconfig  flag="0"  ]
[mask  time="300"  effect="rotateInUpRight"  color="0x000000"  ]
[hidemenubutton]

[tb_start_tyrano_code]
[freeimage layer="2" ]
[_tb_end_tyrano_code]

[cm  ]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
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
[ptext layer=2 name="score" page=fore text="&[f.score]" size=49 x=1290 y=55 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="383" height="185" x="21" y="891"]
[button name="teststart" storage="Test_Scene_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="612" height="96" x="731" y="969"]
[button name="msgkang" storage="Test_Scene_01.ks" target="msgkang" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="311" height="174" x="566" y="701"]
[button name="msgjin" storage="Test_Scene_01.ks" target="msgjin" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="311" height="174" x="888" y="701"]
[button name="msgsul" storage="Test_Scene_01.ks" target="msgsul" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="310" height="174" x="1210" y="701"]
[_tb_end_tyrano_code]

[mask_off  time="300"  effect="rotateOutUpRight"  ]
[s  ]
*gift

[cm  ]
[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang"  ]
[s  ]
*teststart

[cm  ]
[bg  time="0"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Test_UI/Test_In_Msg_01.png' style='z-index:-1; left:500px; top:216px; width:927px; height:656px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="test_start_bt_01" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Test_Start_Bt_01.png" width="241" height="69" x="660" y="754" enterimg="../image/New_GUI/Test_UI/Test_Start_Bt_02.png"]
[button name="test_back_bt_01" storage="Test_Scene_01.ks" target="test_back_bt_01" graphic="../image/New_GUI/Test_UI/Test_Back_Bt_01.png" width="241" height="69" x="1022" y="754" enterimg="../image/New_GUI/Test_UI/Test_Back_Bt_02.png"]
[_tb_end_tyrano_code]

[s  ]
*test_back_bt_01

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*msgkang

[bg  time="0"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
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

[cm  ]
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
*msgjin

[bg  time="0"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
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

[bg  time="0"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
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
