[_tb_system_call storage=system/_Test_Wait_Call_01.ks]

*story

[tb_start_tyrano_code]
[anim name="workspace" top=-700 time=300 wait=true effect=easeInQuad]
[anim name="game01" top=-600 time=300 effect=easeInQuad]
[anim name="game02" top=-600  time=300 effect=easeInQuad]
[anim name="game03" top=-600 time=300 effect=easeInQuad]
[anim name="game04" top=-350 time=300 effect=easeInQuad]
[anim name="game05" top=-350 time=300 effect=easeInQuad]
[wa]

[call storage="ROOT_SETTINGS.ks"  target="*Day_Check"]

[cm]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Story_03.png" ensterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="739" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="secret" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Secret_01.png" enterimg="../image/New_GUI/Test_UI/Button_Secret_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="workspace" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[image layer=2 width=1080 height=638 left=464 top=-700 page=fore visible=true name=storyboard storage = ../image/New_GUI/Test_UI/UI_Storyboard_01.png ]
[anim name="storyboard" top=0 time=1000 effect=easeInQuad]
[anim name="lootkang" top=105 time=1000 effect=easeInQuad]
[anim name="lootjin" top=105 time=1000 effect=easeInQuad]
[anim name="lootsul" top=105 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="help011">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt="">
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Charinfo_01.png" alt="">
</div>
<div class="help022">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt="">
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Love_01.png" alt="">
</div>
[endhtml]
[_tb_end_tyrano_code]

[return  ]
*workspace

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[wa]

[cm]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="story" graphic="../image/New_GUI/Test_UI/Button_Story_01.png" enterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="739" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="secret" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Secret_01.png" enterimg="../image/New_GUI/Test_UI/Button_Secret_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Work_03.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[image layer=2 width=850 height=559 left=580 top=-700 page=fore visible=true name=workspace storage = ../image/New_GUI/Test_UI/UI_Work_01.png ]
[button name="game01" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_01_02.png" width="203" height="179" x="649" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="game02" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_02_02.png" width="203" height="179" x="901" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="game03" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_03_02.png" width="203" height="179" x="1153" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="game04" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_04_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_04_02.png" width="203" height="179" x="769" y="-350" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="game05" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_05_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_05_02.png" width="203" height="179" x="1021" y="-350" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[anim name="workspace" top=0 time=1000 effect=easeInQuad]
[anim name="game01" top=112 time=1000 effect=easeInQuad]
[anim name="game02" top=112 time=1000 effect=easeInQuad]
[anim name="game03" top=112 time=1000 effect=easeInQuad]
[anim name="game04" top=336 time=1000 effect=easeInQuad]
[anim name="game05" top=336 time=1000 effect=easeInQuad]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="help011">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt="">
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Charinfo_01.png" alt="">
</div>
<div class="help022">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt="">
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Love_01.png" alt="">
</div>
[endhtml]
[_tb_end_tyrano_code]

[return  ]
*gift

[tb_start_tyrano_code]
[freeimage layer="1" time=200 wait=false ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
