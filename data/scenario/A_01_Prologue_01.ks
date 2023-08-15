[_tb_system_call storage=system/_A_01_Prologue_01.ks]

*in01

[tb_start_tyrano_code]
[cm]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[_tb_end_tyrano_code]

[call  storage="Particle_Test_Scene_01.ks"  target="*dust_particle"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="Amb/Amb_Crowd_Loop_01.wav"  loop="true"  fadein="true"  ]
[playbgm  volume="250"  time="1000"  loop="true"  storage="Common_Backstage_01.wav"  ]
[tb_keyconfig  flag="1"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Dream_Dark_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]...어?[t2][p]
#
[t1]묘한 감정이 나를 짓눌렀다.[t2][p]
#
[t1]적당히 떨리는 손을 들어 가슴에 올렸다.[t2][p]
#
[t1]손에서 느껴지는 두근거림은 어쩐지 귀에서도 들리는 것 같았다.[t2][p]
#
[t1]어두운 공간이지만 먼지가 떨어지는게 선명히 보였다.[t2][p]
#
[t1]그 뒤로 어떤 사람이 말하는게 들렸다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#???
[t1]많이 긴장한 것 같은데? 괜찮은거지?[t2][p]
#???
[t1]자 나를 봐봐![t2][p]
#???
[t1]심호흡 한번하고...[t2][p]
#???
[t1]다음 차례는! 러브...[t2][p]
#&[sf.name]
[t1]러브.....[t2][p]
[_tb_end_tyrano_code]

[bg  time="500"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[delete_particle particle_name=dust_particle]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[bg  time="10"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[stopbgm  time="1000"  ]
[stopse  time="1000"  buf="3"  fadeout="false"  ]
[playse  volume="75"  time="1000"  buf="1"  storage="SFX/Body_Fall_01.wav"  ]
[playse  volume="140"  time="1000"  buf="0"  storage="SFX/Common_Desk_Rattle_01.wav"  ]
[playse  volume="70"  time="1000"  buf="4"  storage="Amb/Amb_Classroom_Cutoff_01.wav"  loop="true"  fadein="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]러브크레센도!!![t2][p]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="Common_School_Club_01.wav"  fadein="false"  ]
[tb_start_tyrano_code]
#일동
[t1]하하하하! 갑자기 뭐야!!![t2][p]
#&[sf.name]
[t1]어...뭐지...?[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Cartoon_Hit_01.wav"  ]
[tb_start_tyrano_code]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#
[t1]빢![t2][p]
#
[t1]갑자기 누군가 내 뒤통수를 때렸다.[t2][p]
#선생님
[t1]이 자식은 수업 시간에 자는 걸로도 모자라서 소리까지[r]질러대네![t2][p]
#선생님
[t1]뒤로 나가서 서 있어![t2][p]
#&[sf.name]
[t1]아...으...어...네...[t2][p]
#
[t1]화끈거리는 뒤통수를 잡고 뒤로 걸어 나갔다.[t2][p]
#
[t1]뒤통수 너머로 더 화끈거리는 시선들이 느껴졌다.[t2][p]
#&[sf.name]
[t1]( 뭐지? 꿈인가? )[t2][p]
#&[sf.name]
[t1]( 꿈이라기엔 너무 생생했던 것 같은데... )[t2][p]
#선생님
[t1]모두 조용! 집중해![t2][p]
#
[t1]주변에서 들려오는 웃음소리, 선생님의 호통을 뒤로 창밖의 햇살이 따사롭게 느껴졌다.[t2][p]
#
[t1]조금씩 사라져가는 꿈의 자리에 현실감이 들어오고 있었다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[tb_hide_message_window  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Road_01.wav"  fadein="true"  loop="true"  ]
[bg  time="10"  method="crossfade"  storage="Common_Sc_Maingate_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]혼자서 화장실 청소까지 하고 가라니...[t2][p]
#
[t1]모두가 하교한 학교는 유령도시 같은 느낌을 주었다.[t2][p]
#
[t1]걸음을 걸을 때마다 들리는 발소리를 제외하면 어떤 소리도 들리지 않았다.[t2][p]
#
[t1]하교할 때마다 보는 익숙한 하늘보다 조금 더 붉은 하늘[t2][p]
#
[t1]거기에 더해 학교에서 느껴본 적 없는 조용함은 이상한 기분을 들게 했다.[t2][p]
#&[sf.name]
[t1]교실도 아니고 화장실 청소는 너무한 거 아니냐고...[t2][p]
#
[t1]그 때.[t2][p]
#???
[t1]오늘도 깊은 밤 꿈속에서 당신을 구하는 최고의 히어로![t2][p]
#???
[t1]그 이름은 아름다운 러브크레센도![t2][p]
#&[sf.name]
[t1]하...[t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="1000"  method="vanishIn"  storage="BGI/Common_Black.jpg"  ]
[tb_start_tyrano_code]
[jeon_ill]
[chara_part name="Jeon" body="3" face="1" ]
[chara_show name="Jeon" time=1000 wait=true width="570" height="1080" top="0" left="619" ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]전대용[t2][p]전학을 오자마자 친해진 유일한 친구다.[t2][t1][p]재미도 있고 은근히 아는 것도 많지만...[t2][p]
[chara_hide name="Jeon" ]
[_tb_end_tyrano_code]

[bg  time="1000"  method="vanishIn"  storage="Common_Sc_Maingate_Bgi_01.png"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]변태다...[t2][p]
;[chara_hide_all time=200 wait=false]
[jeon_ill]
[chara_part name="Jeon" body="4" face="1" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]너 수업 중에 사자후를 날렸다며?[t2][p]
#전대용
[t1][chara_part name="Jeon" body="4" face="2" ]
정말 멋있는 녀석이야.[t2][p]
[chara_part name="Jeon" body="2" face="1" ]
#&[sf.name]
[t1]그거 칭찬 맞지?[t2][p]
#&[sf.name]
[t1]근데 넌 왜 이 시간까지 학교에 있는 거야? [t2][p]
[chara_part name="Jeon" body="2" face="8" ]
#전대용
[t1]...가끔 남자에게는 말 못 할 비밀들이 있지...[t2][p]
[chara_part name="Jeon" body="4" face="4" ]
#전대용
[t1]더는 묻지마라...[t2][p]
#&[sf.name]
[t1]어... 그래...[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#&[sf.name]
[t1]( 역시 변태다. )[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[playse  volume="80"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[bg  time="10"  method="crossfade"  storage="Common_Road_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[jeon_ill]
#
[t1]대용이와 함께 학교에서 나와 함께 길을 걸어갔다.[t2][p]
#
[t1]시간이 시간인지라 확실히 낮보다는 더 시원했다.[t2][p]
[chara_part name="Jeon" body="1" face="1" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]그건 그렇고 물어보고 싶은 게 있는데.[t2][p]
#전대용
[t1]전학와서 친구들은 좀 사귀었어?[t2][p]
[chara_part name="Jeon" body="2" face="1" ]
#전대용
[t1]늘 나랑만 붙어 다니는 것 같단 말이지.[t2][p]
#&[sf.name]
[t1]딱히?[t2][p]
#&[sf.name]
[t1]내가 먼저 다가가는 성격은 아니니까...[t2][p]
[chara_part name="Jeon" body="2" face="6" ]
#전대용
[t1]동아리에 들어갔는데도 친구를 사귀지 못했다고?[t2][p]
[chara_part name="Jeon" body="4" face="6" ]
#전대용
[t1]그건 좀 큰일인데.[t2][p]
#&[sf.name]
[t1]난 동아리 들어갔다고 말한 적 없어.[t2][p]
[chara_part name="Jeon" body="4" face="4" ]
[chara_move name="Jeon" time=300 wait=false top="0" left="100" width="1444" height="2735"]
#전대용
[t1]동아리에 들어가지 않았다고?[t2][p]
#
[t1]대용이는 갑자기 무언가 큰일이라도 난 것처럼 목소리를[r]키웠다.[t2][p]
[chara_part name="Jeon" body="3" face="1" ]
[chara_move name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]잘 들어! 우리 학교는 말이야...[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]동아리에 필수적으로 가입을 해야 해.[t2][p]
#&[sf.name]
[t1]에...뭐?[t2][p]
[chara_hide_all time=300 wait=false]
[chara_part name="Jeon" body="3" face="1" ]
#전대용
[t1]네가 좋던 싫든 간에 무조건 동아리에 들어가야 해.[t2][p]
#&[sf.name]
[t1]흠...그런 귀찮은 건 딱 질색인데.[t2][p]
#전대용
[t1]그렇다면.[t2][p]
[chara_part name="Jeon" body="2" face="4" ]
#전대용
[t1]자네...나와 같은 서예부에 들어오지 않겠는가?[t2][p]
#&[sf.name]
[t1]거기는 죽어도 싫어.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Robot_Glitch.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Jeon" body="2" face="1" ]
#&[sf.name]
[t1]그리고 그냥 서예부도 아니고 【과학서예부】잖아.[t2][p]
[chara_part name="Jeon" body="3" face="1" ]
#전대용
[t1]요즘 같은 시대에 시대에 과학은 기본 소양이라고?[t2][p]
#&[sf.name]
[t1]바로 그게 문제라는 거야.[t2][p]
#&[sf.name]
[t1]나는 마요네즈로 붓글씨를 쓰는 동아리에는 가입하고[r]싶지 않아![t2][p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[chara_part name="Jeon" body="4" face="4" ]
#전대용
[t1]어허! 다 의미 있는 일이라는 것을 정녕 모르는 것이냐![t2][p]
[chara_part name="Jeon" body="4" face="4" ]
#전대용
[t1]나는 단순히 과학과 서예 때문에 과학서예부에 들어가[r]있는 것이 아니야![t2][p]
#전대용
[t1]진정한 남자라면 큰 그림을 보는 법![t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]내가 과학서예부에 들어가 있는 이유는![t2][p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[chara_part name="Jeon" body="1" face="4" ]
#전대용
[t1]바로 동아리 부장 때문이지![t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]우리 동아리 부장 누나는 말이야...[t2][p]
[chara_part name="Jeon" body="4" face="2" ]
#전대용
[t1]예뻐.[t2][p]
#&[sf.name]
[t1]뭐?[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]예쁘다고.[t2][p]
#&[sf.name]
[t1]진짜 고작 그 이유로 그 동아리에 들어간 거라고...?[t2][p]
#&[sf.name]
[t1]설마...[t2][p]
[chara_part name="Jeon" body="4" face="2" ]
#전대용
[t1]역시 큰 가ㅅ...[t2][p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[chara_part name="Jeon" body="4" face="1" ]
#&[sf.name]
[t1]그만! 거기까지![t2][p]
#&[sf.name]
[t1]물어본 내가 바보지.[t2][p]
[chara_part name="Jeon" body="4" face="2" ]
#전대용
[t1]한번 보면 헤어 나오지 못하고 과학서예부에 들어오게[r]될걸?[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#&[sf.name]
[t1]제발 좀 조용히 말해줘... 같이 다니기 너무 부끄러워...[t2][p]
[chara_part name="Jeon" body="3" face="6" ]
#전대용
[t1]어차피 여기엔 우리 말고는 없다고?[t2][p]
#&[sf.name]
[t1]에휴. 말을 말자.[t2][p]
[chara_hide_all time=300 wait=false]
#
[t1]한번 풀려버린 대용이의 입은 멈출 줄 몰랐다.[t2][p]
#
[t1]귀에 피가 나는 것 같아 만져보니 대용이의 침이었다.[t2][p]
#
[t1]그렇게 만나 본 적도 없는 동아리 부장의 음식 취향까지[r]들어가며 대용이와 함께 길을 걸어갔다.[t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[playse  volume="80"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  fadein="false"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="4"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[jump  storage="A_01_Prologue_02.ks"  target="*in01"  ]
