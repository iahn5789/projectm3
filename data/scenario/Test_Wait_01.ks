[_tb_system_call storage=system/_Test_Wait_01.ks]

*testin

[playbgm  volume="50"  time="1000"  loop="true"  storage="Common_Exam_Ready_BGM_01.wav"  ]
*test

[tb_hide_message_window  ]
[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[tb_keyconfig  flag="0"  ]
[hidemenubutton]

[cm  ]
[tb_start_tyrano_code]
;[free name="money" layer=2 ]
;[free name="klove" layer=2 ]
;[free name="jlove" layer=2 ]
;[free name="slove" layer=2 ]
;[free name="Day" layer=2 ]
;[free name="score" layer=2 ]
;[ptext layer=2 name="money" page=fore text="&[f.money]" size=30 x=206 y=199 width=120 color="0x856000" align="right" vertical=false face="PyeongChangPeaceLight" ]
;[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=30 x=200 y=420 width=150 color="0x856000" align="center" vertical=false face="PyeongChangPeaceLight" ]
;[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=30 x=200 y=514 width=150 color="0x856000" align="center" vertical=false face="PyeongChangPeaceLight" ]
;[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=30 x=200 y=612 width=150 color="0x856000" align="center" vertical=false face="PyeongChangPeaceLight" ]
;[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=30 x=210 y=28 width=50 color="0x856000" align="right" vertical=false face="PyeongChangPeaceLight" ]
;[ptext layer=2 name="score" page=fore text="&[f.score]" size=30 x=214 y=114 width=70 color="0x856000" align="right" vertical=false face="PyeongChangPeaceLight" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Scene_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="-500" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Scene_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Story_01.png" enterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="2420" y="658" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="secret" storage="Test_Scene_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Secret_01.png" enterimg="../image/New_GUI/Test_UI/Button_Secret_02.png" width="233" height="67" x="2420" y="739" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="work" storage="Test_Scene_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="2420" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="badge" storage="Test_Scene_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="2420" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="setting" storage="Test_Scene_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="2420" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="charinfo" left=40 time=500 effect=easeInQuad]
[anim name="gift" left=40 time=500 effect=easeInQuad]
[anim name="story" left=1668 time=500 effect=easeInQuad]
[anim name="secret" left=1668 time=500 effect=easeInQuad]
[anim name="work" left=1668 time=500 effect=easeInQuad]
[anim name="badge" left=1668 time=500 effect=easeInQuad]
[anim name="setting" left=1668 time=500 effect=easeInQuad]
[_tb_end_tyrano_code]

[mask_off  time="3000"  effect="fadeOut"  ]
[wait  time="500"  ]
*story

[tb_start_tyrano_code]
[image layer=2 width=1080 height=638 left=464 top=-700 page=fore visible=true name=storyboard storage = ../image/New_GUI/Test_UI/UI_Storyboard_01.png ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="storyboard" top=0 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*undefined

*secret

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=500 wait=true effect=easeInQuad]
[freeimage layer="2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=3 width=750 height=464 left=652 top=-700 page=fore visible=true name=secretkang storage = ../image/New_GUI/Test_UI/UI_Secret_Kang_01.png ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="secretkang" top=0 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

