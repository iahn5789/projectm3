[_tb_system_call storage=system/_Test_Scene_Gift_Shop_Sul_01.ks]

*gift_sul

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
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

[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_01.png"  ]
[tb_start_tyrano_code]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_sul_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_05" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_05" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_06" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_06" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_07" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_07" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_08" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_08" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[_tb_end_tyrano_code]

[hidemenubutton]

[mask_off  time="700"  effect="rotateOutUpRight"  ]
[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[s  ]
*gift_sul_back

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[cm  ]
[bg  time="0"  method="fadeIn"  storage="Giftshop_BGI/Giftshop_Bgi_Sul_01.png"  ]
[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[button name="close" storage="Test_Scene_Gift_Shop_01.ks" target="gift_close" graphic="../image/New_GUI/Giftshop_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/UI_Close_Bt_02.png" width="110" height="56" x="40" y="20" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Shop_Door_Hover_01.wav"]
[button name="kang" storage="Test_Scene_Gift_Shop_01.ks" target="gift_kang" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Kang_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Kang_02.png" width="234" height="177" x="40" y="678" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="jin" storage="Test_Scene_Gift_Shop_01.ks" target="gift_jin_change" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Jin_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Jin_02.png" width="234" height="177" x="40" y="864" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[button name="buy_sul_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="501" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_05" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_05" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="689" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_06" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_06" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1004" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_07" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_07" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1303" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="buy_sul_08" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="buy_sul_08" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="1610" y="967" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[_tb_end_tyrano_code]

[hidemenubutton]

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[s  ]
*gift_kang_change

[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*gift_jin_change

[jump  storage="Test_Scene_Gift_Shop_Jin_01.ks"  target="*gift_jin"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_01

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_01_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_01_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_01.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_01" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_01" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_01 time=500 top=733]
[anim name=sul_back_bt_01 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_01

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_01"  cond="f.money>499"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_01

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
*buy_sul_02

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_02_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_02_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_02.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_02" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_02" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_02 time=500 top=733]
[anim name=sul_back_bt_02 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_02

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_02"  cond="f.money>899"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_02

[tb_eval  exp="f.giftScene='FALSE'"  name="giftScene"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
*buy_sul_03

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_03_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_03_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_03.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_03" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_03" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_03 time=500 top=733]
[anim name=sul_back_bt_03 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_03

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_03"  cond="f.money>1299"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_03

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
*buy_sul_04

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_04_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_04_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_04.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_04" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_04" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_04 time=500 top=733]
[anim name=sul_back_bt_04 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_04

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_04"  cond="f.money>1599"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_04

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]

*buy_sul_05

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_05_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_05_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_05.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_05" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_05" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_05" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_05" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_05 time=500 top=733]
[anim name=sul_back_bt_05 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_05

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_05"  cond="f.money>1999"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_05

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]

*buy_sul_06

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_06_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_06_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_06.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_06" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_06" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_06" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_06" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_06 time=500 top=733]
[anim name=sul_back_bt_06 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_06

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_06"  cond="f.money>2399"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_06

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]

*buy_sul_07

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_07_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_07_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_07.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_07" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_07" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_07" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_07" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_07 time=500 top=733]
[anim name=sul_back_bt_07 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_07

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_07"  cond="f.money>2799"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_07

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]

*buy_sul_08

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*buy_sul_08_02"  cond="f.giftScene=='FALSE'"  ]
[s  ]
*buy_sul_08_02

[tb_eval  exp="f.giftScene='TRUE'"  name="giftScene"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[bg storage=Giftshop_BGI/Giftshop_Bgi_Sul_02.png time=10 wait=false]
[cm]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=27 x=1632 y=36 width=150 color="0x444444" align="right" vertical=false face="NanumGothicBold" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=23 x=110 y=612 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="buymsg">
<div style="position: absolute; left:562px; top:379px; z-index: 99999999;">
<img src='data/image/New_GUI/Giftshop_UI/Popup_Sul_08.png'/>
</div>
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="sul_gift_bt_08" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_gift_bt_08" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Buy_Bt_02.png" width="181" height="47" x="755" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="sul_back_bt_08" storage="Test_Scene_Gift_Shop_Sul_01.ks" target="sul_back_bt_08" graphic="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_01.png" enterimg="../image/New_GUI/Giftshop_UI/Giftshop_Back_Bt_02.png" width="181" height="47" x="984" y="1200" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[anim name=sul_gift_bt_08 time=500 top=733]
[anim name=sul_back_bt_08 time=500 top=733]
[_tb_end_tyrano_code]

[s  ]
*sul_gift_bt_08

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=5 opacity=40]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_02.ks"  target="*popupsul_08"  cond="f.money>3199"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  cond=""  ]
[s  ]
*sul_back_bt_08

[tb_start_tyrano_code]
[cm]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_Gift_Shop_Sul_01.ks"  target="*gift_sul_back"  ]
[s  ]
