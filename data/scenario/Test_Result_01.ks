[_tb_system_call storage=system/_Test_Result_01.ks]

*test_result

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
[tb_start_tyrano_code]
[button name="next" storage="Chapter03_School_Club_01.ks" target="chapter03_01" graphic="../image/New_GUI/Test_In_UI/Quiz_End_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Quiz_End_Bt_02.png" width="618" height="107" x="655" y="1100" ]
[anim name=next top=936 time=1000 ]
[_tb_end_tyrano_code]

[s  ]
*Score_Change

[tb_start_tyrano_code]
[change_number textlayer="2" textname="Score" textface="PyeongChangPeace" time="80" startnumber="&[f.score]" posXtext="890" posYtext="530" width="90" color="0xffffff" textzindex="999" textsize="40" textalign="right" delay="1300"]
[ptext layer=2 name="minus_Score_text" page=fore text="&[f.change_number]" size=30 x=1050 y=540 width=100 color="0xFF7676" align="left" vertical=false face="PyeongChangPeace" ]
[_tb_end_tyrano_code]

[return  ]
*Money_Change

[tb_start_tyrano_code]
[change_number textlayer="2" textname="Money" textface="PyeongChangPeace" time="80" startnumber="&[f.money]" posXtext="890" posYtext="750" width="90" color="0xffffff" textzindex="999" textsize="40" textalign="right" delay="1300"]
[ptext layer=2 name="minus_Score_text" page=fore text="&[f.change_number]" size=30 x=1050 y=760 width=100 color="0x69FF43" align="left" vertical=false face="PyeongChangPeace" ]
[_tb_end_tyrano_code]

[return  ]
*star

[jump  storage="Test_Result_01.ks"  target="*star_off_01"  cond="f.testResult==0"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_01"  cond="f.testResult==1"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_02"  cond="f.testResult==2"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_03"  cond="f.testResult==3"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_04"  cond="f.testResult==4"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_05"  cond="f.testResult==5"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_06"  cond="f.testResult==6"  ]
[jump  storage="Test_Result_01.ks"  target="*star_on_07"  cond="f.testResult==7"  ]
[s  ]
*star_off_01

[tb_eval  exp="f.change_number='-12'"  name="change_number"  cmd="="  op="t"  val="-12"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=0"  name="change_number"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_01

[tb_eval  exp="f.change_number='-8'"  name="change_number"  cmd="="  op="t"  val="-8"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=0"  name="change_number"  cmd="="  op="t"  val="0"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_02

[tb_eval  exp="f.change_number='-8'"  name="change_number"  cmd="="  op="t"  val="-8"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=500"  name="change_number"  cmd="="  op="t"  val="500"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_03

[tb_eval  exp="f.change_number='-4'"  name="change_number"  cmd="="  op="t"  val="-4"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=1000"  name="change_number"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_04

[tb_eval  exp="f.change_number='-8'"  name="change_number"  cmd="="  op="t"  val="-8"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=500"  name="change_number"  cmd="="  op="t"  val="500"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_05

[tb_eval  exp="f.change_number='-4'"  name="change_number"  cmd="="  op="t"  val="-4"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=1000"  name="change_number"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_06

[tb_eval  exp="f.change_number='-4'"  name="change_number"  cmd="="  op="t"  val="-4"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_01.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=1000"  name="change_number"  cmd="="  op="t"  val="1000"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
*star_on_07

[tb_eval  exp="f.change_number=0"  name="change_number"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=764 top=312 width=114 height=110 time=300ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star01]
[image layer=0 left=896 top=298 width=114 height=110 time=400ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star02]
[image layer=0 left=1028 top=312 width=114 height=110 time=500ms storage = ../image/New_GUI/Test_In_UI/Test_Result_Star_02.png page=fore visible=true name=star03]
[_tb_end_tyrano_code]

[call  storage="Test_Result_01.ks"  target="*Score_Change"  ]
[tb_eval  exp="f.change_number=1500"  name="change_number"  cmd="="  op="t"  val="1500"  val_2="undefined"  ]
[call  storage="Test_Result_01.ks"  target="*Money_Change"  ]
[return  ]
