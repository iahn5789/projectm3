[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Jin_02.ks]

*back

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
*popupjin_01

[cm  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=500"  name="money"  cmd="-="  op="t"  val="500"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=1"  name="jlove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_01.png' style='z-index:1; left:538px; top:109px; width:843px; height:862px; position:absolute;'>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=90 y=76 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.jlove]" size=30 x=410 y=600 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=380 y=78 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
*popupjin_02

[cm  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=900"  name="money"  cmd="-="  op="t"  val="900"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=2"  name="jlove"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_02.png' style='z-index:1; left:538px; top:109px; width:843px; height:862px; position:absolute;'>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=90 y=76 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.jlove]" size=30 x=410 y=600 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=380 y=78 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
*popupjin_03

[cm  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=1700"  name="money"  cmd="-="  op="t"  val="1700"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=4"  name="jlove"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_03.png' style='z-index:1; left:538px; top:109px; width:843px; height:862px; position:absolute;'>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=90 y=76 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.jlove]" size=30 x=410 y=600 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=380 y=78 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
*popupjin_04

[cm  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_eval  exp="f.money-=2500"  name="money"  cmd="-="  op="t"  val="2500"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=6"  name="jlove"  cmd="+="  op="t"  val="6"  val_2="undefined"  ]
[tb_start_tyrano_code]
[html]
<div>
<img src='data/image/New_GUI/Giftshop_UI/Popup_Msg_Jin_04.png' style='z-index:1; left:538px; top:109px; width:843px; height:862px; position:absolute;'>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=90 y=76 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil5Bold" ]
[ptext layer=2 name="klove" page=fore text="&[f.jlove]" size=30 x=410 y=600 width=150 color="0xffffff" align="center" vertical=false face="The Jamsil3Regular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=29 x=380 y=78 width=60 color="0xffffff" align="right" vertical=false face="The Jamsil5Bold" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="Back" storage="Test_Scene_Gift_Shop_Jin_02.ks" target="back" graphic="../image/New_GUI/Giftshop_UI/Popup_Close_01.png" enterimg="../image/New_GUI/Giftshop_UI/Popup_Close_02.png" width="142" height="106" x="1381" y="207"]
[_tb_end_tyrano_code]

[s  ]
