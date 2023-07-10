[_tb_system_call storage=system/_A_01_Prologue_02.ks]

*in01

[tb_keyconfig  flag="1"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Road_01.wav"  fadein="true"  loop="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Common_Lobby_BGM_01.mp3"  fadein="true"  ]
[bg  time="10"  method="crossfade"  storage="Common_Road_Bgi_01.png"  ]
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
[t1]모자를 깊게 눌러쓴 알바생은 전단지를 내게 건네주고는[r]다른 사람에게 가버렸다.[t2][p]
#
[t1]손에는 전단지 한 장이 민망하리만치 달랑 들려있었다.[t2][p]
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
#&[sf.name]
[t1]이름이... 프리덤?[t2][p]

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
[t1]아침, 점심, 저녁을 제외하고 여섯 시는 음료수를[r]마시는 시간! 아홉 시는 간식을 먹는 시간이지![t2][p]
#&[sf.name]
[t1]그래. 루틴대로 살아서 성공하길 빈다.[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Paper_Crumple_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]대용이와 대화를 주고받으며 손에 들고 있던 전단지를[r]구겼다.[t2][p]
#&[sf.name]
[t1]나 이것 좀 버리고 올게.[t2][p]
[chara_part name="Jeon" body="1" face="6" ]
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
[t1]근처에 보이는 쓰레기통에 전단지을 던져넣었다[t2][p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="1"  storage="SFX/Whoosh_Paper_Cartoon_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]휙-![t2][p]
#
[t1]전단지는 쓰레기통을 향해 날아갔지만, 중간에 떨어지고[r]말았다.[t2][p]
#&[sf.name]
[t1]오늘은 되는 일이 없네...[t2][p]
#
[t1]떨어진 전단지 근처에 더러워 보이는 앨범이 땅바닥에[r]펼쳐져 있었다.[t2][p]
#&[sf.name]
[t1]앨범? 이런 곳에?[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Beautiful_Bell_Tree_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
#
[t1]낡은 표지와 빛바랜 사진.[r]누가 봐도 앨범이 오래됐다고 느껴지기에 충분했다.[t2][p]
#
[t1]사진 속에는 두 명의 남녀가 사이좋게 찍혀있었다.[r]연인관계인 것 같다.[t2][p]
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
[chara_part name="Jeon" body="4" face="8" ]
#전대용
[t1]맞다 그걸 깜박했군.[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]그나저나 무얼 버리고 온 거야?[t2][p]
#&[sf.name]
[t1]너의 그 잘난 루틴 기다리는 동안 전단지 하나 받았어.[t2][p]무슨...축제한다고 하던데.[t2][p]
[chara_part name="Jeon" body="1" face="6" ]
#전대용
[t1]축제? 나의 여신 프리덤이 나오는 그 축제 말하는 거야?[t2][p]
#&[sf.name]
[t1]그 이상한 밴드?[t2][p]
[chara_part name="Jeon" body="3" face="2" ]
#전대용
[t1]오! 역시 알고 있던 거냐고?[t2][p]
[chara_part name="Jeon" body="3" face="1" ]
#&[sf.name]
[t1]몰라. 전단지에 적혀있는데 특이해서 기억하는 거지.[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#전대용
[t1]이런 이런.... 너는 프리덤의 매력이 무엇인지 전혀 모르는[r]모양이군.[t2][p]
[chara_hide_all time=300 wait=false]
#
[t1]대용이가 안경을 고쳐 쓰고선 이야기를 시작했다.[t2][p]
[chara_part name="Jeon" body="4" face="2" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]여자들로만 이루어져 있고 독특한 변장을 하고[r]연주하지만 내 눈은 속일 순 없지.[t2][p]
[chara_part name="Jeon" body="2" face="2" ]
#전대용
[t1]그 밴드를 보면 옷으로는 숨길 수 없는 힘숨찐의 냄새가[r]난다고.[t2][p]
[chara_part name="Jeon" body="4" face="2" ]
#전대용
[t1]이 정도 알아차리는 건 신사의 기본적인 소양이지.[t2][p]
#&[sf.name]
[t1]그냥 네가 변태인 건 아니고?[t2][p]
[chara_part name="Jeon" body="4" face="4" ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Text_Kick_01.wav"  ]
[tb_start_tyrano_code]
#전대용
[t1]신.사.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]그래 알겠다...[t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#&[sf.name]
[t1]일단 오늘 짐 정리를 다 끝내고 나서 이야기하는 거로[r]하자.[t2][p]
#&[sf.name]
[t1]오늘까지 정리 안 하면 엄마가 날 죽일 거야.[t2][p]
[chara_part name="Jeon" body="2" face="1" ]
#전대용
[t1]그래 살아서 보자고. 내일 아침에 늦어서 내 루틴[r]망치지 말...[t2][p]
#&[sf.name]
[t1]나 먼저 갈게.[t2][p]
[chara_hide_all time=300 wait=false]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]아직은 익숙하지 않은 거리를 뒤로한 채 집을 향해[r]걸어갔다.[t2][p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#전대용
[t1]동아리 꼭 생각해보고![t2][p]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="1"  fadeout="true"  ]
[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="A_01_Prologue_03.ks"  target="*in01"  ]
