[_tb_system_call storage=system/_title_screen.ks]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[hidemenubutton]

[tb_start_tyrano_code]
[cursor storage = "my_cursor.png"]
[title_first]
[freeimage layer=0]

[_tb_end_tyrano_code]

[mask_off  time="500"  effect="fadeOut"  ]
[playbgm  volume="100"  time="1"  loop="true"  storage="Common_Title_BGM_Loop_01.wav"  ]
[bgmovie  time="1"  volume="0"  loop="false"  storage="title_intro_02.mp4"  ]
[tb_start_tyrano_code]
[wait_bgmovie]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  method="fadeIn"  time="1"  ]
[stop_bgmovie  time="500"  ]
[tb_start_tyrano_code]
[image layer=1 width=280 height=243 left=1600 top=40 page=fore visible=true name=titlelogo storage = ../image/New_GUI/UI_Logo_01.png time=500 ]
[_tb_end_tyrano_code]

*particleon

[call  storage="Particle_Test_Scene_01.ks"  target="*Buble_particle"  ]
[tb_start_tyrano_code]
[cm]
[clearfix name="config"]
[button name="start" storage="title_screen.ks" target="START" graphic="../image/New_GUI/Title_Bt/Title_Start_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Start_Bt_02.png" width="242" height="100" x="339" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Game_Start_01.wav"]
[button name="load" storage="title_screen.ks" target="LOAD" graphic="../image/New_GUI/Title_Bt/Title_Load_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Load_Bt_02.png" width="242" height="100" x="589" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="config" storage="title_screen.ks" target="config" graphic="../image/New_GUI/Title_Bt/Title_Config_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Config_Bt_02.png" width="242" height="100" x="839" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="gamenote" storage="title_screen.ks" target="gamenote" graphic="../image/New_GUI/Title_Bt/Title_Gamenote_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Gamenote_Bt_02.png" width="242" height="100" x="1089" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="exit" storage="title_screen.ks" target="EXIT" graphic="../image/New_GUI/Title_Bt/Title_Exit_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Exit_Bt_02.png" width="242" height="100" x="1339" y="1300" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[anim name="start" top=965 time=500 effect=easeInQuad]
[anim name="load" top=965 time=500 effect=easeInQuad]
[anim name="config" top=965 time=500 effect=easeInQuad]
[anim name="gamenote" top=965 time=500 effect=easeInQuad]
[anim name="exit" top=965 time=500 effect=easeInQuad]
[wa]
[_tb_end_tyrano_code]

[s  ]
*title

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=280 height=243 left=1600 top=40 page=fore visible=true name=titlelogo storage = ../image/New_GUI/UI_Logo_01.png time=10 ]
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
[delete_particle particle_name=buble_particle]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="input_name_scene_01.ks"  target="*l_jump_1"  ]
[s  ]
*LOAD

[tb_start_tyrano_code]
[delete_particle particle_name=buble_particle]
[clearfix name="config"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;[anim name="start" top=1300 time=100 effect=easeInQuad]
;[anim name="load" top=1300 time=100 effect=easeInQuad]
;[anim name="config" top=1300 time=100 effect=easeInQuad]
;[anim name="gamenote" top=1300 time=100 effect=easeInQuad]
;[anim name="exit" top=1300 time=100 effect=easeInQuad]
;[wa]
[_tb_end_tyrano_code]

[cm  ]
[showload]

[jump  target="*particleon"  storage=""  ]
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
*config

[tb_start_tyrano_code]
[delete_particle particle_name=buble_particle]
[sleepgame storage="config.ks"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*particleon"  ]
[s  ]
*gamenote

[tb_start_tyrano_code]
[delete_particle particle_name=buble_particle]
[_tb_end_tyrano_code]

[jump  storage="Gamenote.ks"  target="*gamenote_01"  ]
[s  ]
