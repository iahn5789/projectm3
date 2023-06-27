[_tb_system_call storage=system/_Test_Wait_01.ks]

*bgmstart

[playbgm  volume="50"  time="1000"  loop="true"  storage="Common_Exam_Ready_BGM_01.wav"  ]
*testin

[tb_start_tyrano_code]
[freeimage layer="1"]
[tb_eval  exp="f.common_poster_choice_whether='FALSE'"  name="common_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.k_poster_choice_whether='FALSE'"  name="k_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.j_poster_choice_whether='FALSE'"  name="j_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.s_poster_choice_whether='FALSE'"  name="s_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[tb_keyconfig  flag="0"  ]
*test

[hidemenubutton]

[cm  ]
[tb_start_tyrano_code]
;[free name="money" layer=2 ]
;[free name="klove" layer=2 ]
;[free name="jlove" layer=2 ]
;[free name="slove" layer=2 ]
;[free name="Day" layer=2 ]
;[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=22 x=-201 y=236 width=120 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=20 x=-204 y=403 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=20 x=-204 y=449 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=20 x=-204 y=493 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=22 x=-185 y=145 width=50 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="score" page=fore text="&[f.score]" size=22 x=-199 y=191 width=70 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" ]
[anim name="money" left=199 time=500 effect=easeInQuad]
[anim name="klove" left=196 time=500 effect=easeInQuad]
[anim name="jlove" left=196 time=500 effect=easeInQuad]
[anim name="slove" left=196 time=500 effect=easeInQuad]
[anim name="Day" left=215 time=500 effect=easeInQuad]
[anim name="score" left=201 time=500 effect=easeInQuad]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="-500" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="story" graphic="../image/New_GUI/Test_UI/Button_Story_01.png" enterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="2420" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="workspace" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="2420" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="2420" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="2420" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[anim name="charinfo" left=40 time=500 effect=easeInQuad]
[anim name="gift" left=40 time=500 effect=easeInQuad]
[anim name="story" left=1668 time=500 effect=easeInQuad]
[anim name="work" left=1668 time=500 effect=easeInQuad]
;[anim name="badge" left=1668 time=500 effect=easeInQuad]
[anim name="setting" left=1668 time=500 effect=easeInQuad]

[html]
<div class="help01"/>
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Charinfo_01.png" alt=""/>
</div>
<div class="help02"/>
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Love_01.png" alt=""/>
</div>
[endhtml]
[_tb_end_tyrano_code]

[mask_off  time="3000"  effect="fadeOut"  ]
[s  ]
*callback

[s  ]
*story

[call  storage="Test_Wait_Call_01.ks"  target="*story"  ]
[jump  storage="Test_Wait_01.ks"  target="*callback"  ]
[s  ]
*workspace

[call  storage="Test_Wait_Call_01.ks"  target="*workspace"  ]
[jump  storage="Test_Wait_01.ks"  target="*callback"  ]
[s  ]
*gift

[call  storage="Test_Wait_Call_01.ks"  target="*gift"  ]
[jump  storage="Test_Scene_Gift_Shop_01.ks"  target="*gift_kang"  cond="f.testScene=='FALSE'"  ]
[s  ]
*setting

[call  storage="Test_Wait_Call_01.ks"  target="*gift"  ]
[jump  storage="Test_Wait_01.ks"  target="*callback"  cond=""  ]
[s  ]
