[_tb_system_call storage=system/_Test_Start_01.ks]

*teststart

[tb_keyconfig  flag="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearfix name="lootcommon"]
[clearfix name="lootkang"]
[clearfix name="lootjin"]
[clearfix name="lootsul"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_ptext_show  x="424"  y="47"  size="45"  color="0x000000"  time="1"  face="The&nbsp;Jamsil3Regular"  text="&f.Day"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="630"  y="410"  size="30"  color="0x000000"  time="1"  text="&sf.name"  anim="false"  face="The&nbsp;Jamsil3Regular"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=329 top=0  storage = ../image/New_GUI/Test_In_UI/Test_Paper_Bgi_01.png page=fore visible=true name=testpaper ]

[_tb_end_tyrano_code]

[mask_off  time="2000"  effect="fadeOut"  ]
[l  ]
[tb_ptext_hide  time="1"  ]
[tb_start_tyrano_code]
[anim name=testpaper top="-=900" time=1000  ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Zoom_In_01.wav"  ]
[tb_start_tyrano_code]
[camera zoom=1 x=0 y=-0 time=800]
[camera zoom=1.8 x=0 y=-0 time=1000]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="Common_Test.png"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_01"  ]
[s  ]
*quiz_01

[tb_eval  exp="f.question=1"  name="question"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="0"]
[camera zoom=1 x=0 y=-0 time=500]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_01.png page=fore visible=true name=testpaper ]
[image layer=1 left=1822 top=886 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="240"  y="62"  size="33"  color="0x000000"  time="0"  face="The&nbsp;Jamsil3Regular"  text="&f.Day"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1638"  y="59"  size="35"  color="0x000000"  time="0"  face="The&nbsp;Jamsil3Regular"  text="&f.collect"  anim="false"  edge="undefined"  shadow="undefined"  ]
*quiz_back_01

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_01_scoring

[jump  storage="Test_Start_01.ks"  target="*o_01"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_01"  ]
[s  ]
*o_01

[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_02"  ]
[s  ]
*x_01

[tb_start_tyrano_code]
[freeimage layer="2"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_02"  ]
[s  ]
*quiz_02

[tb_eval  exp="f.question=2"  name="question"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[cm  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_02.png page=fore visible=true name=testpaper ]
[image layer=1 left=1822 top=886 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="240"  y="54"  size="33"  color="0x000000"  time="0"  face="null"  text="&f.Day"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1637"  y="48"  size="35"  color="0x000000"  time="0"  face="null"  text="&f.collect"  anim="false"  edge="undefined"  shadow="undefined"  ]
*quiz_back_02

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_02_scoring

[jump  storage="Test_Start_01.ks"  target="*o_02"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_02"  cond=""  ]
[s  ]
*o_02

[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_03"  ]
[s  ]
*x_02

[tb_start_tyrano_code]
[freeimage layer="2"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_03"  ]
[s  ]
*quiz_03

[tb_eval  exp="f.question=3"  name="question"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[cm  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_03.png page=fore visible=true name=testpaper ]
[image layer=1 left=1822 top=886 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="240"  y="54"  size="33"  color="0x000000"  time="0"  face="The&nbsp;Jamsil3Regular"  text="&f.Day"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1638"  y="48"  size="35"  color="0x000000"  time="0"  face="The&nbsp;Jamsil3Regular"  text="&f.collect"  anim="false"  edge="undefined"  shadow="undefined"  ]
[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_03_scoring

[jump  storage="Test_Start_01.ks"  target="*o_03"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_03"  cond=""  ]
[s  ]
*o_03

[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscene"  ]
[s  ]
*x_03

[tb_start_tyrano_code]
[freeimage layer="2"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*teststart"  ]
[s  ]
