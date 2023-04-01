[_tb_system_call storage=system/_Test_Start_01.ks]

*teststart

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=0 opacity=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=0 left=329 top=0  storage = ../image/New_GUI/Test_In_UI/Test_Paper_Bgi_01.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[mask_off  time="2000"  effect="fadeOut"  ]
[l  ]
[tb_start_tyrano_code]
[anim name=testpaper top="-=900" time=1000  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[camera zoom=1 x=0 y=-0 time=800]
[camera zoom=1.8 x=0 y=-0 time=1000]
[_tb_end_tyrano_code]

[bg  time="0"  method="crossfade"  storage="Common_Test.png"  ]
[jump  storage="Test_Start_01.ks"  target="*quiz_01"  ]
[s  ]
*quiz_01

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="0"]
[camera zoom=1 x=0 y=-0 time=800]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[layopt layer=0 visible=true]
[image layer=0 left=0 top=0 time=1500ms storage = ../image/New_GUI/Test_In_UI/Quiz_01_01.png page=fore visible=true name=testpaper ]
[_tb_end_tyrano_code]

[s  ]
