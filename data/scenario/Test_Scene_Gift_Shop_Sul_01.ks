[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Sul_01.ks]

*gift_sul

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

[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_01.png"  ]
[tb_start_tyrano_code]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=90 y=76 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.jlove]" size=30 x=410 y=600 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=380 y=78 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Save_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Save_UI/UI_Close_Bt_02.png" width="83" height="87" x="1763" y="60"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_kang_02.png" width="230" height="283" x="38" y="767"]
[button name="jin" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="gift_jin" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="230" height="283" x="287" y="767"]
[button name="buy_Sul_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="620" y="958"]
[button name="buy_Sul_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="940" y="958"]
[button name="buy_Sul_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1260" y="958"]
[button name="buy_Sul_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1580" y="958"]
[_tb_end_tyrano_code]

[hidemenubutton]

[mask_off  time="1000"  effect="rotateOutUpRight"  ]
[s  ]
*gift_sul_back

[cm  ]
[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_01.png"  ]
[tb_start_tyrano_code]
[cm]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Save_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Save_UI/UI_Close_Bt_02.png" width="83" height="87" x="1763" y="60"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_kang_02.png" width="230" height="283" x="38" y="767"]
[button name="jin" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="gift_jin" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="230" height="283" x="287" y="767"]
[button name="buy_Sul_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="620" y="958"]
[button name="buy_Sul_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="940" y="958"]
[button name="buy_Sul_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1260" y="958"]
[button name="buy_Sul_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1580" y="958"]
[_tb_end_tyrano_code]

[hidemenubutton]

[s  ]
*buy_sul_01

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_01.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="sul_back_bt_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_01

[cm  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_01"  cond="f.money>499"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_01"  cond=""  ]
[s  ]
*sul_back_bt_01

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
*buy_sul_02

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_02.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="sul_back_bt_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_02

[cm  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_02"  cond="f.money>899"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_02"  cond=""  ]
[s  ]
*sul_back_bt_02

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
*buy_sul_03

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_03.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="sul_back_bt_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_03

[cm  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_03"  cond="f.money>1699"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_03"  cond=""  ]
[s  ]
*sul_back_bt_03

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
*buy_sul_04

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_04.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="sul_back_bt_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_04

[cm  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_04"  cond="f.money>2499"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_04"  cond=""  ]
[s  ]
*sul_back_bt_04

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
