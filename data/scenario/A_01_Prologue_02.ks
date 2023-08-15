[_tb_system_call storage=system/_A_01_Prologue_02.ks]

*in01

[tb_keyconfig  flag="1"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Road_01.wav"  fadein="true"  loop="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Common_Lobby_BGM_01.mp3"  fadein="true"  ]
[bg  time="10"  method="crossfade"  storage="Common_Road_Bgi_02.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]

#
[t1]아직은 익숙하지 않은 하굣길.[t2][p]
[t1]아스팔트의 질감부터 하늘의 모양까지 모든 게[r]새롭기만 하다.[t2][p]
[jeon_ill]
[chara_part name="Jeon" body="2" face="2" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]그래서 내가 어제 그걸 보는데...[t2][p]
[chara_part name="Jeon" body="2" face="6" ]
#전대용
[t1]...[t2][p]
#&[sf.name]
[t1]갑자기 왜 말을 하다 말아.[t2][p]
#전대용
[t1]지금 혹시 몇 시지?[t2][p]
#
[t1]갑작스레 가던 길을 멈춘 대용이가 사뭇 진지한 표정으로[r]물어보았다.[t2][p]
#&[sf.name]
[t1]지금? 여섯 시.[t2][p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[chara_part name="Jeon" body="4" face="4" ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="UI/Common_Whistle_01.wav"  ]
[tb_start_tyrano_code]
#전대용
[t1]뭐!!! 여!섯!시!?[t2][p]
#&[sf.name]
[t1]아 깜짝이야! 또 뭔데[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_ctr_run_01.wav"  ]
[stopse  time="3000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]처절하게 여섯 시를 외치던 대용이가 갑자기 길 건너편에[r]있는 편의점으로 사라져 버렸다.[t2][p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#&[sf.name]
[t1]야! 어디가! 전대용!!![t2][p]
#&[sf.name]
[t1]뭐야 진짜...아무튼 이상한 놈이라니까..[t2][p]
[_tb_end_tyrano_code]

[playse  volume="120"  time="500"  buf="1"  storage="SFX/Footsteps_Female_Ctr_Walk_01.wav"  fadein="false"  ]
[tb_start_tyrano_code]
#알바생
[t1]안녕하세요![t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
[t1]눈앞에서 사라져 버린 전대용을 바라보던 와중 누군가가[r]다가왔다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]네? 저요?[t2][p]
#알바생
[t1]다른 건 아니고 축제 홍보 때문에 그러는데요.[t2][p]
#알바생
[t1]이번 주말에 진행하는 축제니 시간이 괜찮으시다면[r]오셔서 구경하고 가세요.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="120"  time="1000"  buf="1"  storage="SFX/Footsteps_Female_Ctr_Run_01.wav"  ]
[stopse  time="5000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]모자를 깊게 눌러쓴 알바생은 전단지를 내게 건네주었다.[t2][p]
#
[t1]알바생은 내 반응 따위는 신경도 쓰지 않은 채 다른 사람에게 가버렸다.[t2][p]
#
[t1]손에는 전단지 한 장만이 민망하리만치 달랑 들려있었다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="110"  time="1000"  buf="1"  storage="UI/Exam_Open_Paper_01.wav"  fadein="false"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]이건... 뭐지...?[t2][p]
#&[sf.name]
[t1]그냥 동네 축제같은데 연예인도 오고 공연도 하나보네...[t2][p]
#
[t1]독특한 컨셉의 2인조 그룹이 눈에 띈다.[t2][p]
#&[sf.name]
[t1]와... 이런 컨셉의 밴드가 축제에 나온다고? 신기하네.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  fadeout="false"  ]
[playse  volume="25"  time="1000"  buf="1"  storage="UI/Shop_Door_Click__01.wav"  ]
[playse  volume="50"  time="1500"  buf="2"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
#
[t1]이때 편의점으로 사라져 버린 전대용이 양손에 음료수를[r]들고 나왔다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="3000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jeon_ill]
[chara_part name="Jeon" body="2" face="1" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#&[sf.name]
[t1]야! 어디 갔다 온 거야![t2][p]
[chara_part name="Jeon" body="2" face="6" ]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="2"  fadeout="false"  ]
[tb_start_tyrano_code]
#전대용
[t1]어디긴. 음료수 사러 갔다 왔지.[t2][p]
#&[sf.name]
[t1]그러니까... 이걸 사려고 소리까지 지르면서 달려간 거야?[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]성공한 사람들은 항상 자기만의 인생 루틴을 따른다고[r]하지..[t2][p]
#전대용
[t1]나에게 있어 여섯 시는 음료수를 마셔야 하는 시간이야.[t2][p]
#&[sf.name]
[t1]하... 그럼 각 시간마다 먹는 음식이 있는 거야?[t2][p]
[chara_part name="Jeon" body="4" face="4" ]
#전대용
[t1]당연하지![t2][p]
[chara_part name="Jeon" body="3" face="4" ]
#전대용
[t1]아침, 점심, 저녁을 제외하고 여섯 시는[r]음료수! 여덟 시는 간식! 열 시는...[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Paper_Crumple_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]대용이의 하루 루틴을 듣고 있자니 또다시 귀에서 피가 나는 느낌이 들었다.[t2][p]
#
[t1]혹시나 해서 만져보니 역시나 대용이의 침이었다.[t2][p]
#
[t1]이대로 계속 가다가는 중이염에 걸릴 것만 같았다.[t2][p]
#&[sf.name]
[t1]나 이것 좀 버리고 올게.[t2][p]
[chara_part name="Jeon" body="1" face="8" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]빨리 다녀와. 일곱 시에는 집에서 밥 먹는 게 내[r]루틴이라고.[t2][p]
#&[sf.name]
[t1]알겠으니 그 루틴 이야기 좀 제발 그만해.[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[tb_start_tyrano_code]
#
[t1]겨우 대용이의 이야기를 끝낸 나는 주변에 적당한[r]쓰레기통을 찾았다.[t2][p]
#
[t1]조금 떨어져 있는 곳에 쓰레기통이 보였다.[t2][p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="1"  storage="SFX/Whoosh_Paper_Cartoon_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]휙-![t2][p]
#
[t1]굳이 근처까지 가고 싶지 않아서 전단지를 던졌지만,[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Paper_Drop_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]힘이 부족했는지 중간에 떨어지고 말았다.[t2][p]
#&[sf.name]
[t1]오늘은 되는 일이 없네...[t2][p]
#
[t1]하는 수 없이 직접 버리기 위해 쓰레기통 근처로 갔다.[t2][p]
#
[t1]쓰레기통 근처에는 낡아 보이는 앨범이 땅바닥에[r]펼쳐져 있었다.[t2][p]
#&[sf.name]
[t1]앨범? 이런 곳에?[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Beautiful_Bell_Tree_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
#
[t1]땅바닥에 펼쳐져 있던 앨범을 주워서 살펴보았다.[t2][p]
#
[t1]낡은 표지와 빛바랜 사진.[r]누가 봐도 앨범이 오래됐다고 느껴지기에 충분했다.[t2][p]
#
[t1]사진 속에는 두 명의 남녀가 사이좋게 찍혀있었다.[t2][p]
#
[t1]친구라고 보기에는 너무 다정해 보였다.[t2][p]
#
[t1]어쩌면 연인일지도 몰랐다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1500"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]소중해 보이는 추억을 그냥 버리는구나.[t2][p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#전대용
[t1]뭐해! 빨리 와![t2][p]
#&[sf.name]
[t1]어! 지금 갈게![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Trash_Can_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]손에 들고 있던 앨범을 쓰레기통에 같이 버린 뒤[r]대용이에게 향했다.[t2][p]
[jeon_ill]
[chara_part name="Jeon" body="1" face="1" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]이런이런. 이러면 내 루틴에 지장이 생긴다고?[t2][p]
#&[sf.name]
[t1]루틴 이야기 한 번만 더 하면 나 먼저 집에 가버릴 거야.[t2][p]
[chara_part name="Jeon" body="1" face="6" ]
#전대용
[t1]어차피 먼저 가도 할 거 없을 텐데?[t2][p]
#&[sf.name]
[t1]할 게 없긴 왜 없어. 아직 이삿짐 정리도 안 끝났는데.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#&[sf.name]
[t1]오늘까지 정리 안 하면 엄마가 날 죽일 거야.[t2][p]
[chara_part name="Jeon" body="2" face="1" ]
#전대용
[t1]그래 살아서 보자고. 내일 아침에 늦어서 내 루틴[r]망치지 말...[t2][p]
#&[sf.name]
[t1]나 먼저 갈게.[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#전대용
[t1]동아리 꼭 생각해보고![t2][p]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]대용이와 헤어지니 주변이 확실히 조용해졌다.[t2][p]
#
[t1]아직은 익숙하지 않은 거리를 뒤로한 채 집을 향해[r]걸어갔다.[t2][p]
#
[t1]차도, 사람도 많이 지나다니지 않는 골목길이라 더 조용한[r]건지도 몰랐다.[t2][p]
#
[t1]주변이 갑작스럽게 조용해지니 오히려 어색한 기분이[r]들었다.[t2][p]
#
[t1]아직은 익숙하지 않은 거리를 뒤로한 채 집을 향해[r]걸어갔다.[t2][p]
#
[t1]그 후 10분 정도 걸었을까[t2][p]
#
[t1]어느새 하늘은 검은색으로 변하고 있었다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="1"  fadeout="true"  ]
[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="A_01_Prologue_03.ks"  target="*in01"  ]
