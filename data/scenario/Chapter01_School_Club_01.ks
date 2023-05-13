[_tb_system_call storage=system/_Chapter01_School_Club_01.ks]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[tb_start_text mode=1 ]
#???
꺄악-!!!!!!![p]
[_tb_end_text]

[tb_hide_message_window  ]
[playbgm  volume="85"  time="1000"  loop="true"  storage="Common_School_Club_01.wav"  fadein="false"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_show_message_window  ]
[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Body_Fall_01.wav"  ]
[tb_start_text mode=1 ]
#&[sf.name]
( 헉-! 큰일났... )[p]
[_tb_end_text]

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

[chara_show name="Kang" time="100" top="0" left="375" ]
[chara_part name="Kang" body="1" face="1" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
와줬구나! 어서 와![p]
#???
뭐야! [l]변태같이 다 엿 듣고 있던거야?![p]
#&[sf.name]
아니 나는.......[p]
[_tb_end_text]

[quake  time="800"  count="10"  hmax="8"  wait="false"  vmax="6"  ]
[playse  volume="40"  time="1000"  buf="0"  storage="SFX/Emotion_Anoying_Dog_growl_01.wav"  ]
[tb_start_text mode=1 ]
#???
시끄러! 변태! 호색한! 대머리![p]
[_tb_end_text]

[stopse  time="500"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" face="4"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
그만! 내가 불러서 온 친구란 말이야![p]
#???
이해할 수 없어! 왜 우리 대화를 엿듣고 있던건데!?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
찐따! 찌질이! 버러지! 거지![p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="false"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" face="5"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
진다영![p]
[_tb_end_text]

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

[tb_start_tyrano_code]
[chara_part name="Jin" body="1" face="4" wait=false]
[chara_show name="Jin"  time="100" top="0" left="375" wait=false ]
[chara_hide name="Kang" time="0" wait=false]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
왜! [l]왜 소리를 질러![p]
#강여진
앞으로 우리랑 같이 밴드부를 할 친구란 말이야[l][r]같은 부원이 하는 이야기를 들을 수도 있지![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="4" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
싫어! 나는 이런 변태랑은 밴드부 절대 못 해! 안 해![p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
저기...[p]
[_tb_end_text]

[tb_start_tyrano_code]
; 설나희 등장
[chara_new name="Sul" storage="chara/Sul_Sc/bin.png" zindex=1 jname="Sul" width="1169" height="2735" ]

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
[chara_part name="Sul" body="1" face="1"]
[chara_show name="Sul"  time="50" top="0" left="1106" wait="false" ]
[chara_hide name="Jin" time="0" wait=false]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#설나희
나는 좋다고 생각해...[p]

[_tb_end_text]

[tb_start_text mode=1 ]
#진다영
뭐어? 진심으로 하는말이야?![p]
#설나희
다른 방법이...있는 건 아니잖아..?[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_move name="Sul" time=50 width=813 height=1903 left=960 wait="false" ]
[chara_part name="Jin" body="1" face="8"]
[chara_show name="Jin"  time="50" top="0" left="146" width="813" height="1903" wait="false" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
그...그렇지만...[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="4" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
...하! 거기 너![p]
#&[sf.name]
저...저요...?[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="4" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
그래! [l]변태같이 엿듣는 것 말고 할 줄 아는 게 있긴 해?[p]
#&[sf.name]
나...나는...[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="false"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="1" ]
[chara_show name="Kang"  time="50" top="0" left="553" width="813" height="1903" wait="false" ]
[chara_move name="Sul" time=50 width=813 height=1903 left=1106 wait="false" ]
[chara_part name="Jin" body="1" face="4" ]
[chara_move name="Jin" time=50 width=813 height=1903 left=0 wait="false" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
보컬! [l]보컬을 맡을 거야![p]
#진다영
뭐? 보컬?! [l]노래라면 이미 네가 하고 있잖아[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="1" ]
[chara_part name="Kang" body="3" face="8" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
나는 악기도 함께 연주하고 있잖아 [l][r]나 혼자 두 가지를 하는 건 너무 어렵단 말이야[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" face="8" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
으이...그래도...!!![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Sul" body="1" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#설나희
나는 좋다고 생각해...[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="1" ]
[chara_part name="Jin" face="4" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
네 생각은 어때? 같이 할거지?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Common_UI_whoosh_01.wav"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[glink color="btn_21_yellow" target="l_yes_01" text="까짓것 한번 해보지 뭐!" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="300" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_yellow" target="l_no_01" text="역시..못 하겠어" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="600" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*l_yes_01

[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
좋아! 잘 생각했어![p]
#진다영
...그치만 이건 너무 억지잖아! [l][r]폐부 막아보겠다고 저런 변태랑...헙![p]
#&[sf.name]
응?[l]그게 무슨말..........[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="8" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
하하...[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Sul" body="1" face="1" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#설나희
규정상 동아리 인원이 4명 이상 되어야 하거든.....[p]
지금 우리는 폐...[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
잠깐....뭐라고...?[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
맞아! 하마터면 폐부 될 뻔했다구 [l][r]네가 와줘서 정말 다행이야![p]
#&[sf.name]
잠깐! 그런 말은 없었잖아 나는...[p]
#강여진
그러니까... 할거지?[p]
#&[sf.name]
...[p]
.........[p]
으...응...[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
변태...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&[sf.name]
아니! 그런 게 아니라![p]
#강여진
아싸![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_hide_all time="100"]
[chara_part name="Kang" body="2" face="1" ]
[chara_show name="Kang" time="100" width="1169" height="2735" left="375" top="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
앞으로 잘 부탁해! 우리 보컬![p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide_all time=1 wait=false]
[_tb_end_tyrano_code]

[jump  storage="Chapter02_Office_01.ks"  target="*office_01"  ]
[s  ]
*l_no_01

[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="8" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
에...그치만...[p]
#진다영
거봐! 결국 안 하게 될 거라니깐?![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="1" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
조금이라도 기대한 내가 바보지[p]
[_tb_end_text]

[quake  time="300"  count="2"  hmax="3"  wait="true"  vmax="3"  ]
[tb_start_text mode=1 ]
#&[sf.name]
잠깐! 세상이 멸망할 것 같은 이 분위기 뭔데![p]
나 한 명쯤 안 한다고 이렇게까지?[p]
#설나희
...동아리는 일정 정원을 채우지 못하면 강제적으로 폐부되거든...[p]
...내일까지 4명이 모이지 않는다면...[p]
#&[sf.name]
...........[p]
#강여진
그러지 말고 같이 하자! 응? [l][r]우리는 네가 필요하단 말이야...[p]
#&[sf.name]
나는...[p]
[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Common_UI_whoosh_01.wav"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[glink color="btn_21_yellow" target="l_yes_02" text="그래 한번 해보지 뭐!" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="300" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_yellow" target="l_no_02" text="아직 마음의 준비가..." face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="600" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*l_yes_02

[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="2" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
역시! 그럴 줄 알았어!![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="4" ]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
이건 너무 억지잖아! [l]폐부 막아보겠다고 저런 변태랑..![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="4" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
그렇지만 지금부터 우리 동아리에 맴버라구?[p]
#설나희
난...괜찮다고 생각해...[p]
[_tb_end_text]

[quake  time="300"  count="2"  hmax="3"  wait="true"  vmax="3"  ]
[tb_start_text mode=1 ]
#진다영
설나희! 너까지!!!![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="2" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
그럼 이야기는 끝난거네! 다들 동의한거다?![p]
#진다영
잠깐 아직 나는.....![p]
#강여진
앞으로 잘 부탁해! 우리 보컬![p]
[_tb_end_text]

[quake  time="1000"  count="5"  hmax="4"  wait="false"  vmax="4"  ]
[tb_start_tyrano_code]
[chara_hide_all time="100"]
[chara_part name="Jin" body="3" face="6"]
[chara_show name="Jin" time="100" width="1169" height="2735" left="375" top="-100"]
[_tb_end_tyrano_code]

[playse  volume="20"  time="1000"  buf="0"  storage="SFX/Metal_Wood_Debris_01.wav"  ]
[tb_start_text mode=1 ]
#진다영
내 이야기 아직 안끝났어어어어!!![p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide_all time=1 wait=false]
[_tb_end_tyrano_code]

[jump  storage="Chapter02_Office_01.ks"  target="*office_01"  ]
[s  ]
*l_no_02

[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Jin" body="1" face="4"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
거봐! 시간 낭비만 한거잖아![p]

[_tb_end_text]

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[playse  volume="70"  time="1000"  buf="2"  storage="SFX/Lightning_designed_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="5"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
아냐! 네가 계속 소리를 지르니까 그러는 거 아니야![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Sul" body="1" face="7"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#설나희
그럴지도.....[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="1" face="8"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
뭐? 설나희 너까지![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Sul" body="1" face="1"]
[chara_part name="Jin" body="1" face="4"]
[chara_part name="Kang" body="2" face="8"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
부탁이야! 우리는 네가 정말 필요해 [l][r]너를 보는 순간부터 같이 하고 싶었단 말이야 응?[p]
[_tb_end_text]

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_text mode=1 ]
#진다영
우리가 아니고 네가 필요한거겠지![p]
#설나희
저것도 맞는 말이긴 하지.....[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#강여진
할거지!?[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_hide_all time="100"]
[chara_part name="Kang" body="2" face="1"]
[chara_show name="Kang" time="100" width="1169" height="2735" left="375" top="0"]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Cloth_movement_02.wav"  ]
[tb_start_text mode=1 ]
#
덥썩-[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&[sf.name]
( ............어? )[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="8"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
에...?????[p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_hide_all time="100"]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="fadeIn"  storage="BGI/Common_Black.jpg"  ]
[tb_show_message_window  ]
[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Emotion_Shame_Kettle_Steam_01.wav"  ]
[tb_start_text mode=1 ]
#
손.....손을 잡았어..... [p]
여자 손을 잡아보는 건....처음이야..... [p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Emotion_Heart_Beat_01.wav"  loop="true"  ]
[tb_start_text mode=1 ]
#
부...부드러워..... [p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="10"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_start_tyrano_code]
[chara_show name="Kang" time="0" top="0" left="553" width="813" height="1903" ]
[chara_show name="Sul"  time="0" top="0" left="1106" width="813" height="1903" ]
[chara_show name="Jin" time="0" top="1" left="1" width="813" height="1903" ]
[chara_part name="Jin" body="1" face="8"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
나는.....나는..........나는.......[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="2"  storage="UI/Common_UI_whoosh_01.wav"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
[filter layer=all blur=5 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[glink color="btn_21_red" target="l_yes_03" text="무슨 노래든 맡겨만 줘!!" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="300" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_red" target="l_yes_03" text="무조건! 무조건 할게..!" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="600" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*l_yes_03

[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="2"]
[chara_part name="Jin" body="1" face="8"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#강여진
역시! 그럴 줄 알았어![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="8"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
에? 너 방금...손...![p]
#강여진
우리 동아리에 들어온 걸 환영해!![p]
#진다영
아니...손...[p]
#강여진
앞으로 잘 부탁해! 우리 보컬![p]
[_tb_end_text]

[tb_start_tyrano_code]
[chara_part name="Sul" body="2" face="2"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#설나희
난...좋다고 생각해...[p]
[_tb_end_text]

[quake  time="500"  count="3"  hmax="2"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[chara_hide_all time="100"]
[chara_part name="Jin" body="3" face="6"]
[chara_show name="Jin" time="100" width="1169" height="2735" left="375" top="-100"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#진다영
설나희...! 너까지![p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide_all time=1 wait=false]
[_tb_end_tyrano_code]

[jump  storage="Chapter02_Office_01.ks"  target="*office_01"  ]
[s  ]
