[_tb_system_call storage=system/_Chapter02_School_Club_01.ks]

*l_in

[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[playse  volume="50"  time="1000"  buf="5"  storage="Amb/Amb_Shool_Club_01.wav"  fadein="true"  loop="true"  ]
[playbgm  volume="85"  time="1000"  loop="true"  storage="Common_School_Club_01.wav"  fadein="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_start_tyrano_code]
; 강여진 등장
[chara_new name="Kang" storage="chara/Kang_Sc/bin.png" zindex=1 jname="Kang" width="813" height="1903" ]

[chara_layer name="Kang" part="body" id="1" storage="chara/Kang_SC/Kang_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="2" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="3" storage="chara/Kang_SC/Kang_Body_Sc_03.png" zindex=20 ]

[chara_layer name="Kang" part="face" id="1" storage="chara/Kang_SC/Kang_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="2" storage="chara/Kang_SC/Kang_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="3" storage="chara/Kang_SC/Kang_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="4" storage="chara/Kang_SC/Kang_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="5" storage="chara/Kang_SC/Kang_Face_Angry_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="6" storage="chara/Kang_SC/Kang_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="7" storage="chara/Kang_SC/Kang_Face_Worry_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="8" storage="chara/Kang_SC/Kang_Face_Embarrass_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
; 설나희 등장
[chara_new name="Sul" storage="chara/Sul_Sc/bin.png" zindex=1 jname="Sul" width="813" height="1903" ]

[chara_layer name="Sul" part="body" id="1" storage="chara/Sul_SC/Sul_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="2" storage="chara/Sul_SC/Sul_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="3" storage="chara/Sul_SC/Sul_Body_Sc_03.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="4" storage="chara/Sul_SC/Sul_Body_Sc_04.png" zindex=20 ]

[chara_layer name="Sul" part="face" id="1" storage="chara/Sul_SC/Sul_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="2" storage="chara/Sul_SC/Sul_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="3" storage="chara/Sul_SC/Sul_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="4" storage="chara/Sul_SC/Sul_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="5" storage="chara/Sul_SC/Sul_Face_Angry_Sc_02.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="7" storage="chara/Sul_SC/Sul_Face_Worry_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="8" storage="chara/Sul_SC/Sul_Face_Embarrass_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="9" storage="chara/Sul_SC/Sul_Face_Aversion_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="1" ]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Kang" top="0" left="960" time=100 wait=false ]
[chara_show name="Sul" top="0" left="146" time=100 wait=false  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
; 진다영 등장
[chara_new name="Jin" storage="chara/Jin_Sc/bin.png" zindex=1 jname="Jin" width="1169" height="2735" ]

[chara_layer name="Jin" part="body" id="1" storage="chara/Jin_SC/Jin_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="body" id="2" storage="chara/Jin_SC/Jin_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Jin" part="body" id="3" storage="chara/Jin_SC/Jin_Body_Sc_03.png" zindex=20 ]

[chara_layer name="Jin" part="face" id="1" storage="chara/Jin_SC/Jin_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="2" storage="chara/Jin_SC/Jin_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="3" storage="chara/Jin_SC/Jin_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="4" storage="chara/Jin_SC/Jin_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="6" storage="chara/Jin_SC/Jin_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="8" storage="chara/Jin_SC/Jin_Face_Embarrass_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[mask_off  time="2000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#강여진
[t1]
아! 나희 언니 있었네?[t2][p]
[t1]언제왔어?[t2][p]
#설나희
[t1]
방금...[t2][p]
#강여진
[t1]
다영이는 아직 안 왔어?[t2][p]
#설나희
[t1]
왔어...[t2][p]
#강여진
[t1]
응? 근데 어디 갔어?[t2][p]
#설나희
[t1]
화장실...[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Jin" body="1" face="4" ]
[chara_hide_all time=100 wait=false]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Sliding_Door_Open_02.wav"  ]
[tb_start_tyrano_code]
#
드륵-쾅![p]
[chara_show name="Jin" top="0" left="375" time=100 wait=false]
#진다영
[t1]
설나희! 죽을래![t2][p]
#강여진
[t1]
다영이도 왔구나! 화장실 다녀온 거야?[t2][p]
[chara_part name="Jin" body="3" face="3" ]
#진다영
[t1]
닥쳐어ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ![t2][p]
#강여진
[t1]
하핫! 화장실은 부끄러운 게 아니야~[t2][p]
[chara_part name="Jin" body="3" face="6" ]
#진다영
[t1]
시끄러워! 꺼져어ㅓㅓㅓㅓㅓㅓㅓ![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Run_01.wav"  ]
[stopse  time="2000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[chara_hide name="Jin" time=500 wait=false]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="1"  storage="SFX/Common_Door_Slam_01.wav"  ]
[tb_start_tyrano_code]
#
쾅-![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="8" ]
[chara_show name="Kang" top="0" left="375" width="1169" height="2735" time=100 wait=false ]
#강여진
[t1]
다영이가 많이 화났나봐...[t2][p]
#강여진
[t1]
조금 달래주고 올게 잠깐만~[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Ctr_Run_01.wav"  ]
[tb_start_tyrano_code]
[chara_hide_all time=500 wait=true]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" top="0" left="553" time=300 wait=false ]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]
( 음...)[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1500"  buf="4"  storage="Amb/Amb_Cold_Wind_01.wav"  fadein="false"  loop="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]
( 어색하다... )[t2][p]
[t1]저기...[t2][p]
[t1]
나희...누나...?[t2][p]
[chara_move name="Sul" top="0" left="375" width="1169" height="2735" time=100 wait=false ]
#설나희
[t1]
응...[t2][p]
#&[sf.name]
[t1]
아까 여진이가 언니라고 부르던데... 진짜 누나예요?[t2][p]
#설나희
[t1]
응... 맞아...[t2][p]
#&[sf.name]
[t1]
여진이하고 어떤 사이에요?[t2][p]
[chara_part name="Sul" body="2" face="1" ]
#설나희
[t1]
그냥...[t2][p]
[t1]아는 언니 동생 사이...[t2][p]
#&[sf.name]
[t1]
아... 하하...[t2][p]
[_tb_end_tyrano_code]

[playse  volume="90"  time="1000"  buf="0"  storage="SFX/Crow_Caw_01.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]
( 역시 이 사람과는 단둘이 있는 게 어렵다... )[t2][p]
[t1]여진이는 어떻게 알게 됐어요?[t2][p]
#설나희
[t1]
...[t2][p]
[t1]옆집 동생이야[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[quake  time="300"  count="3"  hmax="4"  wait="false"  vmax="4"  ]
[tb_start_tyrano_code]
[chara_move name="Sul" top="0" left="553" width="813" height="1903" time=100 wait=false ]

#&[sf.name]
[t1]
( 틀렸어.. 대화가 두 마디 이상 진행되질 않아...!)[t2][p]
[t1]( 누구라도 좋으니까 도와줘...! )[t2][p]
[chara_hide_all time=500 wait=false]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="4"  ]
[playse  volume="200"  time="1000"  buf="0"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[tb_start_tyrano_code]
#
드르륵-[p]
[_tb_end_tyrano_code]

*sul01

[tb_replay_start  ]
[tb_start_tyrano_code]
; 전대용 등장
[chara_new name="Jeon" storage="chara/Jeon_Sc/bin.png" zindex=1 jname="Jeon" width="1004" height="1903" ]

[chara_layer name="Jeon" part="body" id="1" storage="chara/Jeon_SC/Jeon_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="body" id="2" storage="chara/Jeon_SC/Jeon_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Jeon" part="body" id="3" storage="chara/Jeon_SC/Jeon_Body_Sc_03.png" zindex=20 ]
[chara_layer name="Jeon" part="body" id="4" storage="chara/Jeon_SC/Jeon_Body_Sc_04.png" zindex=20 ]

[chara_layer name="Jeon" part="face" id="1" storage="chara/Jeon_SC/Jeon_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="2" storage="chara/Jeon_SC/Jeon_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="4" storage="chara/Jeon_SC/Jeon_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="6" storage="chara/Jeon_SC/Jeon_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="8" storage="chara/Jeon_SC/Jeon_Face_Embarrass_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="2" face="1" ]
[chara_show name="Jeon" time="100" top="0" left="362" wait=false]

#전대용
[t1]
실례하겠습니다-[t2][p]
#&[sf.name]
[t1]
( 아! 살았다! )[t2][p]
[t1]어! 대용아 여긴 어쩐 일이야?[t2][p]
[chara_move name="Jeon" top="0" left="100" width="1444" height="2735" time=100 wait=false ]
#전대용
[t1]
오! 히사시부리![t2][p]
[t1]혹시 새 마이크 하나 빌릴 수 있을까?[r]담임이 심부름 시켰어[t2][p]
#&[sf.name]
[t1]
음.. 저거 아니야? 내가 가져다줄게[t2][p]
[chara_part name="Jeon" body="1" face="2" ]
#전대용
[t1]
어? 나희 누나 안녕하세요! 헤헤...[t2][p]
#설나희
[t1]
........[t2][p]
#&[sf.name]
[t1]
흠... 이거 맞지?[t2][p]
[chara_part name="Jeon" body="4" face="6" ]
#전대용
[t1]
오! 믿고 있었다고 친구[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
[_tb_end_tyrano_code]

[playse  volume="150"  time="1000"  buf="0"  storage="SFX/Common_Sliding_Door_Open_Short_02.wav"  ]
[tb_start_tyrano_code]
#전대용
[t1]
그럼, 수고![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_start_tyrano_code]
[chara_hide name="Jeon" time=500 wait=true]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
; 설나희 등장
[chara_new name="Sul" storage="chara/Sul_Sc/bin.png" zindex=1 jname="Sul" width="813" height="1903" ]

[chara_layer name="Sul" part="body" id="1" storage="chara/Sul_SC/Sul_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="2" storage="chara/Sul_SC/Sul_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="3" storage="chara/Sul_SC/Sul_Body_Sc_03.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="4" storage="chara/Sul_SC/Sul_Body_Sc_04.png" zindex=20 ]

[chara_layer name="Sul" part="face" id="1" storage="chara/Sul_SC/Sul_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="2" storage="chara/Sul_SC/Sul_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="3" storage="chara/Sul_SC/Sul_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="4" storage="chara/Sul_SC/Sul_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="5" storage="chara/Sul_SC/Sul_Face_Angry_Sc_02.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="7" storage="chara/Sul_SC/Sul_Face_Worry_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="8" storage="chara/Sul_SC/Sul_Face_Embarrass_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="9" storage="chara/Sul_SC/Sul_Face_Aversion_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Sul" body="2" face="1" ]
[chara_show name="Sul" top="0" left="553" width="813" height="1903" time=500 wait=false ]
#설나희
[t1]
........[t2][p]
[chara_part name="Sul" body="2" face="1" ]
[t1]쟤...너 친구야...?[t2][p]
#&[sf.name]
[t1]
네? [t2][p]
[t1]어...같은 반이고 친구 사이...죠...?[t2][p]
[chara_move name="Sul" top="0" left="375" width="1169" height="2735" time=10 wait=false ]
#설나희
[t1]
......[t2][p]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Common_Whoosh_Horror_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="9" ]
#설나희
[t1]
기분 나빠...[t2][p]
#&[sf.name]
[t1]
( 응? 어쩐지 오한이... )[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[tb_replay  id="sul01"  ]
[jump  storage="Chapter02_School_Club_02.ks"  target="*l_in"  ]
[s  ]
