[_tb_system_call storage=system/_Chapter01_home_01.ks]

*home

[hidemenubutton]

[mask  time="1"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  ]
[bg  time="10"  method="crossfade"  storage="BGI/Common_Black.jpg"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="SFX/Common_Alarm_Clock_01.wav"  loop="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
띠리리리- 띠리리리-[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Alarm_Clock_off_01.mp3"  ]
[tb_start_text mode=1 ]
탁-[p]
으으...시끄러워...![p]


[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="300"  method="fadeIn"  storage="BGI/Common_White_01.png"  ]
[bg  time="350"  method="fadeIn"  storage="BGI/Common_Black.jpg"  ]
[bg  time="450"  method="fadeIn"  storage="BGI/Common_White_01.png"  ]
[bg  time="600"  method="fadeIn"  storage="BGI/Common_Black.jpg"  ]
[bg  time="1000"  method="fadeIn"  storage="BGI/Common_White_01.png"  ]
[playbgm  volume="40"  time="2000"  loop="true"  storage="MySweethome_Scene_Home_01.wav"  fadein="true"  ]
[bg  time="3000"  method="fadeIn"  storage="BGI/Common_home_01.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
....[p]
.......................[p]
후... [p]
( 이상한 꿈이네... )[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="5"  wait="false"  ]
[tb_start_text mode=1 ]
#엄마
아들![p]
일어난거니!?[p]
#&[sf.name]
네에... 일어났어요...[p]
( 꿈이라기엔 너무 생생해... )[p]
( 지금도 꿈을 꾸고 있는 건가?? )[p]
( 마치 현실같이... )[p]
[_tb_end_text]

[font  size="40"  color="0xff0000"  face="SBB"  bold="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Emotion_Angry_roar_01.wav"  ]
[quake  time="300"  count="3"  hmax="5"  wait="false"  ]
[tb_start_text mode=1 ]
#엄마
아! 들! 늦는다니까!!!!!!!!!!!!![p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="100"  method="fadeIn"  storage="BGI/Common_Road_01.png"  cross="false"  ]
[playse  volume="30"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[wait  time="2000"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[resetfont  ]
[playse  volume="50"  time="1000"  buf="1"  storage="Amb/Amb_Road_01.wav"  fadein="true"  loop="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
아효.. 우리 엄마는 화가 많다니깐..?[p]
#전대용
어이 [emb exp="sf.name"] ~ 좋은 아침이지 않냐?[p]
[_tb_end_text]

[chara_show  name="전대용"  time="1000"  wait="false"  left="700"  top="250"  width="512"  height="832"  reflect="false"  storage="chara/7/전대용.png"  ]
[tb_start_text mode=1 ]
#전대용
내가 오늘 엄청 좋은 꿈을 꿨는데 말이지. [l][r] 쭉쭉빵빵 누님이 나를......[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&[sf.name]
꿈? 어라, 나도 분명...[p]
[_tb_end_text]

[stopse  time="1000"  buf="1"  ]
[playbgm  volume="100"  time="2000"  loop="true"  storage="Common_Backstage_cutoff_01.mp3"  fadein="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="Amb/Amb_Crowd_Loop_cutoff_01.wav"  loop="true"  fadein="true"  ]
[tb_hide_message_window  ]
[chara_hide  name="전대용"  time="100"  wait="false"  pos_mode="false"  ]
[bg  time="1000"  method="fadeIn"  storage="BGI/Common_White_01.png"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#???
잘 해낼%있@까?               [er]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="500"  method="vanishIn"  storage="BGI/Common_White_01.png"  ]
[bg  time="500"  method="vanishIn"  storage="BGI/Common_Black.jpg"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#???
너무 긴장하@#마! 원래 하던 %@#로만 하면 되!%>거야!              [er]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="500"  method="vanishIn"  storage="BGI/Common_White_01.png"  ]
[bg  time="500"  method="vanishIn"  storage="BGI/Common_Black.jpg"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
네가 선택한 길이니까!                 [er]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="500"  method="vanishIn"  storage="BGI/Common_White_01.png"  ]
[bg  time="500"  method="vanishIn"  storage="BGI/Common_Black.jpg"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Mic_Feedback_cutoff_01.wav"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#사회자
자! 다$을 소개하도@ 하겠습#다~!!    [er]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#사회자
이번 순!#는! ----------------!!!             [er]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="1"  storage="Amb/Amb_Road_01.wav"  fadein="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="MySweethome_Scene_Home_01.wav"  fadein="true"  ]
[bg  time="1000"  method="vanishIn"  storage="BGI/Common_White_01.png"  ]
[bg  time="1000"  method="fadeIn"  storage="BGI/Common_Road_01.png"  cross="false"  ]
[chara_show  name="전대용"  time="1000"  wait="false"  left="700"  top="250"  width="512"  height="832"  reflect="false"  storage="chara/7/전대용.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#전대용
야! 야! [emb exp="sf.name"]![p]
#
... ... ......[p]
#전대용
표정이 왜 그래? [l][r]아! 설마 너도....[p]
[_tb_end_text]

[quake  time="200"  count="2"  hmax="3"  wait="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
아니야 이 변태야!  [l][r] 아무튼 너는 입이 문제라니깐?[p]
#전대용
하여간 너 놀릴 때가 제일 재밌어[p]
#&[sf.name]
한 번만 더 농담했다간 경찰 아저씨가 잡아가도 모른다?[p]
#전대용
아 알겠어 알겠어~[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="전대용"  time="100"  wait="false"  pos_mode="false"  ]
[bg  time="1000"  method="vanishIn"  storage="BGI/Common_Black.jpg"  ]
[chara_show  name="전대용"  time="1000"  wait="false"  left="700"  top="250"  width="512"  height="832"  reflect="false"  storage="chara/7/전대용.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
전대용 전학을 오자마자 친해지게 된 친구다.[p]
재미있고 정보가 많지만...[p]
[_tb_end_text]

[chara_hide  name="전대용"  time="100"  wait="false"  pos_mode="false"  ]
[tb_hide_message_window  ]
[bg  time="1500"  method="fadeIn"  storage="BGI/Common_Road_01.png"  cross="false"  ]
[font  size="40"  color="0xff8f8f"  face="SBB"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
...변태다...[p]
[_tb_end_text]

[tb_hide_message_window  ]
[resetfont  ]
[chara_show  name="전대용"  time="1000"  wait="false"  left="700"  top="250"  width="512"  height="832"  reflect="false"  storage="chara/7/전대용.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#전대용
응? [l]그나저나 너 동아리는 좀 알아봤어?[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="전대용"  time="10"  wait="true"  pos_mode="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Common_UI_whoosh_01.wav"  ]
[tb_start_tyrano_code]
[glink color="btn_21_yellow" target="L_yes" text="알아보긴 했는데..." face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="300" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_yellow" target="L_no" text="응? 그게 무슨 말이야?" face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="600" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*L_no

[chara_show  name="전대용"  time="1000"  wait="false"  left="700"  top="250"  width="512"  height="832"  reflect="false"  storage="chara/7/전대용.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#전대용
너도 전학 온 지 일주일이나 지났잖아?[l][r]이제 동아리에 들어가야지![p]
#&[sf.name]
동아리에? 왜?[p]
#전대용
나 참..진짜 모르는거야?[l][r]우리 학교는 동아리가 선택이 아니고 필수 참여잖아![p]
[_tb_end_text]

[quake  time="200"  count="2"  hmax="3"  wait="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
뭐? 그게 정말이야?![p]
#전대용
그래! 전교생이 동아리에 참여한다고![p]
그 말은 즉, 전교생 중 동아리를 가입하지 않는 사람이.....[l][r]너 하나뿐이겠네[p]
[_tb_end_text]

[jump  storage="Chapter01_home_01.ks"  target="*L_yes"  ]
*L_yes

[chara_show  name="전대용"  time="1000"  wait="false"  left="700"  top="250"  width="512"  height="832"  reflect="false"  storage="chara/7/전대용.png"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
글쎄.. 나는 딱히 취미도 없고...[l][r]하고 싶은 것도 별로 없는 걸....[p]
#전대용
그러면 서예부는 어때?[p]
#주인공
갑자기 분위기 서예부?[p]
#전대용
서예가 얼마나 재밌는데![l][r]게다가 거기 부장 누나가 가슴이 아주 그냥....흐흐...[p]
[_tb_end_text]

[quake  time="200"  count="2"  hmax="3"  wait="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
" 경찰아저씨! 여기에요! "[p]
[_tb_end_text]

[playse  volume="40"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_ctr_run_01.wav"  ]
[tb_start_text mode=1 ]
#전대용
야! 같이 가![p]
[_tb_end_text]

[stopbgm  time="2000"  fadeout="true"  ]
[chara_hide  name="전대용"  time="100"  wait="false"  pos_mode="false"  ]
[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="Chapter01_School_Classroom_01.ks"  target=""  ]
[s  ]
