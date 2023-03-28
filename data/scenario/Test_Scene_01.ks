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
[button name="msgkang" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="311" height="174" x="566" y="701"]
[button name="msgjin" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Msg_Jin_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Jin_02.png" width="311" height="174" x="888" y="701"]
[button name="msgsul" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Msg_Sul_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Sul_02.png" width="310" height="174" x="1210" y="701"]
[_tb_end_tyrano_code]

[mask_off  time="500"  effect="fadeOut"  ]
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
[button name="msgkang" storage="title_screen.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Msg_Kang_01.png" enterimg="../image/New_GUI/Test_UI/Test_Msg_Kang_02.png" width="311" height="174" x="566" y="701"]
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

*msgjin

*msgsul

[s  ]
