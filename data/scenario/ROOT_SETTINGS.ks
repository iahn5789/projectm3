[_tb_system_call storage=system/_ROOT_SETTINGS.ks]

*Day_Check

[jump  storage="ROOT_SETTINGS.ks"  target="*Day_Check_02"  cond="f.testScene=='FALSE'"  ]
[s  ]
*Day_Check_02

[tb_start_tyrano_code]
[if exp="f.Day === 1"]
[call  storage="ROOT_SETTINGS.ks"  target="*COMMON_ROOT"]
[elsif exp="f.kDay === f.StoryEndDay"]
[call  storage="ROOT_SETTINGS.ks"  target="*KANG_ROOT"]
[elsif exp="f.jDay  === f.StoryEndDay"]
[call  storage="ROOT_SETTINGS.ks"  target="*JIN_ROOT"]
[elsif exp="f.sDay  ===  f.StoryEndDay"]
[call  storage="ROOT_SETTINGS.ks"  target="*SUL_ROOT"]
[else]
[call  storage="ROOT_SETTINGS.ks"  target="*KANG_ROOT"]
[call  storage="ROOT_SETTINGS.ks"  target="*JIN_ROOT"]
[call  storage="ROOT_SETTINGS.ks"  target="*SUL_ROOT"]
[endif]

[if exp="f.common_poster_choice_whether === 'TRUE'"]
[call  storage="Test_Scene_01.ks"  target="*TestStart_Bt_Anim"]
[elsif exp="f.k_poster_choice_whether === 'TRUE'"]
[call  storage="Test_Scene_01.ks"  target="*TestStart_Bt_Anim"]
[elsif exp="f.j_poster_choice_whether === 'TRUE'"]
[call  storage="Test_Scene_01.ks"  target="*TestStart_Bt_Anim"]
[elsif exp="f.s_poster_choice_whether === 'TRUE'"]
[call  storage="Test_Scene_01.ks"  target="*TestStart_Bt_Anim"]
[endif]
[_tb_end_tyrano_code]

[return  ]
[jump  storage="Test_Scene_01.ks"  target="*After_Button_Change"  ]
[s  ]
*COMMON_ROOT

[tb_start_tyrano_code]
[if exp="f.common_poster_choice_whether === 'FALSE'"]
[clearfix name="lootcommon"]
[button name="lootcommon" storage="ROOT_SETTINGS.ks" fix="true" target="Common_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_All_01.png" width="274" height="410" x="927" y="105" z-index="100"]
[else]
[clearfix name="lootcommon"]
[button name="lootcommon" storage="ROOT_SETTINGS.ks" fix="true" target="Common_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_All_02.png" width="274" height="410" x="927" y="105" z-index="100"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*KANG_ROOT

[tb_start_tyrano_code]
[if exp="f.k_poster_choice_whether === 'FALSE'"]
[clearfix name="lootkang"]
[button name="lootkang" storage="ROOT_SETTINGS.ks" fix="true" target="Kang_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Kang_01.png"  width="274" height="410" x="548" y="-600"]
[else]
[clearfix name="lootkang"]
[button name="lootkang" storage="ROOT_SETTINGS.ks" fix="true" target="Kang_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Kang_02.png"  width="274" height="410" x="548" y="-600"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*JIN_ROOT

[tb_start_tyrano_code]
[if exp="f.j_poster_choice_whether === 'FALSE'"]
[clearfix name="lootjin"]
[button name="lootjin" storage="ROOT_SETTINGS.ks" fix="true" target="Jin_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Jin_01.png" width="274" height="410" x="869" y="-600"]
[else]
[clearfix name="lootjin"]
[button name="lootjin" storage="ROOT_SETTINGS.ks" fix="true" target="Jin_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Jin_02.png" width="274" height="410" x="869" y="-600"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*SUL_ROOT

[tb_start_tyrano_code]
[if exp="f.s_poster_choice_whether === 'FALSE'"]
[clearfix name="lootsul"]
[button name="lootsul" storage="ROOT_SETTINGS.ks" fix="true" target="Sul_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Sul_01.png" width="274" height="410" x="1190" y="-600"]
[else]
[clearfix name="lootsul"]
[button name="lootsul" storage="ROOT_SETTINGS.ks" fix="true" target="Sul_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Sul_02.png" width="274" height="410" x="1190" y="-600"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*Common_Bt_Click

[jump  storage="ROOT_SETTINGS.ks"  target="*Common_Bt_Click_02"  cond="f.testScene=='FALSE'"  ]
[return  ]
*Common_Bt_Click_02

[tb_eval  exp="f.common_poster_choice_whether='TRUE'"  name="common_poster_choice_whether"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
document.querySelector(".lootcommon.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_All_02.png");

[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_01" top=1100 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=1100 time=1000 effect=easeInQuad]
[anim name="test_back_bt_01" top=1100 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Kang_Bt_Click

[jump  storage="ROOT_SETTINGS.ks"  target="*Kang_Bt_Click_02"  cond="f.testScene=='FALSE'"  ]
[return  ]
*Kang_Bt_Click_02

[tb_eval  exp="f.k_poster_choice_whether='TRUE'"  name="k_poster_choice_whether"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.j_poster_choice_whether='FALSE'"  name="j_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.s_poster_choice_whether='FALSE'"  name="s_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
document.querySelector(".lootkang.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Kang_02.png");
document.querySelector(".lootjin.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Jin_01.png");
document.querySelector(".lootsul.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Sul_01.png");

[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="teststart" top=1100 time=100 effect=easeInQuad]
[anim name="secretmsgkang" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgjin" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgsul" top=1100 time=300 effect=easeInQuad]
[anim name="msgkang01" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang02" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang03" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin01" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin02" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin03" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul01" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul02" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul03" top=1100 time=270 effect=easeInQuad]
[wa]
[call storage="Test_Wait_Call_01.ks"  target="*storycall"]
[image layer=2 width=301 height=197 left=1602 top=-200 page=fore visible=true name=labelkang storage = ../image/New_GUI/Test_UI/UI_Label_Kang_01.png ]
[anim name="labelkang" top=0 time=500 effect=easeInQuad]

[image layer=1 width=957 height=249 left=524 top=1100 page=fore visible=true name=secretmsgkang storage = ../image/New_GUI/Test_UI/UI_Secret_Kang_01.png ]
[button name="msgkang01" storage="Test_Wait_Secret.ks" target="msgkang01" graphic="../image/New_GUI/Test_UI/Button_Msg_Kang_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Kang_01_02.png" width="151" height="151" x="869" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgkang02" storage="Test_Wait_Secret.ks" target="msgkang02" graphic="../image/New_GUI/Test_UI/Button_Msg_Kang_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Kang_02_02.png" width="151" height="151" x="1074" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgkang03" storage="Test_Wait_Secret.ks" target="msgkang03" graphic="../image/New_GUI/Test_UI/Button_Msg_Kang_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Kang_03_02.png" width="151" height="151" x="1279" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[anim name="secretmsgkang" top=668 time=500 effect=easeInQuad]
[anim name="msgkang01" top=695 time=500 effect=easeInQuad]
[anim name="msgkang02" top=695 time=500 effect=easeInQuad]
[anim name="msgkang03" top=695 time=500 effect=easeInQuad]
[wa]

[button name="teststart" storage="Test_Wait_Teststart_01.ks" target="teststartcheck" graphic="../image/New_GUI/Test_UI/Button_Test_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_02.png" width="348" height="106" x="830" y="1100" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[anim name="teststart" top=947 time=500 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Jin_Bt_Click

[jump  storage="ROOT_SETTINGS.ks"  target="*Jin_Bt_Click_02"  cond="f.testScene=='FALSE'"  ]
[return  ]
*Jin_Bt_Click_02

[tb_eval  exp="f.k_poster_choice_whether='FALSE'"  name="k_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.j_poster_choice_whether='TRUE'"  name="j_poster_choice_whether"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.s_poster_choice_whether='FALSE'"  name="s_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
document.querySelector(".lootkang.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Kang_01.png");
document.querySelector(".lootjin.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Jin_02.png");
document.querySelector(".lootsul.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Sul_01.png");

[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="teststart" top=1100 time=100 effect=easeInQuad]
[anim name="secretmsgkang" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgjin" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgsul" top=1100 time=300 effect=easeInQuad]
[anim name="msgkang01" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang02" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang03" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin01" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin02" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin03" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul01" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul02" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul03" top=1100 time=270 effect=easeInQuad]
[wa]
[call storage="Test_Wait_Call_01.ks"  target="*storycall"]
[image layer=2 width=301 height=197 left=1602 top=-200 page=fore visible=true name=labeljin storage = ../image/New_GUI/Test_UI/UI_Label_Jin_01.png ]
[anim name="labeljin" top=0 time=500 effect=easeInQuad]

[image layer=1 width=957 height=249 left=524 top=1100 page=fore visible=true name=secretmsgjin storage = ../image/New_GUI/Test_UI/UI_Secret_Jin_01.png ]
[button name="msgjin01" storage="Test_Wait_Secret.ks" target="msgjin01" graphic="../image/New_GUI/Test_UI/Button_Msg_Jin_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Jin_01_02.png" width="151" height="151" x="869" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgjin02" storage="Test_Wait_Secret.ks" target="msgjin02" graphic="../image/New_GUI/Test_UI/Button_Msg_Jin_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Jin_02_02.png" width="151" height="151" x="1074" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgjin03" storage="Test_Wait_Secret.ks" target="msgjin03" graphic="../image/New_GUI/Test_UI/Button_Msg_Jin_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Jin_03_02.png" width="151" height="151" x="1279" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[anim name="secretmsgjin" top=668 time=500 effect=easeInQuad]
[anim name="msgjin01" top=695 time=500 effect=easeInQuad]
[anim name="msgjin02" top=695 time=500 effect=easeInQuad]
[anim name="msgjin03" top=695 time=500 effect=easeInQuad]
[wa]

[button name="teststart" storage="Test_Wait_Teststart_01.ks" target="teststartcheck" graphic="../image/New_GUI/Test_UI/Button_Test_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_02.png" width="348" height="106" x="830" y="1100" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[anim name="teststart" top=947 time=500 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Sul_Bt_Click

[jump  storage="ROOT_SETTINGS.ks"  target="*Sul_Bt_Click_02"  cond="f.testScene=='FALSE'"  ]
[return  ]
*Sul_Bt_Click_02

[tb_eval  exp="f.k_poster_choice_whether='FALSE'"  name="k_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.j_poster_choice_whether='FALSE'"  name="j_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.s_poster_choice_whether='TRUE'"  name="s_poster_choice_whether"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
document.querySelector(".lootkang.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Kang_01.png");
document.querySelector(".lootjin.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Jin_01.png");
document.querySelector(".lootsul.event-setting-element").setAttribute("src", "data/image/New_GUI/Test_UI/Loot_Sul_02.png");

[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="labelkang" top=-200 time=300 effect=easeInQuad]
[anim name="labeljin" top=-200 time=300 effect=easeInQuad]
[anim name="labelsul" top=-200 time=300 effect=easeInQuad]
[anim name="teststart" top=1100 time=100 effect=easeInQuad]
[anim name="secretmsgkang" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgjin" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgsul" top=1100 time=300 effect=easeInQuad]
[anim name="msgkang01" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang02" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang03" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin01" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin02" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin03" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul01" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul02" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul03" top=1100 time=270 effect=easeInQuad]
[wa]
[call storage="Test_Wait_Call_01.ks"  target="*storycall"]
[image layer=2 width=301 height=197 left=1602 top=-200 page=fore visible=true name=labelsul storage = ../image/New_GUI/Test_UI/UI_Label_Sul_01.png ]
[anim name="labelsul" top=0 time=500 effect=easeInQuad]

[image layer=1 width=957 height=249 left=524 top=1100 page=fore visible=true name=secretmsgsul storage = ../image/New_GUI/Test_UI/UI_Secret_Sul_01.png ]
[button name="msgsul01" storage="Test_Wait_Secret.ks" target="msgsul01" graphic="../image/New_GUI/Test_UI/Button_Msg_Sul_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Sul_01_02.png" width="151" height="151" x="869" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgsul02" storage="Test_Wait_Secret.ks" target="msgsul02" graphic="../image/New_GUI/Test_UI/Button_Msg_Sul_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Sul_02_02.png" width="151" height="151" x="1074" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="msgsul03" storage="Test_Wait_Secret.ks" target="msgsul03" graphic="../image/New_GUI/Test_UI/Button_Msg_Sul_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Msg_Sul_03_02.png" width="151" height="151" x="1279" y="1130" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]

[anim name="secretmsgsul" top=668 time=500 effect=easeInQuad]
[anim name="msgsul01" top=695 time=500 effect=easeInQuad]
[anim name="msgsul02" top=695 time=500 effect=easeInQuad]
[anim name="msgsul03" top=695 time=500 effect=easeInQuad]
[wa]

[button name="teststart" storage="Test_Wait_Teststart_01.ks" target="teststartcheck" graphic="../image/New_GUI/Test_UI/Button_Test_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_02.png" width="348" height="106" x="830" y="1100" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[anim name="teststart" top=947 time=500 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
