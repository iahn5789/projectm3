[_tb_system_call storage=system/_Scene_Dream_01.ks]

[hidemenubutton]

[bg  time="1000"  method="crossfade"  storage="BGI/Common_Black.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="Amb/Amb_Crowd_Loop_01.wav"  fadein="true"  loop="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#관객들
" 와아아아아앙-! "[p]
#???
" 우리가 잘 해낼 수 있을까? "[p]
" 긴장할 것 없어 "[r] " 그동안 잘 해왔었잖아! "[p]
" 마..맞아!! "[p]
" 그래도 떨리는데..... "[p]
#관객들
" 꺄아아아-!! " [r][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Mic_Feedback_01.wav"  clear="false"  ]
[tb_start_text mode=1 ]
#사회자
" 자! 다음을 소개하도록 하겠습니다!! "[p]
" 이번 순서는! ----------------!!! "[p]
[_tb_end_text]

[playbgm  volume="50"  time="1000"  loop="false"  storage="Common_Logo_BGM_01.wav"  fadein="true"  ]
[bg  time="3000"  method="crossfade"  storage="BGI/Common_White_01.png"  ]
[tb_hide_message_window  ]
[stopse  time="5000"  buf="0"  fadeout="true"  ]
