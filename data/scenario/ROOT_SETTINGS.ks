[_tb_system_call storage=system/_ROOT_SETTINGS.ks]

*Day_Check

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

[jump  storage="Test_Scene_01.ks"  target="*After_Button_Change"  ]
[s  ]
*COMMON_ROOT

[tb_start_tyrano_code]
[if exp="f.common_poster_choice_whether === 'FALSE'"]
[button name="lootcommon" storage="ROOT_SETTINGS.ks" fix="true" target="Common_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_All_01.png" width="274" height="410" x="927" y="105"]
[else]
[button name="lootcommon" storage="ROOT_SETTINGS.ks" fix="true" target="Common_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_All_02.png" width="274" height="410" x="927" y="105"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*KANG_ROOT

[tb_start_tyrano_code]
[if exp="f.k_poster_choice_whether === 'FALSE'"]
[button name="lootkang" storage="ROOT_SETTINGS.ks" fix="true" target="Kang_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Kang_01.png"  width="274" height="410" x="614" y="105"]
[else]
[button name="lootkang" storage="ROOT_SETTINGS.ks" fix="true" target="Kang_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Kang_02.png"  width="274" height="410" x="614" y="105"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*JIN_ROOT

[tb_start_tyrano_code]
[if exp="f.j_poster_choice_whether === 'FALSE'"]
[button name="lootjin" storage="ROOT_SETTINGS.ks" fix="true" target="Jin_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Jin_01.png" width="274" height="410" x="927" y="105"]
[else]
[button name="lootjin" storage="ROOT_SETTINGS.ks" fix="true" target="Jin_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Jin_02.png" width="274" height="410" x="927" y="105"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*SUL_ROOT

[tb_start_tyrano_code]
[if exp="f.s_poster_choice_whether === 'FALSE'"]
[button name="lootsul" storage="ROOT_SETTINGS.ks" fix="true" target="Sul_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Sul_01.png" width="274" height="410" x="1241" y="105"]
[else]
[button name="lootsul" storage="ROOT_SETTINGS.ks" fix="true" target="Sul_Bt_Click" graphic="../image/New_GUI/Test_UI/Loot_Sul_02.png" width="274" height="410" x="1241" y="105"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*Common_Bt_Click

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
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_01" top=1100 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=1100 time=1000 effect=easeInQuad]
[anim name="test_back_bt_01" top=1100 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Jin_Bt_Click

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
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_01" top=1100 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=1100 time=1000 effect=easeInQuad]
[anim name="test_back_bt_01" top=1100 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Sul_Bt_Click

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
[anim name="teststart" top=912 time=300 effect=easeInQuad]
[anim name="msgshow" top=912 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_01" top=1100 time=300 effect=easeInQuad]
[anim name="kang_secret_bt_02" top=1100 time=300 effect=easeInQuad]
[anim name="test_start_bt_01" top=1100 time=1000 effect=easeInQuad]
[anim name="test_back_bt_01" top=1100 time=1000 effect=easeInQuad]
[_tb_end_tyrano_code]

[return  ]
[s  ]
