[_tb_system_call storage=system/_Test_Start_01.ks]

*teststart

[tb_keyconfig  flag="0"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[freeimage layer="1" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clearfix name="lootcommon"]
[clearfix name="lootkang"]
[clearfix name="lootjin"]
[clearfix name="lootsul"]
[clearfix name="teststart"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1772"  y="50"  size="25"  color="0xf78e22"  time="1"  face="NanumGothicExtraBold"  text="&f.Day"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
[image layer=0 left=0 top=0  storage = ../image/New_GUI/Test_In_UI/Test_Paper_Bgi_01.png page=fore visible=true name=testpaper ]
[button name="teststart" storage="Test_Start_01.ks" target="quiz_01" graphic="../image/New_GUI/Test_In_UI/Test_Start_01.png" enterimg="../image/New_GUI/Test_In_UI/Test_Start_02.png" width="250" height="80" x="834" y="1200" clickse="UI/Exam_Zoom_In_01.wav"]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_eval  exp="f.testResult=0"  name="testResult"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
[anim name=teststart time=500 top=930]
[_tb_end_tyrano_code]

[s  ]
*quiz_01

[tb_ptext_hide  time="1"  ]
[tb_start_tyrano_code]

[anim name=teststart time=300 top=1200]
[free name="testpaper" layer=0 time=500]
[wa]
[image layer=1 left=2120 top=486 width=239 height=108 storage = ../image/New_GUI/Test_In_UI/UI_Text_Ready_01.png page=fore visible=true name=textready]
[anim name=textready time=300 left=840]
[wa]
[anim name=textready time=700 left=840]
[wa]
[anim name=textready time=300 left=-200]
[wa]
[free name="textready" layer=1]
[image layer=1 left=2120 top=486 width=239 height=108 storage = ../image/New_GUI/Test_In_UI/UI_Text_Start_01.png page=fore visible=true name=textstart]
[anim name=textstart time=300 left=840]
[wa]
[anim name=textstart time=700 left=840]
[wa]
[anim name=textstart time=300 left=-200]
[wa]
[free name="textstart" layer=1]
[_tb_end_tyrano_code]

[tb_eval  exp="f.question=1"  name="question"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="0"]
[eval exp="f.testTime = 30"]
[time_limit label="*timeout_01" posX=1043 posY=0 width=1920 height=37 time=30000 barcolor=0xFFE8CA gagecolor=0xFF9811 warningcolor=0xFF4D00 dengercolor=0xFF0000 layer="2" posXtext=95 posYtext=970 textsize="50" textwidth="300" texttalign="left" ptextname="quiz_time" textface="PyeongChangPeaceBold" ptextcolor="0xFF8100" timeText="&f.testTime" textlayer="2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_01.png page=fore visible=true name=testpaper time=1000]
[image layer=1 left=10 top=955 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1760"  y="45"  size="25"  color="0xf78e22"  time="1"  face="NanumGothicBold"  text="&f.score"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1495"  y="45"  size="25"  color="0xf78e22"  time="0"  face="NanumGothicBold"  text="&f.question"  anim="false"  edge="undefined"  shadow="undefined"  ]
*quiz_back_01

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_01_scoring

[jump  storage="Test_Start_01.ks"  target="*quiz_select_check_01"  cond="f.select!=''"  ]
[return  ]
[s  ]
*quiz_select_check_01

[tb_start_tyrano_code]

[clr_time_limit]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*o_01"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_01"  ]
[s  ]
*o_01

[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.star01='TRUE'"  name="star01"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.testResult+=1"  name="testResult"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Collect_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_02"  ]
[s  ]
*x_01

[tb_eval  exp="f.star01='FALSE'"  name="star01"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_02"  ]
[s  ]
*quiz_02

[tb_eval  exp="f.question=2"  name="question"  cmd="="  op="t"  val="2"  val_2="undefined"  ]
[tb_ptext_hide  time="1"  ]
[cm  ]
[tb_start_tyrano_code]
[cm]
[clearstack]
[eval exp="f.testTime = 30"]
[time_limit label="*timeout_02" posX=1043 posY=0 width=1920 height=37 time=30000 barcolor=0xFFE8CA gagecolor=0xFF9811 warningcolor=0xFF4D00 dengercolor=0xFF0000 layer="2" posXtext=95 posYtext=970 textsize="50" textwidth="300" texttalign="left" ptextname="quiz_time" textface="PyeongChangPeaceBold" ptextcolor="0xFF8100" timeText="&f.testTime" textlayer="2"][freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=1 left=10 top=955 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_02.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1760"  y="45"  size="25"  color="0xf78e22"  time="1"  face="NanumGothicBold"  text="&f.score"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1495"  y="45"  size="25"  color="0xf78e22"  time="0"  face="NanumGothicBold"  text="&f.question"  anim="false"  edge="undefined"  shadow="undefined"  ]
*quiz_back_02

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_02_scoring

[jump  storage="Test_Start_01.ks"  target="*quiz_select_check_02"  cond="f.select!=''"  ]
[return  ]
[s  ]
*quiz_select_check_02

[tb_start_tyrano_code]

[clr_time_limit]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*o_02"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_02"  cond=""  ]
[s  ]
*o_02

[tb_eval  exp="f.star02='TRUE'"  name="star02"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.testResult+=2"  name="testResult"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Collect_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_03"  ]
[s  ]
*x_02

[tb_eval  exp="f.star02='FALSE'"  name="star02"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_03"  ]
[s  ]
*quiz_03

[tb_eval  exp="f.question=3"  name="question"  cmd="="  op="t"  val="3"  val_2="undefined"  ]
[tb_ptext_hide  time="1"  ]
[cm  ]
[tb_start_tyrano_code]
[cm]
[clearstack]
[eval exp="f.testTime = 30"]
[time_limit label="*timeout_03" posX=1043 posY=0 width=1920 height=37 time=30000 barcolor=0xFFE8CA gagecolor=0xFF9811 warningcolor=0xFF4D00 dengercolor=0xFF0000 layer="2" posXtext=95 posYtext=970 textsize="50" textwidth="300" texttalign="left" ptextname="quiz_time" textface="PyeongChangPeaceBold" ptextcolor="0xFF8100" timeText="&f.testTime" textlayer="2"][freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=1 left=10 top=955 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_03.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1495"  y="45"  size="25"  color="0xf78e22"  time="0"  face="NanumGothicBold"  text="&f.question"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1760"  y="45"  size="25"  color="0xf78e22"  time="1"  face="NanumGothicBold"  text="&f.score"  anim="false"  edge="undefined"  shadow="undefined"  ]
[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_03_scoring

[jump  storage="Test_Start_01.ks"  target="*quiz_select_check_03"  cond="f.select!=''"  ]
[return  ]
[s  ]
*quiz_select_check_03

[tb_start_tyrano_code]

[clr_time_limit]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*o_03"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_03"  cond=""  ]
[s  ]
*o_03

[tb_eval  exp="f.star03='TRUE'"  name="star03"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.testResult+=4"  name="testResult"  cmd="+="  op="t"  val="4"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Collect_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*quiz_04"  ]
[s  ]
*x_03

[tb_eval  exp="f.star03='FALSE'"  name="star03"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*quiz_04"  ]
[s  ]
*quiz_04

[tb_eval  exp="f.question=4"  name="question"  cmd="="  op="t"  val="4"  val_2="undefined"  ]
[tb_ptext_hide  time="1"  ]
[cm  ]
[tb_start_tyrano_code]
[cm]
[clearstack]
[eval exp="f.testTime = 30"]
[time_limit label="*timeout_04" posX=1043 posY=0 width=1920 height=37 time=30000 barcolor=0xFFE8CA gagecolor=0xFF9811 warningcolor=0xFF4D00 dengercolor=0xFF0000 layer="2" posXtext=95 posYtext=970 textsize="50" textwidth="300" texttalign="left" ptextname="quiz_time" textface="PyeongChangPeaceBold" ptextcolor="0xFF8100" timeText="&f.testTime" textlayer="2"][freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=1 left=10 top=955 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_04.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1760"  y="45"  size="25"  color="0xf78e22"  time="1"  face="NanumGothicBold"  text="&f.score"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1495"  y="45"  size="25"  color="0xf78e22"  time="0"  face="NanumGothicBold"  text="&f.question"  anim="false"  edge="undefined"  shadow="undefined"  ]
*quiz_back_04

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_04_scoring

[jump  storage="Test_Start_01.ks"  target="*quiz_select_check_04"  cond="f.select!=''"  ]
[return  ]
[s  ]
*quiz_select_check_04

[tb_start_tyrano_code]

[clr_time_limit]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*o_04"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_04"  cond=""  ]
[s  ]
*o_04

[tb_eval  exp="f.star04='TRUE'"  name="star04"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.testResult+=2"  name="testResult"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Collect_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_05"  ]
[s  ]
*x_04

[tb_eval  exp="f.star04='FALSE'"  name="star04"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_05"  ]
[s  ]
*quiz_05

[tb_eval  exp="f.question=5"  name="question"  cmd="="  op="t"  val="5"  val_2="undefined"  ]
[tb_ptext_hide  time="1"  ]
[cm  ]
[tb_start_tyrano_code]
[cm]
[clearstack]
[eval exp="f.testTime = 30"]
[time_limit label="*timeout_05" posX=1043 posY=0 width=1920 height=37 time=30000 barcolor=0xFFE8CA gagecolor=0xFF9811 warningcolor=0xFF4D00 dengercolor=0xFF0000 layer="2" posXtext=95 posYtext=970 textsize="50" textwidth="300" texttalign="left" ptextname="quiz_time" textface="PyeongChangPeaceBold" ptextcolor="0xFF8100" timeText="&f.testTime" textlayer="2"][freeimage layer="1" time="100"]
[freeimage layer="0" time="100"]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=1 left=10 top=955 width=74 height=78 time=300ms storage = ../image/New_GUI/Test_In_UI/Timer_01.gif page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=0 left=0 top=0 time=300ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_05.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[tb_ptext_show  x="1495"  y="45"  size="25"  color="0xf78e22"  time="0"  face="NanumGothicBold"  text="&f.question"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="1760"  y="45"  size="25"  color="0xf78e22"  time="1"  face="NanumGothicBold"  text="&f.score"  anim="false"  edge="undefined"  shadow="undefined"  ]
*quiz_back_05

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*Random_Number"  ]
[s  ]
*quiz_05_scoring

[jump  storage="Test_Start_01.ks"  target="*quiz_select_check_05"  cond="f.select!=''"  ]
[return  ]
[s  ]
*quiz_select_check_05

[tb_start_tyrano_code]

[clr_time_limit]
[_tb_end_tyrano_code]

[jump  storage="Test_Start_01.ks"  target="*o_05"  cond="f.select=='TRUE'"  ]
[jump  storage="Test_Start_01.ks"  target="*x_05"  cond=""  ]
[s  ]
*o_05

[tb_eval  exp="f.star05='TRUE'"  name="star05"  cmd="="  op="t"  val="TRUE"  val_2="undefined"  ]
[tb_eval  exp="f.collect+=1"  name="collect"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.testResult+=2"  name="testResult"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Correct_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Collect_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Result_01.ks"  target="*test_result"  ]
[s  ]
*x_05

[tb_eval  exp="f.star05='FALSE'"  name="star05"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Wrong_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Result_01.ks"  target="*test_result"  ]
[s  ]
*timeout_01

[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Timeout_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_02"  ]
*timeout_02

[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Timeout_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_03"  ]
*timeout_03

[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Timeout_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_04"  ]
[s  ]
*timeout_04

[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Timeout_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_05"  ]
[s  ]
*timeout_05

[tb_eval  exp="f.wrong+=1"  name="wrong"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.score-=20"  name="score"  cmd="-="  op="t"  val="20"  val_2="undefined"  ]
[tb_start_tyrano_code]
[freeimage layer="2"]
[clearfix name="correct_01"]
[freeimage layer="1" time="100"]
[cm]
[filter layer=0 blur=10 opacity=80]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer="1" page="fore" visible="true" top="78" left="591"  storage=" ../image/New_GUI/Test_In_UI/Timeout_UI_01.png"]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Exam_Answer_Wrong_01.wav"]
[_tb_end_tyrano_code]

[wait  time="1000"  ]
[jump  storage="Test_Result_01.ks"  target="*test_result"  ]
[s  ]
