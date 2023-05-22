[_tb_system_call storage=system/_Chapter01_School_Classroom_01.ks]

[hidemenubutton]

[playbgm  volume="80"  time="1000"  loop="true"  storage="Our_Story_Common_Classroom_01.wav"  ]
[playse  volume="40"  time="1000"  buf="0"  storage="Amb/Amb_Classroom_Cutoff_01.wav"  fadein="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
; 캐릭터 등장
[chara_new name="Jeon" storage="chara/Jeon_Sc/bin.png" zindex=1 jname="Jeon" width="1444" height="2735" ]

[chara_layer name="Jeon" part="body" id="1" storage="chara/Jeon_SC/Jeon_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="body" id="2" storage="chara/Jeon_SC/Jeon_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Jeon" part="body" id="3" storage="chara/Jeon_SC/Jeon_Body_Sc_03.png" zindex=20 ]
[chara_layer name="Jeon" part="body" id="4" storage="chara/Jeon_SC/Jeon_Body_Sc_04.png" zindex=20 ]

[chara_layer name="Jeon" part="face" id="1" storage="chara/Jeon_SC/Jeon_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="2" storage="chara/Jeon_SC/Jeon_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="4" storage="chara/Jeon_SC/Jeon_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="6" storage="chara/Jeon_SC/Jeon_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Jeon" part="face" id="8" storage="chara/Jeon_SC/Jeon_Face_Embarrass_Sc_01.png" zindex=20 ]

[chara_part name="Jeon" body="1" face="1" ]
[chara_show name="Jeon" time="100" top="0" left="100" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
그래서 너도 나랑 같은 서예부로 가는 걸로........[p]
[_tb_end_text]

[quake  time="200"  count="2"  hmax="3"  wait="false"  ]
[tb_start_text mode=1 ]
#&[sf.name]
아 좀! [l] 나는 서예 같은 건 관심이 없어![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="1" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
그러지 말고 나와 함께 벼루에 먹을 갈며 운기 조식을 하.... [p]
[_tb_end_text]

[playse  volume="130"  time="1000"  buf="1"  storage="SFX/Common_Sliding_door_open.wav"  ]
[tb_start_tyrano_code]
[chara_hide name="Jeon" time=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
드르륵 -                       쿵                                 [er]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#???
응?[p]
[_tb_end_text]

[tb_start_tyrano_code]
; 캐릭터 등장
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

[chara_show name="Kang" time="100" top="0" left="375" ]
[chara_part name="Kang" body="1" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
너희 아직 동아리에 들어가지 않은거야?[p]
#
??????????![p]
[_tb_end_text]

[tb_start_text mode=1 ]
#강여진
후후후...[l]둘 다 아직 어떤 동아리에 들어갈 지 정하지 못 했구나?[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="6" ]
[chara_show name="Jeon" time="1" top="0" left="-45" width="1004" height="1903" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_move name="Kang" time=1 width="813" height="1903" left="900" ]
[_tb_end_tyrano_code]

[quake  time="200"  count="4"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_text mode=1 ]
#전대용
아니! 나는 서예부에 들어가 있는데?![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="2" ]
[chara_part name="Jeon" body="4" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
아아! 그러지 말고 너네도 밴드부에 들어와! [l][r]재미있단 말이야![p]
[_tb_end_text]

[quake  time="200"  count="4"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="6" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
아니! 아쉽게도 난 다룰 수 있는 악기가 없는걸?[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" face="1" ]
[chara_part name="Jeon" body="4" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
내가 다 알려줄 수 있어! 그러지 말고 같이하자![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="4" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
응. 안. 해.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="4" ]
[chara_hide name="Jeon" time=1000 wait="false"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
칫...너무해...[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_text mode=1 ]
#
............[p]

[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="1" ]
[chara_move name="Kang" time=100 width="1169" height="2735" left="375" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
너는 어때? 분명 재미있을거야![p]
#&[sf.name]
어? 나?[p]
#강여진
혹시 다룰 수 있는 악기가 있어?[p]
#&[sf.name]
나....나는...[p]
#강여진
아! 그럼 수업이 끝나고 우리 동아리 방으로 찾아와! [l][r]어디인지 알고있어?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Common_UI_whoosh_01.wav"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[glink color="btn_21_yellow" target="l_yes_01" text="알긴 하는데..." face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="300" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_yellow" target="l_no_01" text="동아리..방..?" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="600" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*l_yes_01

[tb_start_tyrano_code]
[filter layer=all blur=0]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
잘 됐네! [l][r]이름을 붙혀놓았으니까 어디인지 바로 알거야![p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Ctr_Run_01.wav"  ]
[tb_start_tyrano_code]
#강여진
기다리고 있을게 꼭 와야돼! 있다봐!                   [er]
[_tb_end_tyrano_code]

[jump  storage="Chapter01_School_Classroom_01.ks"  target="*l_01"  ]
*l_no_01

[tb_start_tyrano_code]
[filter layer=all blur=0]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&[sf.name]
아..아니..?[p]
#강여진
4층 복도 왼쪽 과학실 바로 옆에 있어![l][r]이름을 붙혀놓았으니까 어디인지 바로 알거야![p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[tb_start_tyrano_code]
#강여진
기다리고 있을게 꼭 와야 돼! 있다봐![p]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Ctr_Run_01.wav"  ]
[jump  storage="Chapter01_School_Classroom_01.ks"  target="*l_01"  ]
*l_01

[tb_start_tyrano_code]
[chara_hide name="Kang" time="100" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&[sf.name]
.......[p]
거절할 새도 없이 그냥 가버렸어....[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="1" face="2" ]
[chara_show name="Jeon" time=100 top="0" left="362" width="1004" height="1903" wait="false" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
오....강여진..... [p]
#&[sf.name]
왜? 누군지 알아?[p]
[_tb_end_text]

[quake  time="400"  count="5"  hmax="5"  wait="false"  ]
[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="4" ]
[chara_move name="Jeon" time=1 top=0 left=100 width=1444 height=2735 wait=false ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
알지![p]
[_tb_end_text]

[quake  time="400"  count="5"  hmax="5"  wait="true"  ]
[playse  volume="65"  time="1000"  buf="0"  storage="SFX/Typing_Fast_01.wav"  ]
[tb_start_text mode=1 ]
#전대용
도내 최상위 S랭크급 쿨뷰티초미녀![p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&[sf.name]
으응...?[p]
[_tb_end_text]

[playse  volume="70"  time="1000"  buf="1"  storage="SFX/Typing_Fast_01.wav"  loop="true"  ]
[tb_start_tyrano_code]
#전대용
금발태닝양아치선배님도절대로가질수없던마성의매력을소유한2학년최고미녀게다가샴푸는무엇을사용하는지머리향기는말로설명이되지않지아프로디테의질투를.......[p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  fadeout="false"  ]
[quake  time="200"  count="2"  hmax="2"  wait="true"  vmax="3"  ]
[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="8" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#&[sf.name]
그만! 거기까지![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
엣헴....아무튼 그런 사람이 너랑 말을 하게 될줄이야...[l][r] 이 자식 대단한걸?[p]
#&[sf.name]
시끄러워! 난 그런 거 관심없어....[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#전대용
녀석 입으로는 그렇게 말해도 속으로는 강여진을 생각하고 있는거 아니야?[p]
#&[sf.name]
아 좀![p]
#전대용
후후.. 잘 해보라고! [l][r]그럼 난 이만.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_hide name="Jeon" time=100 wait=false]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
하...밴드 동아리라....[p]
그런거엔 관심이 없는데... [r]그래도 초대받았으니 한번 가볼까.... [p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="Chapter01_Lobby_01.ks"  target=""  ]
[s  ]
