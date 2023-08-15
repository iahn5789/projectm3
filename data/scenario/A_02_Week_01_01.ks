[_tb_system_call storage=system/_A_02_Week_01_01.ks]

*in_01

[playse  volume="200"  time="1000"  buf="3"  storage="Amb/Amb_Room_Tone_02.wav"  loop="true"  fadein="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="Amb/Amb_Classroom_Cutoff_01.wav"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]지루한 수업이 지나가고 어느덧 종례 시간이 다가왔다.[t2][p]
#선생님
[t1]자 다들 오늘 하루 수고했고 내일 보자! 이상![t2][p]
#일동
[t1]수고하셨습니다![t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="2"  fadeout="true"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[playse  volume="130"  time="1000"  buf="4"  storage="Amb/Amb_Classroom_Many_Footsteps_01.wav"  fadein="true"  loop="true"  ]
[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Common_Sliding_Door_Open_02.wav"  ]
[tb_start_tyrano_code]
#
[t1]종례가 끝남과 동시에 수십 명이 자리에서 일어났다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="40"  time="1000"  buf="0"  storage="UI/Exam_Desk_Draw_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]의자를 뒤로 밀고 일어서는 소리가 여러 곳에서 들려왔다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="1"  storage="UI/Exam_Desk_Draw_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
#
[t1]가방을 둘러메고 교실 밖으로 나가면서 각자 무엇을 할지 [r]이야기하고 있었다.[t2][p]
#
[t1]피시방을 가자는 학생들도 있었고 영화를 보러 가자는[r]학생들도 있었다.[t2][p]
#
[t1]다만 나에게 먼저 말을 거는 학생들은 없었다.[t2][p]
#
[t1]전학을 온 지 일주일 정도 지났지만, 아직 대용이 말고는 [r]친구가 없었기 때문이다.[t2][p]
#
[t1]말도 없고 딱히 재미도 없는 전학생.[t2][p]
#
[t1]그것도 수업 시간에 졸다가 소리를 지른 전학생.[t2][p]
#&[sf.name]
[t1]( 에휴. 그냥 빨리 집이나 가야지.)[t2][p]
#
[t1]축 처진 몸을 이끌고 교실 밖으로 나가려는 그때, 문득[r]생각이 들었다.[t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
["kang_ill"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]그럼 오늘 수업이 끝나고 동아리실에서 보는 거로 하자![t2][p]
[chara_hide name="Kang" time=300 wait=false]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Text_Kick_01.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]잠깐만.[t2][p]
#&[sf.name]
[t1](생각해 보니 나도 학교 끝나고 보자는 사람이 있었잖아?)[t2][p]
#
[t1]강여진...[t2][p]
#
[t1]조금 뜬금없긴 했지만, 분명히 나에게 먼저 말을 걸었다.[t2][p]
#
[t1]...왜 동아리 가입을 권유했는지는 알 수 없지만.[t2][p]
#&[sf.name]
[t1]어차피 동아리 가입도 해야 했으니 한번 가볼까...[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_hide_message_window  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playbgm  volume="70"  time="1000"  loop="true"  storage="Common_Lobby_BGM_01.mp3"  ]
[playse  volume="60"  time="1000"  buf="4"  storage="Amb/Amb_Hallway_01.wav"  fadein="true"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Lobby_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]밴드부는 4층 과학실 옆에 있다고 했다.[t2][p]
#
[t1]수업 때문에 과학실은 몇 번 간 적이 있었지만, 그 옆에 [r]밴드부가 있는 줄은 몰랐다.[t2][p]
#
[t1]가뜩이나 과학실로 가기 위해선 한참을 걸어가야 했는데 그 옆에 있는 밴드부라니.[t2][p]
#
[t1]과연 찾아오는 학생들이 있을까 하는 생각이 [r]들었다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="2000"  buf="3"  storage="Amb/Amb_Room_Tone_02.wav"  fadein="true"  loop="true"  ]
[stopse  time="3000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]방과 후 시간, 학생들이 빠져나간 학교는 이상할 정도로[r]조용했다.[t2][p]
#
[t1]외진 장소에 있는 밴드부는 마치 다른 차원에 있는 교실 같은 느낌을 주었다.[t2][p]
#
[t1]아무도 없는 복도를 지나쳐 밴드부 앞으로 걸어갔다.[t2][p]
#
[t1]입구에 도착하자 밴드부라고 적힌 나무로 된 작은 팻말이[r]보였다.[t2][p]
#
[t1]팻말은 색도 바래고 몇 군데 갈라진 부분도 있었다.[t2][p]
#
[t1]오히려 없는 게 더 나아 보일 정도였다.[t2][p]
#
[t1]문을 열기 위해 손잡이 쪽으로 시선을 돌려봤다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="55"  time="1000"  buf="0"  storage="Amb/Amb_Cold_Wind_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
#
[t1]손잡이는 약간 부서져 있었고 문지방은 녹슬어 열리지[r]않을 것 같았다.[t2][p]
#&[sf.name]
[t1](이게 동아리실이라고? 창고도 이거보단 깔끔할 거[r]같은데?)[t2][p]
#&[sf.name]
[t1](이거 알고 보니 이상한 동아리 아니야?)[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1500"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]내가 잘못된 선택을 한 건 아닌지 고민하고 있을 때[r]안에서 소리가 들려왔다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="30"  time="1000"  buf="0"  storage="SFX/Common_Door_Slam_01.wav"  ]
[playse  volume="45"  time="1000"  buf="1"  storage="SFX/Common_Desk_Rattle_01.wav"  ]
[tb_start_tyrano_code]
#???
[t1]언제까지 기다리고만 있어야 하는 건데![t2][p]
#???
[t1]난 누군지도 모르는 사람이 우리 동아리에 들어오는 건[r]반대야![t2][p]
#강여진
[t1]아직 학교 끝난 지 얼마 지나지도 않았거든? 일이 있어서[r]늦는 게 분명해![t2][p]
#???
[t1]수업 시간에 졸다가 이상한 소리를 지르면서 일어났다며![t2][p]
#
[t1]작은 문을 통해 보이는 여진이가 누군가와 싸우고 있었다.[t2][p]
#???
[t1]...난 올 거라고 생각해...[t2][p]
#???
[t1]뭐? 그걸 어떻게 아는데?[t2][p]
#???
[t1]저기 문 앞에..[t2][p]
#
[t1]한껏 화가 난 듯한 분홍 머리 여학생이 고개를 돌렸고[r]눈이 마주쳤다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
[t1]아주 짧은 눈빛 교환이 이어졌고, 여학생의 표정이[r]순식간에 굳어갔다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="1"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Sliding_Door_Open_Short_02.wav"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_show_message_window  ]
[stopbgm  time="1000"  ]
[tb_start_tyrano_code]
#???
[t1]꺄아아아아-![t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[stopse  time="1000"  buf="3"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Common_School_Club_01.wav"  fadein="false"  ]
[playse  volume="70"  time="1000"  buf="4"  storage="Amb/Amb_Shool_Club_01.wav"  fadein="true"  loop="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[kang_ill]
[jin_ill]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]아! 와줬구나. 어서 와![t2][p]
[chara_part name="Kang" body="2" face="1" ]
#???
[t1]이거 봐! 완전 변태 아니야! 몰래 숨어서 엿듣고 있던 거야?[t2][p]
[chara_part name="Kang" body="2" face="8" ]
#&[sf.name]
[t1]아...아니 그러니까 나는...[t2][p]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Jin" body="3" face="4" ]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]
#진다영
[t1]시끄러워! 변태! 호색한! 대머리![t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[jin_ill]
[kang_ill]
#강여진
[t1]그만! 내가 불러서 온 친구란 말이야![t2][p]
#진다영
[t1]찐따! 찌질이! 버러지! 거지![t2][p]
[chara_hide name="Jin" time=300 wait=false]
[chara_part name="Kang" body="1" face="5" ]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
#강여진
[t1]진다영!!![t2][p]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]
#진다영
[t1]내가 틀린 말 했어?! 왜 소리를 지르고 그래![t2][p]
#&[sf.name]
[t1]그러니까...나는...[t2][p]
[chara_part name="Jin" body="3" face="4" ]
#진다영
[t1]조용히 해! 이 변태![t2][p]
#&[sf.name]
[t1]미...미안...[t2][p]
#설나희
[t1]...그 친구야...?[t2][p]
[chara_hide name="Jin" time=300 wait=false]
[chara_part name="Kang" body="2" face="1" ]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]응! 내가 말했지? 막상 보면 괜찮을거라고![t2][p]
#설나희
[t1]...나는 괜찮다고 보는데...[t2][p]
#진다영
[t1]이 변태가 괜찮다고? 다들 무슨 생각을 하는거야![t2][p]
[sul_ill]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]
#설나희
[t1]...나쁜 사람 같아 보이지는 않아...[t2][p]
#진다영
[t1]나는 인정 못 해! 생긴 건 그렇다 치더라도 몰래 엿듣고[r]있던 건 어떻게 설명할 건데![t2][p]
[chara_part name="Sul" body="2" face="1" ]
#설나희
[t1]둘이 싸우는 소리가 밖에 뻔히 들리잖아...[t2][p]
#설나희
[t1]어떻게 들어오겠어...[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide name="Sul" time=300 wait=false]
#
[t1]밴드부에는 여진이 말고도 두 명이 더 있었다.[t2][p]
#
[t1]진다영이라고 불리는 분홍 머리 여학생은 나 때문인지[r]잔뜩 화가 난 상태였다.[t2][p]
#
[t1]그 옆 푸른 머리 여학생은 내 편을 들어주고 있었지만,[t2][p]
#
[t1]표정만 봐서는 무슨 생각을 하는지 잘 알 수가 없었다.[t2][p]
#
[t1]그때 한껏 화를 낸 진다영과 또다시 눈이 마주쳤다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Text_Kick_01.wav"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="UI/Common_Whistle_01.wav"  ]
[tb_start_tyrano_code]
[jin_ill]
[kang_ill]
[sul_ill]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]
#진다영
[t1]흥! 뭘 봐 이 변태야![t2][p]
#&[sf.name]
[t1]난 변태가 아닌데...[t2][p]
[chara_hide name="Jin" time=300 wait=false]
[chara_part name="Kang" body="2" face="1"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]우선 내가 부른 손님이니까 이야기만이라도 나눠보자![t2][p]
[chara_part name="Kang" body="2" face="7"]
#강여진
[t1]이제 동아리 마감까지 얼마 남지도 않았는데 다른 사람을[r]구하기엔 무리야.[t2][p]
[chara_part name="Kang" body="2" face="1"]
#강여진
[t1]아니면 더 좋은 생각이 있어? 지금은 별다른 수가[r]없잖아...[t2][p]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Jin" body="1" face="8"]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]
#진다영
[t1]그... 그건 맞지만...[t2][p]
[chara_part name="Jin" body="3" face="4"]
#진다영
[t1]야! 너! 변태![t2][p]
#&[sf.name]
[t1]저...저요?[t2][p]
[chara_part name="Jin" body="1" face="4"]
#진다영
[t1]너 할 줄 아는 게 뭐야![t2][p]
#설나희
[t1]…그건 나도 궁금한데[t2][p]
#&[sf.name]
[t1]어…음…저기…그러니까…[t2][p]
[chara_part name="Jin" body="3" face="4"]
#진다영
[t1]거봐 말도 제대로 못 하잖아! 엿듣는 거 말고[r]할 수 있는 게 뭐야![t2][p]
#&[sf.name]
[t1]아니 그러니까 나는…[t2][p]
[chara_hide name="Jin" time=300 wait=false]
#
[t1]솔직히 밴드부에서 내가 맡을 수 있는 역할은 딱히 없었다.[t2][p]
#
[t1]남들보다 노래를 잘하는 것도 아니고, 악기를 다룰 수 있는 것도 아니니까.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide name="Jin" time=300 wait=false]
[chara_part name="Kang" body="1" face="5"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]그만! 그렇게 몰아세우면 멀쩡하던 사람도 쓰러지겠어![t2][p]
#강여진
[t1]우리 둘이 싸우고 있으니까 민망해서 들어오지도 못하고 [r]밖에 서 있었던 거 아니야![t2][p]
#설나희
[t1]…그건 맞지…[t2][p]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Jin" body="1" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="553" width="813" height="1903"]
#진다영
[t1]그럼 노크한다던가 인기척을 냈으면 우리도 대화를[r]멈췄을 거 아니야![t2][p]
#설나희
[t1]…그것도 맞지…[t2][p]
[chara_part name="Jin" body="3" face="2"]
#진다영
[t1]애초에 누군지도 모르는 사람을 불러서 대뜸[r]가입시킨다는 게 말이 돼?[t2][p]
[chara_part name="Jin" body="3" face="2"]
#진다영
[t1]이 변태한테 뭘 시킬 건데![t2][p]
#강여진
[t1]그건...[t2][p]
[chara_part name="Jin" body="1" face="4"]
#진다영
[t1]생각해 본 적도 없지?[t2][p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[chara_hide name="Jin" time=300 wait=false]
[chara_part name="Kang" body="2" face="5"]
[chara_show name="Kang" time=300 wait=false top="0" left="553" width="813" height="1903"]
#강여진
[t1]보...보컬을 맡길 생각이야! 아마 맡겨놓으면 제대로 [r]할 수 있을 거야![t2][p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[chara_hide name="Kang" time=300 wait=false]
[chara_part name="Jin" body="3" face="4"]
[chara_show name="Jin" time=300 wait=false top="0" left="375" width="1169" height="2735"]
#진다영
[t1]말도 제대로 못 하는 바보한테 무슨 보컬을 맡기는데![t2][p]
[chara_hide name="Jin" time=300 wait=false]
#
[t1]둘은 잠시 소강상태가 되는 듯하더니 어느새 다시[r]싸울듯이 이야기를 이어 나가기 시작했다.[t2][p]
#
[t1]그때 옆에서 조용히 있던 푸른 머리 여학생이 내게[r]다가왔다.[t2][p]
[chara_part name="Sul" body="3" face="1"]
[chara_show name="Sul" time=300 wait=false top="0" left="553" width="813" height="1903"]
#설나희
[t1]…잘할 수 있겠어…?[t2][p]
#&[sf.name]
[t1]어…네? 어떤 거 말씀이세요…?[t2][p]
#설나희
[t1]…보컬…[t2][p]
#&[sf.name]
[t1]아…음…그러니까…[t2][p]
[chara_hide name="Sul" time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Wood_Walk_01.wav"  fadein="false"  ]
[tb_start_tyrano_code]
#
[t1]그 순간 여진이가 하던 말을 멈추고 내게 다가왔다.[t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[jump  storage="A_02_Week_01_02.ks"  target="*in01"  ]
[s  ]
