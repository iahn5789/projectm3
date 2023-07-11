[_tb_system_call storage=system/_Test_Result_01.ks]

*test_result

[tb_eval  exp="f.change_number=0"  name="change_number"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_ptext_hide  time="1"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="0" time="100"]
[freeimage layer="1" time="100"]
[filter layer=all blur=0 opacity=100]

[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_Result_Bgi_01.png page=fore visible=true name=testpaper ]

[_tb_end_tyrano_code]

[mask_off  time="1500"  effect="fadeOut"  ]
[call  storage="Test_Result_01.ks"  target="*star"  ]
[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[tb_start_tyrano_code]
[button name="next" storage="Test_Result_01.ks" target="next" graphic="../image/New_GUI/Test_In_UI/Quiz_End_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Quiz_End_Bt_02.png" width="413" height="103" x="753" y="1100" ]
[anim name=next top=889 time=1000 ]
[_tb_end_tyrano_code]

[s  ]
*Score_Change

[tb_start_tyrano_code]
[ptext layer=2 name="score" text="&f.score" page=fore size=30 x=713 y=737 width=100 color="0xFF7676" edge="2px 0x444444" align="center" vertical="false" face="NanumGothicBold" time="500"]
; [anim name=score opacity="255" time="500" wait="false"]
[_tb_end_tyrano_code]

[return  ]
*Money_Change

[tb_start_tyrano_code]
[ptext layer=2 name="money" page=fore text="&[f.change_number]" size=30 x=1114 y=737 width=100 color="0x69FF43" align="center" vertical=false face="NanumGothicBold" time="500"]

[_tb_end_tyrano_code]

[return  ]
*star

[tb_start_tyrano_code]
[ptext layer="2" name="quastion" text="5" page=fore size=30 x=663 y=518 width=100 color="0x444444" edge="2px 0x444444" align="center" vertical="false" face="NanumGothicBold" time="500"]
[ptext layer="2" name="collect" text="&f.collect" page=fore size=30 x=913 y=518 width=100 color="0x444444" edge="2px 0x444444" align="center" vertical="false" face="NanumGothicBold" time="500"]
[ptext layer="2" name="wrong" text="&f.wrong" page=fore size=30 x=1166 y=518 width=100 color="0x444444" edge="2px 0x444444" align="center" vertical="false" face="NanumGothicBold" time="500"]

[if exp="f.star01 === 'TRUE'"]
[call storage="Test_Result_01.ks" target="*star_on_01"]
[elsif exp="f.star01 === 'FALSE'"]
[call storage="Test_Result_01.ks" target="*star_off_01"]
[endif]
[if exp="f.star02 === 'TRUE'"]
[call storage="Test_Result_01.ks" target="*star_on_02"]
[elsif exp="f.star02 === 'FALSE'"]
[call storage="Test_Result_01.ks" target="*star_off_02"]
[endif]
[if exp="f.star03 === 'TRUE'"]
[call storage="Test_Result_01.ks" target="*star_on_03"]
[elsif exp="f.star03 === 'FALSE'"]
[call storage="Test_Result_01.ks" target="*star_off_03"]
[endif]
[if exp="f.star04 === 'TRUE'"]
[call storage="Test_Result_01.ks" target="*star_on_04"]
[elsif exp="f.star04 === 'FALSE'"]
[call storage="Test_Result_01.ks" target="*star_off_04"]
[endif]
[if exp="f.star05 === 'TRUE'"]
[call storage="Test_Result_01.ks" target="*star_on_05"]
[elsif exp="f.star05 === 'FALSE'"]
[call storage="Test_Result_01.ks" target="*star_off_05"]
[endif]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*star_on_01

[tb_eval  exp="f.change_number+=500"  name="change_number"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=735 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[_tb_end_tyrano_code]

[return  ]
*star_on_02

[tb_eval  exp="f.change_number+=500"  name="change_number"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=828 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[_tb_end_tyrano_code]

[return  ]
*star_on_03

[tb_eval  exp="f.change_number+=500"  name="change_number"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=920 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_on_04

[tb_eval  exp="f.change_number+=500"  name="change_number"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=1013 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star04]
[_tb_end_tyrano_code]

[return  ]
*star_on_05

[tb_eval  exp="f.change_number+=500"  name="change_number"  cmd="+="  op="t"  val="500"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=1106 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star05]
[_tb_end_tyrano_code]

[return  ]
*star_off_01

[tb_start_tyrano_code]
[image layer=0 left=735 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[_tb_end_tyrano_code]

[return  ]
*star_off_02

[tb_start_tyrano_code]
[image layer=0 left=828 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[_tb_end_tyrano_code]

[return  ]
*star_off_03

[tb_start_tyrano_code]
[image layer=0 left=920 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[return  ]
*star_off_04

[tb_start_tyrano_code]
[image layer=0 left=1013 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star04]
[_tb_end_tyrano_code]

[return  ]
*star_off_05

[tb_start_tyrano_code]
[image layer=0 left=1106 top=278 width=79 height=77 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star05]
[_tb_end_tyrano_code]

[return  ]
*next

[tb_eval  exp="f.money+=f.change_number"  name="money"  cmd="+="  op="h"  val="change_number"  val_2="undefined"  ]
[jump  storage="Chapter03_School_Club_01.ks"  target="*chapter03_01"  ]
[s  ]
