[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Jin_01.ks]

*gift_jin

[cm  ]
[mask  time="300"  effect="rotateInUpRight"  color="0x031a00"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Jin_01.png"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_01.ks" target="testscene" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="228" height="98" x="0" y="0"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="243" height="78" x="517" y="160"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="243" height="78" x="1063" y="160"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="550" y="947"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="886" y="947"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1222" y="947"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1558" y="947"]

[_tb_end_tyrano_code]

[hidemenubutton]

[mask_off  time="1000"  effect="rotateOutUpRight"  ]
[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[s  ]
*gift_jin_back

[cm  ]
[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Jin_01.png"  ]
[tb_start_tyrano_code]
[button name="close" storage="Test_Scene_01.ks" target="testscene" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="228" height="98" x="0" y="0"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="243" height="78" x="517" y="160"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="243" height="78" x="1063" y="160"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="550" y="947"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="886" y="947"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1222" y="947"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1558" y="947"]
[_tb_end_tyrano_code]

[hidemenubutton]

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[s  ]
*gift_kang_change

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*gift_sul_change

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_jin_01

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_01_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_jin_01_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_01.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="281" height="92" x="579" y="857"]
[button name="jin_back_bt_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="281" height="92" x="1060" y="857"]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="228" height="98" x="0" y="0"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="243" height="78" x="517" y="160"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="243" height="78" x="1063" y="160"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="550" y="947"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="886" y="947"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1222" y="947"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1558" y="947"]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_02.ks"  target="*popupjin_01"  cond="f.money>499"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_01"  cond=""  ]
[s  ]
*jin_back_bt_01

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
[s  ]
*buy_jin_02

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_02_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_jin_02_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_02.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="281" height="92" x="579" y="857"]
[button name="jin_back_bt_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="281" height="92" x="1060" y="857"]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_02

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="228" height="98" x="0" y="0"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="243" height="78" x="517" y="160"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="243" height="78" x="1063" y="160"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="550" y="947"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="886" y="947"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1222" y="947"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1558" y="947"]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_02.ks"  target="*popupjin_02"  cond="f.money>899"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_02"  cond=""  ]
[s  ]
*jin_back_bt_02

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
[s  ]
*buy_jin_03

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_03_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_jin_03_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_03.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="281" height="92" x="579" y="857"]
[button name="jin_back_bt_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="281" height="92" x="1060" y="857"]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_03

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="228" height="98" x="0" y="0"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="243" height="78" x="517" y="160"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="243" height="78" x="1063" y="160"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="550" y="947"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="886" y="947"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1222" y="947"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1558" y="947"]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_02.ks"  target="*popupjin_03"  cond="f.money>1699"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_03"  cond=""  ]
[s  ]
*jin_back_bt_03

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
[s  ]
*buy_jin_04

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_04_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_jin_04_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 opacity=40]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_04.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="281" height="92" x="579" y="857"]
[button name="jin_back_bt_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="281" height="92" x="1060" y="857"]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_04

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1600 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1420 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="228" height="98" x="0" y="0"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="243" height="78" x="517" y="160"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="243" height="78" x="1063" y="160"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="550" y="947"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="886" y="947"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1222" y="947"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="281" height="91" x="1558" y="947"]
[anim name=close time=1 opacity=10]
[anim name=kang time=1 opacity=10]
[anim name=sul time=1 opacity=10]
[anim name=jin time=1 opacity=10]
[anim name=buy_jin_01 time=1 opacity=10]
[anim name=buy_jin_02 time=1 opacity=10]
[anim name=buy_jin_03 time=1 opacity=10]
[anim name=buy_jin_04 time=1 opacity=10]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_02.ks"  target="*popupjin_04"  cond="f.money>2499"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*buy_jin_04"  cond=""  ]
[s  ]
*jin_back_bt_04

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
[s  ]
