[_tb_system_call storage=system/_title_produce_01.ks]

*in01

[tb_start_tyrano_code]
[camera zoom=1.5 x=300 y=0 time=200 wait=false]
[_tb_end_tyrano_code]

[bg  storage="BGI/Common_Title_Screen_02.jpg"  method="fadeIn"  time="10"  ]
[tb_start_tyrano_code]
[camera zoom=2.3 x=-500 y=260 time=345 wait=true]
[_tb_end_tyrano_code]

[mask  time="330"  effect="slideInDown"  color="0x000000"  ]
[tb_start_tyrano_code]
[camera zoom=1.5 x=150 y=-150 time=2 wait=false]
[_tb_end_tyrano_code]

[mask_off  time="330"  effect="slideOutDown"  ]
[tb_start_tyrano_code]
[camera zoom=2.3 x=50 y=250 time=345 wait=true]
[_tb_end_tyrano_code]

[mask  time="330"  effect="slideInLeft"  color="0x000000"  graphic=""  storage=""  ]
[tb_start_tyrano_code]
[camera zoom=1.5 x=-200 y=100 time=2 wait=false]
[_tb_end_tyrano_code]

[mask_off  time="330"  effect="slideOutRight"  ]
[tb_start_tyrano_code]
[camera zoom=2.3 x=450 y=100 time=345 wait=true]
[_tb_end_tyrano_code]

[mask  time="330"  effect="slideInUp"  color="0x000000"  ]
[tb_start_tyrano_code]
[camera zoom=10 x=0 y=-200 time=345 wait=false]
[_tb_end_tyrano_code]

[mask_off  time="330"  effect="vanishOut"  ]
[tb_start_tyrano_code]
[camera zoom=1 x=0 y=0 time=790 wait=true]
[_tb_end_tyrano_code]

[call  storage="Particle_Test_Scene_01.ks"  target="*Buble_particle"  ]
[quake  time="300"  count="5"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
[image layer=1 width=831 height=732 left=539 top=174 page=fore visible=true name=titlelogo storage = ../image/New_GUI/UI_Logo_01.png time=500 ]
[anim name=titlelogo width=450 height=391 left=735 top=540 time=3000]
[wa]
[anim name=titlelogo width=450 height=391 left=735 top=540 time=1000]
[wa]
[anim name=titlelogo width=224 height=195 left=10 top=10 time=1000]
[reset_camera]
[_tb_end_tyrano_code]

[bg  storage="BGI/Common_Title_Screen.jpg"  method="fadeIn"  time="1000"  ]
[return  ]
