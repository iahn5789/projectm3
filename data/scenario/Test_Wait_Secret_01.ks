[_tb_system_call storage=system/_Test_Wait_Secret_01.ks]

*secret_kang

[tb_start_tyrano_code]
[anim name="workspace" top=-700 time=300 wait=true effect=easeInQuad]
[anim name="game01" top=-600 time=300 effect=easeInQuad]
[anim name="game02" top=-600  time=300 effect=easeInQuad]
[anim name="game03" top=-600 time=300 effect=easeInQuad]
[anim name="game04" top=-350 time=300 effect=easeInQuad]
[anim name="game05" top=-350 time=300 effect=easeInQuad]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1200 time=300 effect=easeInQuad]
[wa]

[cm]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Story_03.png" ensterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="739" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="secret" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Secret_01.png" enterimg="../image/New_GUI/Test_UI/Button_Secret_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="workspace" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[image layer=1 width=750 height=464 left=652 top=-500 page=fore visible=true name=secretmsgkang storage = ../image/New_GUI/Test_UI/UI_Secret_Kang_01.png ]
[button name="msgkang01" storage="Test_Wait_Secret.ks" target="msgkang01" graphic="../image/New_GUI/Test_UI/Button_Msg_Kang_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Kang_01_02.png" width="151" height="151" x="748" y="-250" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgkang02" storage="Test_Wait_Secret.ks" target="msgkang02" graphic="../image/New_GUI/Test_UI/Button_Msg_Kang_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Kang_02_02.png" width="151" height="151" x="953" y="-250" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgkang03" storage="Test_Wait_Secret.ks" target="msgkang03" graphic="../image/New_GUI/Test_UI/Button_Msg_Kang_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Kang_03_02.png" width="151" height="151" x="1158" y="-250" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[anim name="secretmsgkang" top=0 time=1000 effect=easeInQuad]
[anim name="msgkang01" top=273 time=1000 effect=easeInQuad]
[anim name="msgkang02" top=273 time=1000 effect=easeInQuad]
[anim name="msgkang03" top=273 time=1000 effect=easeInQuad]


[_tb_end_tyrano_code]

[s  ]
