[_tb_system_call storage=system/_Test_Scene_01.ks]

[tb_start_tyrano_code]
[screen_full]
[_tb_end_tyrano_code]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
*testscene

[hidemenubutton]

[cm  ]
[bg  time="1"  method="crossfade"  storage="BGI/Test_Bgi_01.png"  ]
[tb_start_tyrano_code]
[ptext layer=2 page=fore text="&[f.money]" size=30 x=160 y=226 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 page=fore text="&[f.klove]" size=30 x=190 y=495 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 page=fore text="&[f.jlove]" size=30 x=190 y=627 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 page=fore text="&[f.slove]" size=30 x=190 y=756 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 page=fore text="&[f.Day]" size=29 x=168 y=134 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 page=fore text="&[f.score]" size=49 x=1290 y=55 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="383" height="185" x="21" y="891"]
[button name="teststart" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="612" height="96" x="731" y="969"]
[button name="msgkang" storage="Test_Scene_01.ks" target="msgkang" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="311" height="174" x="566" y="701"]
[button name="msgjin" storage="Test_Scene_01.ks" target="msgjin" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="311" height="174" x="888" y="701"]
[button name="msgsul" storage="Test_Scene_01.ks" target="msgsul" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="310" height="174" x="1210" y="701"]
[_tb_end_tyrano_code]

[mask_off  time="0"  effect="fadeOut"  ]
[s  ]
*close_back

[mask  time="300"  effect="rotateInUpRight"  color="0x000000"  ]
[hidemenubutton]

[cm  ]
[bg  time="1"  method="crossfade"  storage="BGI/Test_Bgi_01.png"  ]
[tb_start_tyrano_code]
[ptext layer=2 page=fore text="&[f.money]" size=30 x=160 y=226 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 page=fore text="&[f.klove]" size=30 x=190 y=495 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 page=fore text="&[f.jlove]" size=30 x=190 y=627 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 page=fore text="&[f.slove]" size=30 x=190 y=756 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 page=fore text="&[f.Day]" size=29 x=168 y=134 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 page=fore text="&[f.score]" size=49 x=1290 y=55 width=150 color="0xffffff" align="center" vertical=false face="YeonSung-Regular" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="383" height="185" x="21" y="891"]
[button name="teststart" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_UI/Test_Start_02.png" width="612" height="96" x="731" y="969"]
[button name="msgkang" storage="Test_Scene_01.ks" target="msgkang" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="311" height="174" x="566" y="701"]
[button name="msgjin" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="311" height="174" x="888" y="701"]
[button name="msgsul" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="310" height="174" x="1210" y="701"]
[_tb_end_tyrano_code]

[mask_off  time="300"  effect="rotateOutUpRight"  ]
[s  ]
*gift

[cm  ]
[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang"  ]
[s  ]
*teststart

*msgkang

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Secret_Msg_UI/Secret_Msg_Kang_01.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="kang_secret_bt_01" storage="Test_Scene_01.ks" target="kang_secret_bt_01" graphic="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Buy_Bt_01.png" enterimg="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Buy_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="kang_secret_bt_02" storage="Test_Scene_01.ks" target="kang_secret_bt_02" graphic="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Back_Bt_01.png" enterimg="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*kang_secret_bt_01

[cm  ]
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

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Secret_Msg_UI/Secret_Msg_Jin_01.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_secret_bt_01" storage="Test_Scene_01.ks" target="jin_secret_bt_01" graphic="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Buy_Bt_01.png" enterimg="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Buy_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="jin_secret_bt_02" storage="Test_Scene_01.ks" target="jin_secret_bt_02" graphic="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Back_Bt_01.png" enterimg="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*jin_secret_bt_01

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

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

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Secret_Msg_UI/Secret_Msg_Sul_01.png' style='z-index:-1; left:456px; top:297px; width:1008px; height:486px; position:absolute;'>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_secret_bt_01" storage="Test_Scene_01.ks" target="sul_secret_bt_01" graphic="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Buy_Bt_01.png" enterimg="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Buy_Bt_02.png" width="241" height="69" x="876" y="640"]
[button name="sul_secret_bt_02" storage="Test_Scene_01.ks" target="sul_secret_bt_02" graphic="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Back_Bt_01.png" enterimg="../image/New_GUI/Secret_Msg_UI/Secret_Msg_Back_Bt_02.png" width="241" height="69" x="1145" y="640"]
[_tb_end_tyrano_code]

[s  ]
*sul_secret_bt_01

[cm  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

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
