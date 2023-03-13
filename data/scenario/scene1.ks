[_tb_system_call storage=system/_scene1.ks]

[stopbgm  time="7000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="BGI/Common_Black.jpg"  ]
[playbgm  volume="10"  time="1000"  loop="true"  storage="Common_Daily_BGM_01.mp3"  ]
[tb_start_tyrano_code]

[_tb_end_tyrano_code]

[s  ]
[cm  ]
[font  size="30"  color="0xffffff"  face="The&nbsp;Jamsil&nbsp;5&nbsp;Bold"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
; 캐릭터 등장
[chara_new name="yuko" storage="chara/yuko/hair_back/Long.png" jname="yuko" ]
[chara_layer name="yuko" part="body_back" id="1" storage="chara/yuko/body_back/bodyback.png" zindex=1 ]
[chara_layer name="yuko" part="body_back" id="2" storage="chara/yuko/body_back/bodyback2.png" zindex=1 ]

[chara_layer name="yuko" part="body_front" id="1" storage="chara/yuko/body_front/Body_Front.png" zindex=10 ]
[chara_layer name="yuko" part="body_front" id="2" storage="chara/yuko/body_front/bodyfront2.png" zindex=10 ]

[chara_layer name="yuko" part="eye" id="1" storage="chara/yuko/eye/eye.png" zindex=20 ]
[chara_layer name="yuko" part="eye" id="2" storage="chara/yuko/eye/eye2.png" zindex=20 ]

[chara_layer name="yuko" part="hair_front" id="1" storage="chara/yuko/hair_front/hair_front.png" zindex=40 ]
[chara_layer name="yuko" part="hair_front" id="2" storage="chara/yuko/hair_front/hair_front_2.png" zindex=40 ]

[chara_layer name="yuko" part="head" id="1" storage="chara/yuko/head/head.png" zindex=11]

[chara_layer name="yuko" part="face" id="1" storage="chara/yuko/face_front/face_front.png" zindex=20 ]
[chara_layer name="yuko" part="face" id="2" storage="chara/yuko/face_front/face_front_2.png" zindex=20 ]


[chara_show name="yuko" top="300"]

[_tb_end_tyrano_code]

[call  storage="input_zoom_in_out.ks"  target="*L_zoomin_yoko"  ]
[tb_start_text mode=1 ]
#yuko
TEST 1[p]
TEST 2[p]

[_tb_end_text]

[tb_start_tyrano_code]
#yuko
TEST3                                                                        [er]
TEST4[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;[chara_move name="yuko" time=100 left="-=30" top="-=80" width=360 height=480 anim="true" effect="jswing" wait="false"]
;512 832
[chara_part name="yuko" hair_front="2" face="2" eye="2" body_back="2" body_front="2"]
[_tb_end_tyrano_code]

[call  storage="input_zoom_in_out.ks"  target="*L_zoomout_yoko"  ]
[tb_start_text mode=1 ]
#ayana
TEST 2[p]
[_tb_end_text]

[tb_start_tyrano_code]
;[chara_move name="yuko" time=100 left="+=30" top="+=80" width=300 height=400 anim="true" effect="jswing" wait="false"]
[_tb_end_tyrano_code]

[call  storage="input_zoom_in_out.ks"  target="*L_zoomin_yoko"  ]
[tb_start_text mode=1 ]
#yuko
TEST 3[p]
[_tb_end_text]

[chara_show  name="ayana"  time="1000"  wait="true"  left="284"  top="109"  width=""  height=""  reflect="false"  ]
[tb_start_text mode=1 ]
#아야나
" 여긴 어디야? "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_05_black"  storage="scene2.ks"  size="20"  text="나는&nbsp;니가&nbsp;좋아"  target="*123"  x="278"  y="494"  width="700"  height="100"  _clickable_img=""  ]
[s  ]
