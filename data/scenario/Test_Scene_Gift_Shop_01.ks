[_tb_system_call storage=system/_Test_Scene_Gift_Shop_01.ks]

*gift_kang

[cm  ]
[mask  time="300"  effect="rotateInUpRight"  color="0x031a00"  ]
[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Kang_01.png"  ]
[hidemenubutton]

[tb_start_tyrano_code]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Save_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Save_UI/UI_Close_Bt_02.png" width="83" height="87" x="1763" y="60"]
[button name="jin" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="gift_jin" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="230" height="283" x="38" y="767"]
[button name="sul" storage="title_screen.ks" target="gift_sul" graphic="../image/New_GUI/Giftshop_UI/Giftshop_sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="230" height="283" x="287" y="767"]
[button name="buy_kang_01" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="620" y="958"]
[button name="buy_kang_02" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="940" y="958"]
[button name="buy_kang_03" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1260" y="958"]
[button name="buy_kang_04" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1580" y="958"]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="rotateOutUpRight"  ]
[s  ]
*gift_kang_back

[cm  ]
[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Kang_01.png"  ]
[hidemenubutton]

[tb_start_tyrano_code]
[button name="close" storage="Test_Scene_01.ks" target="close_back" graphic="../image/New_GUI/Save_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Save_UI/UI_Close_Bt_02.png" width="83" height="87" x="1763" y="60"]
[button name="jin" storage="title_screen.ks" target="gift_jin" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="230" height="283" x="38" y="767"]
[button name="sul" storage="title_screen.ks" target="gift_sul" graphic="../image/New_GUI/Giftshop_UI/Giftshop_sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="230" height="283" x="287" y="767"]
[button name="buy_kang_01" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="620" y="958"]
[button name="buy_kang_02" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="940" y="958"]
[button name="buy_kang_03" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1260" y="958"]
[button name="buy_kang_04" storage="Test_Scene_Gift_Shop_01.ks" target="buy_kang_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="243" height="71" x="1580" y="958"]
[_tb_end_tyrano_code]

[s  ]
*buy_kang_01

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Kang_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Kang_01.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_gift_bt_01" storage="Test_Scene_Gift_Shop_01.ks" target="kang_gift_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="kang_back_bt_01" storage="Test_Scene_Gift_Shop_01.ks" target="kang_back_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*kang_gift_bt_01

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*kang_back_bt_01

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*buy_kang_02

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Kang_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Kang_02.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_gift_bt_02" storage="Test_Scene_Gift_Shop_01.ks" target="kang_gift_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="kang_back_bt_02" storage="Test_Scene_Gift_Shop_01.ks" target="kang_back_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*kang_gift_bt_02

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*kang_back_bt_02

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*buy_kang_03

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Kang_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Kang_03.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_gift_bt_03" storage="Test_Scene_Gift_Shop_01.ks" target="kang_gift_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="kang_back_bt_03" storage="Test_Scene_Gift_Shop_01.ks" target="kang_back_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*kang_gift_bt_03

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*kang_back_bt_03

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*buy_kang_04

[bg  time="0"  method="crossfade"  storage="Giftshop_BGI/Giftshop_Bgi_Kang_02.png"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Kang_04.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_gift_bt_04" storage="Test_Scene_Gift_Shop_01.ks" target="kang_gift_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Gift_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="kang_back_bt_04" storage="Test_Scene_Gift_Shop_01.ks" target="kang_back_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*kang_gift_bt_04

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
*kang_back_bt_04

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang_back"  ]
[s  ]
