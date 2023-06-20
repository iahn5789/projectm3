[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_start_tyrano_code]
[cursor storage = "my_cursor.png"]
[title_first]
[freeimage layer=0]
[_tb_end_tyrano_code]

[tb_keyconfig  flag="0"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  method="fadeIn"  time="10"  ]
*title

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="start" storage="title_screen.ks" target="START" graphic="../image/New_GUI/Title_Bt/Title_Start_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Start_Bt_02.png" width="242" height="100" x="339" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Game_Start_01.wav"]
[button name="load" storage="title_screen.ks" target="LOAD" graphic="../image/New_GUI/Title_Bt/Title_Load_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Load_Bt_02.png" width="242" height="100" x="589" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="config" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Title_Bt/Title_Config_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Config_Bt_02.png" width="242" height="100" x="839" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="gamenote" storage="Gamenote.ks" target="gamenote_01" graphic="../image/New_GUI/Title_Bt/Title_Gamenote_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Gamenote_Bt_02.png" width="242" height="100" x="1089" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="exit" storage="title_screen.ks" target="EXIT" graphic="../image/New_GUI/Title_Bt/Title_Exit_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Exit_Bt_02.png" width="242" height="100" x="1339" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[anim name="start" top=965 time=100 effect=easeInQuad]
[anim name="load" top=965 time=100 effect=easeInQuad]
[anim name="config" top=965 time=100 effect=easeInQuad]
[anim name="gamenote" top=965 time=100 effect=easeInQuad]
[anim name="exit" top=965 time=100 effect=easeInQuad]
[wa]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[call  storage="Particle_Test_Scene_01.ks"  target="*Buble_particle"  ]
[s  ]
*START

[tb_start_tyrano_code]
[clearfix name="config"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="start" top=1300 time=100 effect=easeInQuad]
[anim name="load" top=1300 time=100 effect=easeInQuad]
[anim name="config" top=1300 time=100 effect=easeInQuad]
[anim name="gamenote" top=1300 time=100 effect=easeInQuad]
[anim name="exit" top=1300 time=100 effect=easeInQuad]
[wa]
[delete_particle]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="input_name_scene_01.ks"  target="*l_jump_1"  ]
[s  ]
*LOAD

[tb_start_tyrano_code]
[clearfix name="config"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[anim name="start" top=1300 time=100 effect=easeInQuad]
[anim name="load" top=1300 time=100 effect=easeInQuad]
[anim name="config" top=1300 time=100 effect=easeInQuad]
[anim name="gamenote" top=1300 time=100 effect=easeInQuad]
[anim name="exit" top=1300 time=100 effect=easeInQuad]
[wa]
[_tb_end_tyrano_code]

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
*EXIT

[tb_start_tyrano_code]
[anim name="start" top=1300 time=100 effect=easeInQuad]
[anim name="load" top=1300 time=100 effect=easeInQuad]
[anim name="config" top=1300 time=100 effect=easeInQuad]
[anim name="gamenote" top=1300 time=100 effect=easeInQuad]
[anim name="exit" top=1300 time=100 effect=easeInQuad]
[wa]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[close]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
