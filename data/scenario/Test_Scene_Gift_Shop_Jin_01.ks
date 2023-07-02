[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Jin_01.ks]

*gift_jin

[cm  ]
[mask  time="200"  effect="rotateInUpRight"  color="0x000000"  ]
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
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[_tb_end_tyrano_code]

[hidemenubutton]

[mask_off  time="700"  effect="rotateOutUpRight"  ]
[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[s  ]
*gift_close

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_close_01"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*gift_close_01

[tb_start_tyrano_code]
[cm]
[freeimage layer="0"]
[freeimage layer="1"]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[jump  storage="Test_Wait_01.ks"  target="*testin"  ]
[s  ]
*gift_jin_back

[cm  ]
[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Jin_01.png"  ]
[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="jlove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
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
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Jin_02.png time=10 wait=false]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_01.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="jin_back_bt_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=jin_gift_bt_01 time=500 top=733]
[anim name=jin_back_bt_01 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
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
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  cond=""  ]
[s  ]
*jin_back_bt_01

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
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
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Jin_02.png time=10 wait=false]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_02.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="jin_back_bt_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=jin_gift_bt_02 time=500 top=733]
[anim name=jin_back_bt_02 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_02

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_03.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="243" height="78" x="790" y="160"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="234" height="177" x="40" y="864"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501"]
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
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  cond=""  ]
[s  ]
*jin_back_bt_02

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
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
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Jin_02.png time=10 wait=false]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_03.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="jin_back_bt_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=jin_gift_bt_03 time=500 top=733]
[anim name=jin_back_bt_03 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_03

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
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
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  cond=""  ]
[s  ]
*jin_back_bt_03

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
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
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Jin_02.png time=10 wait=false]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Jin_04.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="jin_gift_bt_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_gift_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="jin_back_bt_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="jin_back_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=jin_gift_bt_04 time=500 top=733]
[anim name=jin_back_bt_04 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*jin_gift_bt_04

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=1630 y=29 width=150 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=290 y=984 width=150 color="yellow" align="center" vertical=false face="PyeongChangPeaceLight" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=1423 y=29 width=60 color="0xffffff" align="right" vertical=false face="PyeongChangPeaceLight" ]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="sul" storage="Test_Scene_Gift_Shop_01.ks" target="gift_sul_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Sul_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Sul_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_jin_01" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_02" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_03" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_jin_04" storage="Test_Scene_Gift_Shop_Jin_01.ks" target="buy_jin_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
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
[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  cond=""  ]
[s  ]
*jin_back_bt_04

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin_back"  ]
[s  ]
