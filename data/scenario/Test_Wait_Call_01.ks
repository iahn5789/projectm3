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
[button name="profilekang" storage="Profile_Kang_01.ks" target="profile_kang_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="315" y="399" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="profilejin" storage="Profile_Jin_01.ks" target="profile_jin_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="315" y="444" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="profilesul" storage="Profile_Sul_01.ks" target="profile_sul_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="315" y="489" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Story_03.png" ensterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="workspace" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[image layer=2 width=1080 height=638 left=464 top=-700 page=fore visible=true name=storyboard storage = ../image/New_GUI/Test_UI/UI_Storyboard_01.png ]
[anim name="storyboard" top=0 time=1000 effect=easeInQuad]
[anim name="lootkang" top=105 time=1000 effect=easeInQuad]
[anim name="lootjin" top=105 time=1000 effect=easeInQuad]
[anim name="lootsul" top=105 time=1000 effect=easeInQuad]
[anim name="lootcommon" top=105 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="help011"/>
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Charinfo_01.png" alt=""/>
</div>
<div class="help022"/>
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Love_01.png" alt=""/>
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
[anim name="lootcommon" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1100 time=100 effect=easeInQuad]
[anim name="secretmsgkang" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgjin" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgsul" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgcommon" top=1100 time=300 effect=easeInQuad]
[anim name="msgkang01" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang02" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang03" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin01" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin02" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin03" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul01" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul02" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul03" top=1100 time=270 effect=easeInQuad]
[anim name="msgcommon01" top=1100 time=270 effect=easeInQuad]
[anim name="msgcommon02" top=1100 time=270 effect=easeInQuad]
[anim name="msgcommon03" top=1100 time=270 effect=easeInQuad]
[wa]

[cm]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png zindex="3"]
[button name="profilekang" storage="Profile_Kang_01.ks" target="profile_kang_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="315" y="399" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]
[button name="profilejin" storage="Profile_Jin_01.ks" target="profile_jin_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="315" y="444" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]
[button name="profilesul" storage="Profile_Sul_01.ks" target="profile_sul_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="315" y="489" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav" zindex="5"]
[button name="story" storage="Test_Wait_01.ks" target="story" graphic="../image/New_GUI/Test_UI/Button_Story_01.png" enterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]
[button name="work" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Work_03.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="5"]

[image layer=2 width=850 height=559 left=580 top=-700 page=fore visible=true name=workspace storage = ../image/New_GUI/Test_UI/UI_Work_01.png ]
[button name="game01" storage="Test_Wait_Call_01.ks" target="game01" graphic="../image/New_GUI/Test_UI/Button_Work_Game_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_01_02.png" zindex=2 width="203" height="179" x="649" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav" zindex="3"]
[button name="game02" storage="Test_Wait_Call_01.ks" target="game02" graphic="../image/New_GUI/Test_UI/Button_Work_Game_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_02_02.png" zindex=2 width="203" height="179" x="901" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav" zindex="5"]
[button name="game03" storage="Test_Wait_Call_01.ks" target="game03" graphic="../image/New_GUI/Test_UI/Button_Work_Game_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_03_02.png" zindex=2 width="203" height="179" x="1153" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav" zindex="5"]
[button name="game04" storage="Test_Wait_Call_01.ks" target="game04" graphic="../image/New_GUI/Test_UI/Button_Work_Game_04_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_04_02.png" zindex=2 width="203" height="179" x="769" y="-350" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav" zindex="5"]
[button name="game05" storage="Test_Wait_Call_01.ks" target="game05" graphic="../image/New_GUI/Test_UI/Button_Work_Game_05_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_05_02.png" zindex=2 width="203" height="179" x="1021" y="-350" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav" zindex="5"]

[anim name="workspace" top=0 time=1000 effect=easeInQuad]
[anim name="game01" top=112 time=1000 effect=easeInQuad]
[anim name="game02" top=112 time=1000 effect=easeInQuad]
[anim name="game03" top=112 time=1000 effect=easeInQuad]
[anim name="game04" top=336 time=1000 effect=easeInQuad]
[anim name="game05" top=336 time=1000 effect=easeInQuad]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<div class="help011"/>
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Charinfo_01.png" alt=""/>
</div>
<div class="help022"/>
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Love_01.png" alt=""/>
</div>
[endhtml]
[_tb_end_tyrano_code]

[return  ]
*gift

[tb_start_tyrano_code]
[cm]
[freeimage layer="0" ]
[freeimage layer="1" ]
[freeimage layer="2" ]
[clearfix name="setting" ]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*storycall

[tb_start_tyrano_code]
;[call storage="ROOT_SETTINGS.ks"  target="*Day_Check"]

[cm]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[image layer=2 width=1080 height=638 left=464 top=0 page=fore visible=true name=storyboard storage = ../image/New_GUI/Test_UI/UI_Storyboard_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Story_03.png" ensterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="workspace" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
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
[s  ]
*game01

[call  storage="Workspace_Game_01.ks"  target="*game01"  ]
[s  ]
*game02

[call  storage="Workspace_Game_02.ks"  target="*game01"  ]
[s  ]
*game03

[call  storage="Workspace_Game_03.ks"  target="*game01"  ]
[s  ]
*game04

[call  storage="Workspace_Game_04.ks"  target="*game01"  ]
[s  ]
*game05

[call  storage="Workspace_Game_05.ks"  target="*game01"  ]
[s  ]
