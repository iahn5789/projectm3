[_tb_system_call storage=system/_Chapter02_Office_01.ks]

*office_01

[wait  time="2000"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[tb_replay_start  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Office_Bgi_01.png"  ]
[tb_start_tyrano_code]
; 강여진 등장
[chara_new name="Kang" storage="chara/Kang_Sc/bin.png" zindex=1 jname="Kang" width="1169" height="2735" ]

[chara_layer name="Kang" part="body" id="1" storage="chara/Kang_SC/Kang_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="2" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="3" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]

[chara_layer name="Kang" part="face" id="1" storage="chara/Kang_SC/Kang_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="2" storage="chara/Kang_SC/Kang_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="3" storage="chara/Kang_SC/Kang_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="4" storage="chara/Kang_SC/Kang_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="5" storage="chara/Kang_SC/Kang_Face_Angry_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="6" storage="chara/Kang_SC/Kang_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="7" storage="chara/Kang_SC/Kang_Face_Worry_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="8" storage="chara/Kang_SC/Kang_Face_Embarrass_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="100"  time=""  loop="true"  storage="Our_Story_Common_Classroom_01.wav"  fadein="false"  ]
[playse  volume="45"  time="1000"  buf="0"  storage="Amb/Amb_Classroom_Cutoff_01.wav"  loop="true"  fadein="true"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="4" ]
[chara_show name="Kang" time=500 top="0" left="375" wait=false]

#한갑수
[t1]
안 돼![t2][p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
[t1]
그러니까 왜 안 되는 건데요![t2][p]
[chara_part name="Kang" body="1" face="4" ]
#한갑수
[t1]
오늘까지 등록을 갱신하는 날인데 동아리 인원이[r]세 명밖에 없잖아![t2][p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
[t1]
네 명 다 모였어요! 선생님이 승인만 해주시면 된다구요![t2][p]
[chara_part name="Kang" body="1" face="4" ]
#한갑수
[t1]
그러니까 내가 말하잖아![t2][p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
[t1]
아까부터 계속 같은 말만 하시잖아요![t2][p]
[chara_part name="Kang" body="1" face="4" ]
#한갑수
[t1]
그래! 귀찮다고![t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="5" ]
#강여진
[t1]
선생님이 귀찮을 게 어디있어요..동아리 활동은 저희가[r]하는 건데![t2][p]
#한갑수
[t1]
너희가 그렇게 활동을 하게 되면 내가 신경 써야 하잖아![t2][p]
[t1]나는 그게 귀찮은 거라고[t2][p]
[chara_part name="Kang" body="1" face="4" ]
#강여진
[t1]
선생님! 너무해요...![t2][p]
#한갑수
[t1]
흥, 그렇게 말해도 안 되는 건 안 되는 거야 ![t2][p]
#강여진
[t1]
너무해...[t2][p]
#한갑수
[t1]
어허! 다 들린다![t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_replay  id="kang01"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide name="Kang" time=1 wait=false]
[_tb_end_tyrano_code]

[bg  time="100"  method="crossfade"  storage="Common_Sc_Lobby_Bgi_02.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="Amb/Amb_Hallway_01.wav"  loop="true"  fadein="true"  ]
[tb_show_message_window  ]
[playse  volume="5"  time="1000"  buf="1"  storage="SFX/Common_Cartoon_Walla_01.wav"  ]
[tb_start_tyrano_code]
#한갑수
[t1]
( ?#@!..!@#!$찮은 거라고! )[t2]              [er]

[_tb_end_tyrano_code]

[stopse  time="500"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]
( 안이 제법 시끄럽네... )[t2][p]
[t1]( 무슨 문제라도 있나? )[t2][p]
[chara_part name="Kang" body="1" face="4" ]
[chara_show name="Kang" time="500" top="0" left="553" width="815" height="1903" wait=false ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]
( 앗 여진이 나왔다 )[t2][p]
[t1]...어떻게 됐어?[t2][p]
[chara_part name="Kang" body="1" face="6" ]
[chara_move name="Kang" time="200" top="0" left="375" width="1169" height="2735" wait=false]
#강여진
[t1]
응? [t2][p]
#강여진
[t1]
[chara_part name="Kang" body="3" face="1" ]
별일 없을 거야 너무 걱정하지마![t2][p]
#&[sf.name]
[t1]( 별일이 있는 것 같은 분위기였는데...  )[t2][p]
[chara_part name="Kang" body="2" face="2" ]
#강여진
[t1]
일단 부실로 돌아가자![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="2"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide name="Kang" time=1 wait=false]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[jump  storage="Chapter02_School_Club_01.ks"  target="*l_in"  ]
[s  ]
