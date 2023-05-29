[_tb_system_call storage=system/_Chapter01_Lobby_01.ks]

[bg  time="1000"  method="crossfade"  storage="Common_Sc_Lobby_Bgi_01.png"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="Amb/Amb_Hallway_01.wav"  fadein="true"  loop="true"  ]
[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[t1]( 4층... 과학실 옆이라고 했었나? )[t2][p]
[t1]( 어디보자...리듬 오브 레전드? 뭐야 이거? )[t2][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="SFX/Common_Sliding_door_open_short.wav"  ]
[tb_start_text mode=1 ]
#강여진
[t1]아니야! 진짜로 올거야! 약속까지 했다구![t2][p]
#???
[t1]아직 안 왔으면 안 오는 거라니까?[t2] [l][r][t1]그만 기다리고 집에 갈거야![t2][p]
#&[sf.name]
[t1]응? 무슨일이지?[t2][p]
#강여진
[t1]나랑 손가락 걸고 약속했었단 말이야![t2][l][r][t1]기다려봐 반드시 올거야![t2][p]
#???
[t1]지금까지 기다렸는데도 안 오는거면 그 약속은 안중에도 없는거라고![t2][p]
#강여진
[t1]그럼 딱 5분만 더 기다려보자 응?[t2][l][r][t1]과학실이 어디인지 모르는 걸 수도 있잖아![t2][p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
[t1]아니 그러니까 안 온다니까?![t2][p]
#???
[t1]..저기....[t2][p]
[t1]...난 올 거라고 생각하는데....[t2][p]
[t1]무슨 소리야!! 안 온다니깐?[t2][p]
[t1]저기....문앞에...[t2][p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
[t1]문 앞?[t2][p]
[_tb_end_text]

[jump  storage="Chapter01_School_Club_01.ks"  target=""  ]
