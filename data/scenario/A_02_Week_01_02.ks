[_tb_system_call storage=system/_A_02_Week_01_02.ks]

*in01

[stopbgm  time="2000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="CG/Kang_CG_02.png"  ]
[tb_cg  id="kang02"  ]
[playse  volume="40"  time="1000"  buf="4"  storage="Amb/Amb_Shool_Club_01.wav"  fadein="true"  loop="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="3"  storage="Amb/Amb_Room_Tone_02.wav"  loop="true"  fadein="true"  ]
[playse  volume="80"  time="2000"  buf="3"  storage="SFX/Common_Beautiful_Bell_Tree_01.wav"  loop="true"  fadein="true"  ]
[playse  volume="80"  time="1000"  buf="0"  storage="SFX/Emotion_Heart_Beat_01.wav"  loop="true"  fadein="true"  ]
[tb_start_tyrano_code]

#
[t1]여진이는 연한 갈색 머리를 휘날리며 내 앞에 서 있었다.[t2][p]

#
[t1]고개를 살짝 내리자, 눈이 마주쳤다.[t2][p]

#
[t1]머리카락과 비슷한 연한 갈색 눈동자.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="90"  time="1000"  buf="0"  storage="SFX/Heart_Beat_Fast_02.wav"  fadein="false"  loop="true"  ]
[tb_start_tyrano_code]

#
[t1]여진이는 두 손을 앞으로 모은 채 내 손을 붙잡았다.[t2][p]

#
[t1]워낙 빠르게 다가온지라 바람에 휘날린 머리카락이 아직 [r]떨어지고 있었다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="1"  storage="SFX/Common_Clock_Tictok_Slow_Highcut_01.wav"  fadein="false"  loop="true"  ]
[tb_start_tyrano_code]

#
[t1]머리카락이 천천히 떨어지고 있는 건지 시간이 느리게[r]흘러가는 건지.[t2][p]

#
[t1]어쩌면 심장이 빨리 뛰는 바람에 시간이 느리게 흘러간다 [r]느끼고 있을지도 모르겠다.[t2][p]

#
[t1]무언가를 말하려는 듯 여진이의 입술이 서서히 움직이기 [r]시작했다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

#강여진
[t1]할거지?[t2][p]

#&[sf.name]
[t1]( 여자의 손…엄마 손을 제외하고는 처음 잡아보는데… )[t2][p]

#&[sf.name]
[t1]( 이렇게 예쁜 여자애가 내 손을 잡았어…따뜻하고… )[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="3"  ]
[stopse  time="1000"  buf="4"  ]
[playse  volume="70"  time="1000"  buf="3"  storage="SFX/Common_Emotion_Question_01.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]( …거칠어? )[t2][p]
#
[t1]무엇 하나 알지도 못한 채 이렇게 결정해도 되는 건가[r]싶었지만...[t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_show_message_window  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Common_School_Club_01.wav"  ]
[playse  volume="70"  time="1000"  buf="4"  storage="Amb/Amb_Shool_Club_01.wav"  loop="true"  fadein="true"  ]
[tb_start_tyrano_code]
[kang_ill]
[jin_ill]
#&[sf.name]
[t1]자…잘 부탁…드립니다…!![t2][p]
[chara_part name="Kang" body="2" face="2"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]좋아! 결정된 거다![t2][p]
#진다영
[t1]정말로 동아리에 가입시킬거야? 진짜?[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[kang_ill]
[chara_part name="Kang" body="2" face="1"]
#강여진
[t1]나는 교무실 갔다 올 테니 이야기 좀 나누고 있어! 오늘 안에 등록해야 해![t2][p]
[chara_hide_all time=300 wait=wait]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Wood_Walk_01.wav"  ]
[tb_start_tyrano_code]
[jin_ill]
[chara_part name="Jin" body="2" face="3"]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]
#진다영
[t1]자...잠깐 기다려! 같이 가![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Wood_Run_01.wav"  ]
[tb_start_tyrano_code]
[jin_ill]
[chara_hide name="Jin" time=300 wait=false]
#
[t1]도망치듯 나간 여진이를 진다영이 뒤쫓아 나갔다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="0"  fadeout="true"  ]
[playse  volume="120"  time="1000"  buf="4"  storage="Amb/Amb_Room_Tone_02.wav"  fadein="true"  loop="true"  ]
[tb_start_tyrano_code]
[sul_ill]
#
[t1]시끄럽기만 하던 동아리실에는 어느새 고요함이 맴돌았다.[t2][p]
#&[sf.name]
[t1]...[t2][p]
[chara_part name="Sul" body="1" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]
#설나희
[t1]...[t2][p]
#&[sf.name]
[t1]안녕...하세요…?[t2][p]
#
[t1]어색한 분위기 속 인사를 건네자, 고개를 살짝 돌렸다.[t2][p]
#
[t1]무언가 말을 하려나 싶었지만, 말 없이 쳐다만 보고 있었다.[t2][p]
#&[sf.name]
[t1]( 이 사람 무서워… )[t2][p]
[chara_hide name="Sul" time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="0"  storage="Amb/Amb_Cold_Wind_01.wav"  fadein="true"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Whoosh_Cartoon_Change_Page_01.wav"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Door_Open_Squeak_01.wav"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Office_Bgi_01.png"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Office_01.wav"  fadein="true"  loop="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[kang_ill]
[jin_ill]
[chara_part name="Kang" body="1" face="5"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]그러니까 너도 직접 봤잖아! 왜 계속 반대를 하는 거야![t2][p]
[chara_part name="Kang" body="1" face="4"]
[chara_move name="Kang" time=300 wait=false top="0" left="146" width="813" height="1903"]
[chara_part name="Jin" body="1" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="960" width="813" height="1903"]
#진다영
[t1]아직 대화도 제대로 나눠보지도 못했고! 무엇보다[r]음흉해서 싫어![t2][p]
[chara_part name="Kang" body="1" face="5"]
[chara_part name="Jin" body="1" face="4"]

#강여진
[t1]그럴만한 이유가 있었잖아! 왜 계속 고집을 부리는 거야![t2][p]
[chara_part name="Kang" body="1" face="5"]
[chara_part name="Jin" body="3" face="4"]

#진다영
[t1]고집을 부리는 건 내가 아니라 너야 바보야![t2][p]
[chara_hide name="Kang" time=300 wait=false]
[chara_hide name="Jin" time=300 wait=false]

#한갑수
[t1]얘들아…싸울 거면 나가서 싸우고 와라. 나도 할 일 많다![t2][p]
[chara_part name="Kang" body="1" face="8"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]아! 아니에요! 저희 동아리 신입 부원 때문에 왔습니다![t2][p]

#한갑수
[t1]원래 있던 애들 나간 지 좀 되지 않았나? 이번에는 누가[r]들어온 거야?[t2][p]
[chara_part name="Kang" body="1" face="1"]

#강여진
[t1]선생님도 아실걸요? 그 수업 중에 이상한 소리 지른 애요![t2][p]
[chara_part name="Kang" body="2" face="2"]

#강여진
[t1]전학을 온 지 얼마 안 돼서 밴드부가 있는지 몰랐는데 꼭 [r]들어오고 싶다고 했어요![t2][p]

#진다영
[t1]아니 언제 그랬어! 그런 말 없었잖아! 강여진 너…[t2][p]
[chara_part name="Kang" body="1" face="5"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]들어오겠다고 말하는 거 너도 봤잖아! 맞아 아니야![t2][p]
[chara_part name="Kang" body="1" face="4"]
#진다영
[t1]아니 그건 네가…[t2][p]
[chara_part name="Kang" body="1" face="1"]
#한갑수
[t1]뭐? 하하하! 걔가 동아리에 들어온다고?[t2][p]
#한갑수
[t1]그놈 목소리 하나는 우렁차서 노래 부르면 기가 막힐 것 같긴 하다만…[t2][p]

#한갑수
[t1]여진이는 들어온다고 하고 다영이는 아니라고 말하고.[r]부원들끼리 합의된 거 맞아?[t2][p]
[chara_part name="Kang" body="1" face="8"]

#강여진
[t1]그…그건…[t2][p]

[chara_part name="Kang" body="1" face="6"]
#한갑수
[t1]어쨌든 재미있을 것 같으니 그 친구가 동아리에 들어오는 걸 허락하마.[t2][p]
[chara_part name="Kang" body="1" face="6"]
#한갑수
[t1]단, 조건이 하나 있다.[t2][p]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Kang" body="2" face="8"]
[chara_show name="Kang" time=300 wait=false top="0" left="375" width="1169" height="2735"]
#강여진
[t1]조건…이요…?[t2][p]
[chara_hide name="Kang" time=300 wait=false]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Shool_Club_01.wav"  fadein="true"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[sul_ill]
#
[t1]5분 정도 긴 침묵이 이어졌다.[t2][p]
#
[t1]어색한 분위기가 이어지자, 말을 걸어 보기 위해 이야기를[r]꺼냈다.[t2][p]

#&[sf.name]
[t1]저기… 이름이 설나희...[t2][p]
[chara_part name="Sul" body="1" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]

#설나희
[t1]…[t2][p]

#&[sf.name]
[t1]혹시 몇 학년이세요…?[t2][p]

#설나희
[t1]…3학년…[t2][p]

#&[sf.name]
[t1]누나라고 불러도 될까요…?[t2][p]
[chara_part name="Sul" body="3" face="1"]

#설나희
[t1]…응…[t2][p]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Crow_Caw_01.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]( 틀렸어…대화가 두 마디 이상 진행되질 않아… )[t2][p]
#&[sf.name]
[t1]( 누가 좀 구해줘… ) [t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[tb_start_tyrano_code]
["sul_ill"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide name="Sul" time=300 wait=false]

#
[t1]드르륵-[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
["jeon_ill"]
#
[t1]그때 동아리실 문이 열리며 뜻밖의 손님이 찾아왔다.[t2][p]
[chara_part name="Jeon" body="2" face="1"]
[chara_show name="Jeon" time=300 wait=false top="0" left="362" width="1004" height="1903"]

#전대용
[t1]실례합니다.[t2][p]

#&[sf.name]
[t1]어? 대용이? 여긴 무슨 일이야?[t2][p]
[chara_part name="Jeon" body="2" face="6"]

#전대용
[t1]오! [emb exp="sf.name"]! 결국 가입해 버린 거냐고?[t2][p]
[chara_part name="Jeon" body="1" face="1"]

#전대용
[t1]별건 아니고 잠깐 필요한 게 있어서 찾아보러 왔지. [r]혹시 마이크 남는 거 있어?[t2][p]

#&[sf.name]
[t1]마이크? 나는 잘 모르겠는데?[t2][p]
[chara_part name="Jeon" body="4" face="8"]

#전대용
[t1]아 그래? 흠…[t2][p]
[chara_hide name="Jeon" time=300 wait=false]

#
[t1]잠시 고민하던 대용이는 옆에 있던 나희누나에게 말을[r]건넸다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["jeon_ill"]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Common_Door_Noke_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Jeon" body="2" face="2"]
[chara_show name="Jeon" time=300 wait=false top="0" left="362" width="1004" height="1903"]

#전대용
[t1]헤헤 누나 안녕하세요! 혹시 마이크 남는 거 있나요?[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[sul_ill]
[jeon_ill]
[chara_hide name="Jeon" time=300 wait=false]
[chara_part name="Sul" body="2" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]

#설나희
[t1]없어.[t2][p]
#전대용
[t1]없어요?[t2][p]
[chara_part name="Sul" body="2" face="1"]
#설나희
[t1]없어.[t2][p]
#전대용
[t1]아 있었는데?[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Text_Kick_01.wav"  ]
[tb_start_tyrano_code]
[chara_hide name="Sul" time=300 wait=false]
[chara_part name="Sul" body="2" face="4"]
[chara_show name="Sul" time=300 wait=false top="0" left="375" width="1169" height="2735"]
#설나희
[t1]그냥 없어.[t2][p]
[chara_hide name="Sul" time=300 wait=false]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="60"  time="1000"  buf="1"  storage="Amb/Amb_Cold_Wind_01.wav"  loop="true"  fadein="true"  ]
[tb_start_tyrano_code]
#
[t1]...[t2][p]
[chara_part name="Jeon" body="3" face="8"]
[chara_show name="Jeon" time=300 wait=false top="0" left="362" width="1004" height="1903"]
#전대용
[t1][emb exp="sf.name"]. 가볼 게 내일 봐![t2][p]
#&[sf.name]
[t1]어...들어가![t2][p]
[chara_hide name="Jeon" time=300 wait=false]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]대용이는 나에게 인사를 건네는 척하며 나희 누나를 슬며시 바라봤다.[t2][p]
#
[t1]나가는 뒷모습이 어쩐지 쓸쓸해 보였다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[sul_ill]
[chara_part name="Sul" body="1" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]

#설나희
[t1]…저기[t2][p]
#설나희
[t1]친구야…?[t2][p]

#&[sf.name]
[t1]네. 전학 와서 사귀게 된 친구예요.[t2][p]

#설나희
[t1]…[t2][p]

#&[sf.name]
[t1]왜요...?[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["sul_ill"]
[_tb_end_tyrano_code]

[playse  volume="40"  time="1000"  buf="0"  storage="SFX/Common_Whoosh_Horror_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="9"]
[chara_move name="Sul" time=300 wait=false top="0" left="375" width="1169" height="2735"]

#설나희
[t1]…기분나빠…[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["kang_ill"]
["jin_ill"]
["sul_ill"]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]그때 여진이와 다영이가 동아리실에 들어왔다.[t2][p]
[chara_hide_all time=300 wait=false]
#
[t1]한껏 들뜬 모습으로 밝게 웃으며 들어오늘 여진이.[t2][p]
#
[t1]그 뒤로 어딘가 잔뜩 불만이 있는 듯한 표정의 다영이는[r]보였다.[t2][p]
[chara_part name="Kang" body="2" face="2"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]축하해! 앞으로 동아리를 함께 하게 돼서 기뻐![t2][p]
[chara_part name="Kang" body="2" face="2"]
[chara_move name="Kang" time=300 wait=false top="0" left="146" width="813" height="1903"]
[chara_part name="Jin" body="1" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="960" width="813" height="1903"]

#진다영
[t1]그게 무슨 소리야! 아직 아니거든?[t2][p]
[chara_part name="Kang" body="1" face="4"]
[chara_show name="Kang" time=300 wait=false top="0" left="146" width="813" height="1903"]
[chara_part name="Jin" body="1" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="960" width="813" height="1903"]

#강여진
[t1]난 선생님이 [emb exp="sf.name"]의 가입을 허락한 걸로 들었는걸?[t2][p]
[chara_part name="Kang" body="1" face="4"]
[chara_show name="Kang" time=300 wait=false top="0" left="146" width="813" height="1903"]
[chara_part name="Jin" body="3" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="960" width="813" height="1903"]
#진다영
[t1]전혀 아니거든? 듣고 싶은 대로만 듣는 것 같은데 내가[r]다시 이야기해 줘?![t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[tb_start_tyrano_code]
["sul_ill"]
["kang_ill"]
["jin_ill"]
[chara_part name="Sul" body="1" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]
#설나희
[t1]…후[t2][p]
#설나희
[t1]교무실 다녀온 거 맞아...?[t2][p]
[chara_hide name="Sul" time=300 wait=false]
[chara_part name="Kang" body="1" face="1"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]그럼![t2][p]
[chara_part name="Kang" body="2" face="2"]
#강여진
[t1]가입을 허락하는 대신 간단한 테스트를 볼 거라고 말했어![t2][p]
#&[sf.name]
[t1]테스트…?[t2][p]

[chara_part name="Kang" body="3" face="7"]
#강여진
[t1]응! 신입이 들어오는 것도 좋지만 제대로 검증되지 않은 것도 사실이니까.[t2][p]

[chara_part name="Kang" body="3" face="1"]
#강여진
[t1]다영이의 말도 일리가 있다고 하시더라고.[t2][p]

#강여진
[t1]그래서 일종의 테스트를 본다고 말씀하셨어![t2][p]
[chara_hide name="Kang" time=300 wait=true]
[chara_part name="Jin" body="3" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="375" width="1169" height="2735"]

#진다영
[t1]변태 너를 못 믿는다는 거지![t2][p]

#설나희
[t1]…오디션인가…[t2][p]
[chara_hide name="Jin" time=300 wait=true]
[chara_part name="Kang" body="1" face="1"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]조심하는 게 좋을걸? 너를 잘 아는 선생님이니까.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["kang_ill"]
#&[sf.name]
[t1]누구신데 나를...?[t2][p]
[chara_part name="Kang" body="1" face="2"]
[chara_move name="Kang" time=300 wait=false top="0" left="375" width="1169" height="2735"]

#강여진
[t1]한갑수쌤![t2][p]
#&[sf.name]
[t1]뭐…뭐?![t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["kang_ill"]
["jin_ill"]
[chara_hide_all time=300 wait=false]
[chara_part name="Jin" body="1" face="2"]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]

#진다영
[t1]너 갑수쌤 수업에서 소리 질렀다며? 선생님이 아-주[r]좋아하시던데?[t2][p]
[chara_hide_all time=300 wait=false]
[chara_part name="Kang" body="2" face="2"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]아냐. 선생님께 너라고 말씀드리니까 엄청나게[r]좋아하시면서 재미있을 것 같다고 말씀하셨어![t2][p]
[chara_hide_all time=300 wait=false]

#
[t1]여진이와 다영이의 말을 듣던 나는 그때의 일이 다시[r]떠올라 잠시 숨을 골랐다.[t2][p]

#
[t1]아직 선생님들의 성함을 잘 모르지만, 단 한 명만큼은[r]정확하게 기억한다.[t2][p]

#&[sf.name]
[t1]( 그런데 그 이름이 왜 여기서 나오냐고... )[t2][p]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[tb_start_tyrano_code]
["kang_ill"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#한갑수
[t1]엣헴![t2][p]
[chara_part name="Kang" body="1" face="8"]
[chara_show name="Kang" time=300 wait=false top="0" left="375" width="1169" height="2735"]

#강여진
[t1]어? 선생님 언제 오셨어요?[t2][p]

#한갑수
[t1]방금 막 올라왔다.[t2][p]
#한갑수
[t1]무슨 이야기를 그리하는지 내가 들어오는 것도 모르고[r]이야기하더구나.[t2][p]
[chara_hide name="Kang" time=300 wait=false]

#
[t1]선생님과 눈이 마주쳤다. 등줄기에서 식은땀이 흐르는[r]듯했다.[t2][p]

#한갑수
[t1]하하하! 이 녀석 수업 시간에 그리 졸더니 밤에 잠은 잘[r]자나?[t2][p]


#&[sf.name]
[t1]죄...송합니다...[t2][p]

#한갑수
[t1]아무튼! 여진이의 말처럼 동아리 부원이 필요한 상황이지만,[t2][p]

#한갑수
[t1]다영이의 말처럼 아무나 받아들일 수도 없는 노릇이지.[t2][p]

#한갑수
[t1]따라서 평소 보던 오디션은 생략하는 대신 쪽지 시험 점수로 너를 판단하겠다.[t2][p]

#한갑수
[t1]동아리 활동도 좋지만 우선 학생이잖아?[t2][p]

#한갑수
[t1]상황이 상황인 만큼 학생의 본분인 공부로 너를 판단할 거야.[t2][p]

#한갑수
[t1]내일이 쪽지 시험 날이지? [emb exp="sf.name"], 넌 쪽지 시험 점수를[r]매주 나에게 가져오도록.[t2][p]

#한갑수
[t1]혹시 궁금한 거 있나?[t2][p]

#
[t1]...[t2][p]

#한갑수
[t1]그럼, 이야기는 전부 다 했으니 난 이만 간다. 수고들 해라.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="45"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[stopse  time="4000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]

#
[t1]그렇게 자기 할 말만 열심히 하던 한갑수 선생님은 다시 [r]교무실로 돌아가셨다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["kang_ill"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="1"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]잘 됐다. 그래도 오디션보다는 쪽지 시험이 좋지 않을까?[t2][p]

#
[t1]확실히 오디션보다는 쪽지 시험이 나았다.[t2][p]
#
[t1]만약 오디션을 봤다면...[t2][p]
#
[t1]상상도 하기 싫었다.[t2][p]
[chara_part name="Kang" body="3" face="6"]

#강여진
[t1]음... 그러고보니 성적은 어때...?[t2][p]

#&[sf.name]
[t1]중간...정도?[t2][p]
[chara_part name="Kang" body="3" face="7"]
[chara_move name="Kang" time=300 wait=false top="0" left="375" width="1169" height="2735"]

#강여진
[t1]그럼, 낙제는 걱정하지 않아도 괜찮으려나...[t2][p]
[chara_part name="Kang" body="3" face="8"]

#강여진
[t1]우리 학교는 시험을 보는 게 조금 독특해서...[t2][p]

#강여진
[t1]아마 그동안 본 적 없는 시험이 될 수도 있을 것 같은데...[t2][p]
[chara_part name="Kang" body="1" face="1"]

#강여진
[t1]일단 교실로 가면서 쪽지 시험이 어떻게 나오는지[r]알려줄게![t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
["kang_ill"]
["jin_ill"]
["sul_ill"]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Common_String_Stab_Soft_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="2"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]같이 갈 사람 손![t2][p]
[chara_hide_all time=300 wait=false]
[chara_part name="Jin" body="1" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]

#진다영
[t1]몰라! 난 집에 갈 거야![t2][p]
[chara_hide_all time=300 wait=false]
[chara_part name="Sul" body="1" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]

#설나희
[t1]...[t2][p]
[chara_hide_all time=300 wait=false]
[chara_part name="Kang" body="1" face="8"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]

#강여진
[t1]아쉽네... 그럼 우리 둘이 가자![t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="Common_Sc_Lobby_Bgi_02.png"  ]
[tb_start_tyrano_code]
#
[t1]그렇게 우리는 동아리실을 나와 여진이에게 설명을[r]들으며 교실로 향했다.[t2][p]
#
[t1]아무도 없는 학교는 이제 조금 익숙해졌지만,[t2][p]
#
[t1]그렇기에 단둘이 걸어가는 복도가 새롭게 느껴졌다.[t2][p]
#
[t1]여자애와 단둘이 나란히 걸은 적은 없었기에.[t2][p]
#
[t1]걸음을 걸을 때마다 약간씩.[t2][p]
#
[t1]앞서나가기도 하고 뒤처지기도 했지만.[t2][p]
#
[t1]조금씩, 조금씩.[t2][p]
#
[t1]맞춰 가는 발걸음 소리가 아무도 없는 복도에 울려 퍼졌다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="Test_Tutorial_01.ks"  target=""  ]
[s  ]
