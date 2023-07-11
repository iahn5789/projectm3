[_tb_system_call storage=system/_Test_Wait_Teststart_01.ks]

*teststartcheck

[tb_start_tyrano_code]
[if exp="f.k_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="teststart_kang" ]
[elsif exp="f.j_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="teststart_jin" ]
[elsif exp="f.s_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="teststart_sul" ]
[elsif exp="f.common_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="teststart_common" ]
[else]
[jump  storage="Test_Wait_Teststart_01.ks"  target="teststartfail" ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*teststartfail

[tb_start_tyrano_code]
[html]
<div class="caution01">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Caution_Teststart_01.png" alt=""/>
</div>
[endhtml]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[button name="teststart" storage="Test_Wait_Teststart_01.ks" target="teststartcheck" graphic="../image/New_GUI/Test_UI/Button_Test_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_02.png" width="348" height="106" x="830" y="927" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[_tb_end_tyrano_code]

[jump  storage="Test_Wait_01.ks"  target="*callback"  ]
*teststart_kang

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1200 time=300 effect=easeInQuad]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="secretmsgkang" top=1100 time=300 effect=easeInQuad]
[clearfix name="msgkang01" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgkang02" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgkang03" top=1100 time=270 effect=easeInQuad]
[wa]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[clearfix name="setting"]
[cm]
[filter layer=all blur=10]
[html]
<div class="testscenefadein">
<div style="position: absolute;top: 0px;left: 0px;z-index: 99999999;"/>
<img src="data/image/New_GUI/Test_UI/UI_Teststart_01.png"/>
</div>
</div>
[endhtml]

[button name="testin" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Button_Test_In_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_In_02.png" width="233" height="67" x="708" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Exam_Open_Paper_01.wav"]
[button name="testback" storage="Test_Wait_Teststart_01.ks" target="testback" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="978" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Exam_Desk_Draw_01.wav"]
[anim name="testin" top=750 time=300 effect=easeInQuad]
[anim name="testback" top=750 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*teststart_jin

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1200 time=300 effect=easeInQuad]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="secretmsgjin" top=1100 time=300 effect=easeInQuad]
[clearfix name="msgjin01" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgjin02" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgjin03" top=1100 time=270 effect=easeInQuad]
[wa]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[clearfix name="setting"]
[cm]
[filter layer=all blur=10]

[html]
<div class="testscenefadein">
<div style="position: absolute;top: 0px;left: 0px;z-index: 99999999;"/>
<img src="data/image/New_GUI/Test_UI/UI_Teststart_01.png"/>
</div>
</div>
[endhtml]

[button name="testin" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Button_Test_In_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_In_02.png" width="233" height="67" x="708" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="testback" storage="Test_Wait_Teststart_01.ks" target="testback" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="978" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[anim name="testin" top=750 time=300 effect=easeInQuad]
[anim name="testback" top=750 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*teststart_sul

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1200 time=300 effect=easeInQuad]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="secretmsgsul" top=1100 time=300 effect=easeInQuad]
[clearfix name="msgsul01" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgsul02" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgsul03" top=1100 time=270 effect=easeInQuad]
[wa]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[clearfix name="setting"]
[cm]
[filter layer=all blur=10]

[html]
<div class="testscenefadein">
<div style="position: absolute;top: 0px;left: 0px;z-index: 99999999;"/>
<img src="data/image/New_GUI/Test_UI/UI_Teststart_01.png"/>
</div>
</div>
[endhtml]

[button name="testin" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Button_Test_In_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_In_02.png" width="233" height="67" x="708" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="testback" storage="Test_Wait_Teststart_01.ks" target="testback" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="978" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[anim name="testin" top=750 time=300 effect=easeInQuad]
[anim name="testback" top=750 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*teststart_common

[tb_start_tyrano_code]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[anim name="lootcommon" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1200 time=300 effect=easeInQuad]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="labelcommon" top=-200 time=300 effect=easeInQuad]
[anim name="secretmsgcommon" top=1100 time=300 effect=easeInQuad]
[clearfix name="msgcommon01" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgcommon02" top=1100 time=270 effect=easeInQuad]
[clearfix name="msgcommon03" top=1100 time=270 effect=easeInQuad]
[wa]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_02.png"  ]
[clearfix name="setting"]
[cm]
[filter layer=all blur=10]

[html]
<div class="testscenefadein">
<div style="position: absolute;top: 0px;left: 0px;z-index: 99999999;"/>
<img src="data/image/New_GUI/Test_UI/UI_Teststart_01.png"/>
</div>
</div>
[endhtml]

[button name="testin" storage="Test_Start_01.ks" target="teststart" graphic="../image/New_GUI/Test_UI/Button_Test_In_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_In_02.png" width="233" height="67" x="708" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="testback" storage="Test_Wait_Teststart_01.ks" target="testback" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="978" y="1200" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[anim name="testin" top=750 time=300 effect=easeInQuad]
[anim name="testback" top=750 time=300 effect=easeInQuad]
[_tb_end_tyrano_code]

[s  ]
*testback

[tb_start_tyrano_code]
[cm]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[bg  time="1"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[awakegame]
[_tb_end_tyrano_code]

[jump  storage="Test_Wait_01.ks"  target="*test"  ]
