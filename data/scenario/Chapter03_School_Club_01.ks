[_tb_system_call storage=system/_Chapter03_School_Club_01.ks]

*chapter03_01

[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_eval  exp="f.Day=1"  name="Day"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.story='자기소개'"  name="story"  cmd="="  op="t"  val="자기소개"  val_2="undefined"  ]
[cm  ]
[playse  volume="100"  time="1000"  buf="0"  storage="Amb/Amb_Hallway_01.wav"  fadein="true"  loop="true"  clear="true"  ]
[tb_start_tyrano_code]
[freeimage layer="0" time=200 wait=false ]
[cm]
[free name="Score" layer=2 ]
[free name="Money" layer=2 ]
[free name="minus_Score_text" layer=2 ]
[free name="minus_Money_text" layer=2 ]
[_tb_end_tyrano_code]

[tb_keyconfig  flag="1"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Lobby_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
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
[t1]
#&[sf.name]
후... 쉽지않았어[t2][p]
[chara_part name="Kang" body="1" face="1" ]
[chara_show name="Kang" top="0" left="553" time=300 wait=false ]
[t1]
#강여진
[emb exp="sf.name"]! 시험은 잘 본거야?[t2][p]
[t1]
#&[sf.name]
그럭저럭? 결과는 나쁘지 않을 듯 해[t2][p]
[t1]
#강여진
아! 다행이다! [t2][p]
[chara_part name="Kang" body="2" face="2" ]
[t1]혹시라도 떨어질까 봐 조마조마했다구![t2][p]
[chara_part name="Kang" body="2" face="1" ]
[t1]
#&[sf.name]
걱정은 안 해도 될 것 같아[t2][p]
[t1]그나저나 이제 다음이 문제일 듯한데...[t2][p]
[chara_part name="Kang" body="3" face="7" ]
[t1]
#강여진
다음? 아아~ 오디션 말하는 거야?[t2][p]
[chara_part name="Kang" body="3" face="1" ]
[t1]
#강여진
그건 걱정하지 않아도 돼![t2][p]
[t1]
#&[sf.name]
응? 걱정하지 않아도 된다니?[t2][p]
[chara_part name="Kang" body="3" face="8" ]
[t1]
#강여진
우리 고문 선생님은 귀찮은 거라면 둘째가라면 서러울 [r]정도로 싫어하시거든![t2][p]
[chara_part name="Kang" body="3" face="1" ]
[t1]
#강여진
아마 오디션을 본다고 말씀하셨던 것도 잊어버리셨을걸?[t2][p]
[t1]
#&[sf.name]
그런 거라면 다행인데...[t2][p]
[chara_part name="Kang" body="1" face="1" ]
[t1]
#강여진
그래도 혹시 모르니까 연습 정도는 해두는 것이 좋을 것 같아[t2][p]
[chara_part name="Kang" body="1" face="2" ]
[chara_move name="Kang" width=1169 height=2735 left=375 top=0 time=300 wait=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
다들 기다리고 있으니까 어서 동아리방으로 가자![t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_hide_message_window  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="Common_School_Club_01.wav"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_show_message_window  ]
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
; 진다영 등장
[chara_new name="Jin" storage="chara/Jin_Sc/bin.png" zindex=1 jname="Jin" width="813" height="1903" ]

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

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Sliding_door_open.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="1" ]
[chara_show name="Kang" top="0" left="553" time=200 wait=false ]
[t1]
#강여진
아! 둘 다 와있었구나![t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[t1]
#진다영
늦어! 늦는다구![t2][p]
[t1]
#설나희
...[t2][p]
[chara_part name="Kang" body="3" face="2" ]
[t1]
#강여진
자! 그럼 정식으로 우리 밴드부원을 소개할게![t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" top="0" left="553" time=200 wait=false ]
[t1]
#강여진
이 쪽은 우리 밴드부에서 베이스와 귀염둥이역을 맡은[r]새침데기 진다영![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Applause_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="6" ]
[t1]
#진다영
누...누가 귀염둥이라는거야![t2][p]
[t1]
#강여진
말은 항상 거칠게 해도 이게 진심은 아니니까 참고해줘![t2][p]
[chara_part name="Jin" body="3" face="4" ]
[t1]
#진다영
시끄러워 강여진![t2][p]
[chara_part name="Jin" body="2" face="3" ]
[t1]
#진다영
잘...부탁해...[t2][p]
[t1]
#강여진
하하! 다영이가 많이 부끄러운가 봐![t2][p]
[chara_part name="Jin" body="3" face="4" ]
[t1]
#진다영
닥쳐 강여진![t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" top="0" left="553" time=200 wait=false ]
[t1]
#강여진
그리고 이쪽은 우리 밴드의 드럼을 맡고 있는 우리들의[r]맏언니 설나희![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Applause_02.wav"  ]
[tb_start_tyrano_code]
[t1]
#설나희
...[t2][p]
[t1]
#설나희
안녕...?[t2][p]
[t1]
#강여진
다영이가 말이 많은 것처럼 나희 언니는 말수가 적으니까[r]오해 할 수 있는데 사실 누구보다 따뜻한 사람이야[t2][p]
[t1]
#설나희
...응...[t2][p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" top="0" left="553" time=200 wait=false ]
[t1]
#진다영
나 말 안 많거든?![t2][p]
[t1]
#강여진
하하! 장난이잖아~[t2][p]
[t1]
#진다영
흥![t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="2" face="1" ]
[chara_show name="Kang" top="0" left="553" time=200 wait=false ]
[t1]
#강여진
그리고 내 이름은 강여진! [t2][p]
[t1]
#강여진
이전까지 보컬과 기타를 맡고 있었지만 네가 보컬로[r]합류했으니 기타와 코러스를 맡을 거야![t2][p]
[chara_part name="Kang" body="2" face="2" ]
[chara_move name="Kang" width=1169 height=2735 left=375 top=0 time=200 wait=false]
[t1]
#강여진
그냥 편하게 여진이라고 불러도 좋아![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Emotion_Heart_Beat_01.wav"  ]
[tb_start_tyrano_code]
[t1]
#&[sf.name]
( 처음으로 손잡아 본 여자... )[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[t1]
#&[sf.name]
응...고마워 여진아...[t2][p]
[chara_part name="Kang" body="2" face="2" ]
[chara_move name="Kang" width=813 height=1903 left=553 top=0 time=200 wait=false]
[t1]
#강여진
자! 그러면 이제 네 소개를 할 차례야![t2][p]
[t1]
#&[sf.name]
( 아... 맞아... 이 동아리에 들어온 이후에 내 소개를[r]한 번도 한 적이 없었지... )[t2][p]
[t1]
#&[sf.name]
( 그런데... 내 이름은 어떻게 알고 있는거지...? )[t2][p]
[t1]
#&[sf.name]
어... 내 이름은 [emb exp="sf.name"]... 앞으로 잘 부탁할게...[t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="1" face="1" ]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Kang" top="0" width=813 height=1903 left=146 top=0 time=200 wait=false ]
[chara_show name="Jin" top="0" width=813 height=1903 left=960 top=0 time=200 wait=false ]
[t1]
#진다영
뭐야? 그게 끝이야?[t2][p]
[chara_part name="Kang" body="3" face="7" ]
[t1]
#강여진
그러게, 뭔가 더 할 말이 있을 것 같은데...[t2][p]
[chara_part name="Kang" body="2" face="1" ]
[t1]
#강여진
꿈이라던가 좋아하는 거... 더 할 말은 없어?[t2][p]
[chara_part name="Kang" body="2" face="3" ]
[t1]
#강여진
아니면 뭐... 좋아하는 사람이라던가...[t2][p]
[chara_part name="Jin" body="3" face="4" ]
[chara_part name="Kang" body="2" face="1" ]
[t1]
#진다영
좋아하는 사람이 있을 것 같아?[t2][p]
[t1]동아리에 들어온 지 일주일 밖에 안 됐다구[t2][p]
[chara_part name="Kang" body="1" face="6" ]
[t1]
#강여진
동아리? 난 동아리라고 한 적은 없는데?[t2][p]
[chara_part name="Jin" body="1" face="3" ]
[t1]
#진다영
뭐? 하! 나도 동아리라고 한 적 없거든?![t2][p]
[chara_part name="Kang" body="1" face="1" ]
[t1]
#강여진
방금 "동.아.리에 들어온 지 일주일밖에 안됐다" 라고[r]했잖아? [t2][p]
[chara_part name="Kang" body="1" face="6" ]
[t1]
#강여진
설마 진다영... 너 혹시?[t2][p]
[t1]
#강여진
우리 [emb exp="sf.name"]에게 반한 거 아니야?[t2][p]
[chara_part name="Jin" body="1" face="3" ]
[t1]
#진다영
무..뭐...뭐?! 무...무슨 그런말을!!![t2][p]
[chara_part name="Kang" body="1" face="2" ]
[t1]
#강여진
하핫! 농담이야 농담~ 신경 쓰지 마![t2][p]
[t1]
#진다영
강여진! 너 진짜...[t2][p]
[t1]
#설나희
저기...[t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="1" face="1" ]
[chara_show name="Sul" top="0" width=813 height=1903 left=553 top=0 time=200 wait=false ]
[t1]
#설나희
우리가 질문을 해보는 건 어떻게 생각해?[t2][p]
[t1]
#설나희
할 말이 떠오르지 않는다면 그것도 좋다고 생각해...[t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="3" face="7" ]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Kang" top="0" width=813 height=1903 left=146 top=0 time=200 wait=false ]
[chara_show name="Jin" top="0" width=813 height=1903 left=960 top=0 time=200 wait=false ]
[t1]
#강여진
음...그럼 우리가 무얼 물어보는 게 좋으려나...흐음...[t2][p]
[chara_part name="Jin" body="1" face="2" ]
[t1]
#진다영
우선 범죄자 아닌지부터 물어보는 게 어때? [t2][p]
[t1]눈빛이 아주 음흉하다고?[t2][p]
[t1]
#&[sf.name]
( 제발 그런 말은 내 앞에서 하지 말아줘... )[t2][p]
[chara_part name="Kang" body="1" face="5" ]
[t1]
#강여진
진다영! 너 진짜 그러다가 혼나![t2][p]
[chara_part name="Kang" body="1" face="4" ]
[chara_part name="Jin" body="1" face="4" ]
[t1]
#진다영
흥! 난 단지 우리 동아리에 이상한 사람이 없었으면[r]하는 거라고![t2][p]
[chara_part name="Kang" body="3" face="7" ]
[t1]
#강여진
그러면 우리 보컬에게 가장 먼저 무엇을 물어보는 게[r]좋으려나...[t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" top="0" width=813 height=1903 left=553 top=0 time=200 wait=false ]
[t1]
#설나희
악기...[t2][p]
[t1]
#설나희
좋아하는 악기가 있는지 먼저 물어보는 게 좋을 것[r]같아...[t2][p]
[t1]
#설나희
어찌 됐든 우리는 밴드부니까...[t2][p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="2" face="2" ]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Kang" top="0" width=813 height=1903 left=146 top=0 time=200 wait=false ]
[chara_show name="Jin" top="0" width=813 height=1903 left=960 top=0 time=200 wait=false ]
[t1]
#강여진
좋은 생각! 그렇지만 그 질문은 너무 쉬운걸?[t2][p]
[t1]
#진다영
엥?[t2][p]
[chara_part name="Kang" body="1" face="1" ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[t1]
#강여진
당연한 거잖아? 밴드 하는 사람은 어쩔 수 없이[r]기타를 좋아할 수 밖에 없다구?[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[t1]
#강여진
멋진 소리와 음악의 절정에서 휘몰아치는 기타 솔로! [t2][p]
[t1]결국 기타를 좋아할 수 밖에 없는 거 아니겠어?[t2][p]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[t1]
#진다영
아하 그렇게 생각하고 있다는거지?[t2][p]
[t1]
#강여진
정답은 이미 정해져 있다니깐?[t2][p]
[t1]
#진다영
이래서 기타 줄이 얇은 애들은 안 된다니까![t2][p]
[chara_part name="Jin" body="3" face="4" ]
[t1]
#진다영
베이스를 한 번도 연주해 본 적이 없으니까 그런 말이[r]나오는 거잖아[t2][p]
[chara_part name="Jin" body="1" face="1" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[t1]
#진다영
커다란 바디에서 나오는 묵직한 울림![t2][p]
[t1]
#진다영
가슴을 파고드는 묵직한 저음![r]
[t1]기타 따위는 비교할 수 없는 우직함![t2][p]
[chara_part name="Jin" body="3" face="2" ]
[chara_part name="Kang" body="1" face="4" ]
[t1]
#진다영
모기 같이 앵앵거리는 기타하고는 결이 다르다 이 말이야![t2][p]
[t1]
#진다영
하긴 박자와 프레이즈 사이에서 항상 고민하는[r]베이시스트의 고뇌를 우리 기타쟁이는 한 번도[r]느껴본 적이 없으니까 모르는 거겠지~[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="5" ]
[t1]
#강여진
뭐? 너 방금 기타를 무시한 거야![t2][p]
[chara_part name="Kang" body="1" face="4" ]
[chara_part name="Jin" body="1" face="4" ]
[t1]
#진다영
흥! 네가 먼저 시작한 거잖아![t2][p]
[chara_part name="Jin" body="3" face="4" ]
[t1]
#진다영
답은 정해져 있다고 한 게 누군데![t2][p]
[chara_part name="Kang" body="3" face="7" ]
[t1]
#강여진
앰프가 꺼져 있는 채로 연주해도 아무도 모르는[r]베이스 같은 악기를 누가 좋아할 수 있겠어?[t2][p]
[t1]
#강여진
[chara_part name="Kang" body="3" face="1" ]
항상 본인 연주가 잘 안 들려서 쌓인 스트레스를[r]여기다가 푸는 거 아니야?[t2][p]
[chara_part name="Jin" body="1" face="4" ]
[t1]
#진다영
뭐? 말 다 했어?[t2][p]
[t1]
#진다영
네가 우리 밴드에 없어서는 안 되는 존재라면서[r]날 데려왔잖아![t2][p]
[t1]너도 무의식중에 베이스가 중요하다고 생각하니까[r]그런 거 아니야?[t2][p]
[chara_part name="Kang" body="1" face="2" ]
[t1]
#강여진
헤에? 그렇게 말하니까 별다른 고민도 없이[r] 입부했으면서~ [t2][p]
[t1]
#강여진
[chara_part name="Kang" body="1" face="1" ]
너도 찾아주는 사람이 없으니 내심 기다리고[r] 있었던 거 아니었어?[t2][p]
[t1]
#설나희
...[t2][p]
[t1]
#설나희
저기...[t2][p]
[t1]
#진다영
아닌데? 아닌데?[t2][p]
[t1]귀한 베이스님께는 매일 여기저기서 제발 같이[r]연주해 달라고 연락도 오고 러브콜도 오는데?[t2][p]
[chara_part name="Jin" body="1" face="2" ]
[chara_part name="Kang" body="1" face="4" ]
[t1]
#진다영
정작 불러주는 곳이 없는 건 아무래도...풉![t2][p]
[t1]
#설나희
잠깐...[t2][p]
[chara_part name="Kang" body="1" face="5" ]
[t1]
#강여진
진다영! 자꾸 말 그렇게 할래?[t2][p]
[chara_part name="Kang" body="1" face="4" ]
[chara_part name="Jin" body="3" face="4" ]
[t1]
#진다영
그.러.니.까! 먼저 시작한 건 너였잖아![t2][p]
[chara_part name="Kang" body="1" face="5" ]
[t1]
#강여진
기타가 멋있을 거라는 말에 먼저 열등감 폭팔해서 화낸 건 너잖아![t2][p]
[chara_part name="Kang" body="1" face="4" ]
[chara_part name="Jin" body="2" face="2" ]
[t1]
#진다영
결국 넌 나 없으면 아무것도 못 하는 바보인거네?[t2][p]
[chara_part name="Kang" body="1" face="5" ]
[t1]
#강여진
진다영! 너 자꾸 그러면 진짜 진심으로 화낼 거야![t2][p]
[chara_part name="Kang" body="1" face="4" ]
[chara_part name="Jin" body="1" face="4" ]
[t1]
#진다영
지금도 화내고 있거든? 흥![t2][p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="1" face="5" ]
[chara_show name="Kang" top="0" width=1169 height=2735 left=375 top=0 time=200 wait=false ]
[t1]
#강여진
진다영!!![t2][p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="3" face="4" ]
[chara_show name="Jin" top="0" width=1169 height=2735 left=375 top=0 time=200 wait=false ]
[t1]
#진다영
강여진!!![t2][p]
[_tb_end_tyrano_code]

[jump  storage="Chapter03_School_Club_02.ks"  target="*Chapter03_02"  ]
