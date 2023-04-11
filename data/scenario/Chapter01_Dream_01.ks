[_tb_system_call storage=system/_Chapter01_Dream_01.ks]

*L_input_name

[cm  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[playse  volume="50"  time="1000"  buf="0"  storage="SFX/Emotion_Heart_Beat_01.wav"  loop="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
.....어?[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="BGI/Common_BackStage_01.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="Amb/Amb_Crowd_Loop_01.wav"  loop="true"  fadein="true"  ]
[playbgm  volume="100"  time="1500"  loop="true"  storage="Common_Backstage_01.wav"  fadein="true"  ]
[tb_start_text mode=1 ]
#관객들
와아아아-! [p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="SFX/Heart_Beat_Fast_02.wav"  loop="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
....어어어?!?[p]
[_tb_end_text]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#???
괜찮아? 안색이 좀 안 좋아 보이는데?[p]
이제와서 긴장한거야? 하! 바보같긴..![p]
사람이 정말 많은 것 같아...[p]
#???
너무 긴장하지마! 원래 하던 대로만 하면 되는거야![p]
...시작한다...[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_text mode=1 ]
#???
자! 숨 들이마시고...[p]
가자![p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="SFX/Common_Mic_Feedback_01.wav"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_text mode=1 ]
#사회자
오래 기다렸습니다![p]
#관객들
와아아아-![p]
[_tb_end_text]

[tb_start_tyrano_code]
#사회자
이번 순서는.....................        [er]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[stopse  time="5000"  buf="0"  fadeout="true"  ]
[stopse  time="1000"  buf="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="Chapter01_home_01.ks"  target="*home"  ]
[s  ]
