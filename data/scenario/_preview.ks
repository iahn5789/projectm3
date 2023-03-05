[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[cm  ]
[bg  time="1000"  method="crossfade"  storage="BGI/Common_Black.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
TEST 1[p]
[_tb_end_text]

[chara_show  name="ayana"  time="1000"  wait="true"  left="284"  top="109"  width=""  height=""  reflect="false"  ]
[tb_start_text mode=1 ]
#아야나
" 여긴 어디야? "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_05_black"  storage="scene2.ks"  size="20"  text="나는&nbsp;니가&nbsp;좋아"  target="*123"  x="278"  y="494"  width="700"  height="100"  _clickable_img=""  ]
[s  ]
