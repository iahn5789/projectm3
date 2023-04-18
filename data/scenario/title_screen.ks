[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_keyconfig  flag="0"  ]
[mask  time="100"  effect="fadeIn"  color="0x000000"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  method="fadeIn"  ]
*title

[tb_start_tyrano_code]
[button name="start" storage="title_screen.ks" target="START" graphic="../image/New_GUI/Title_Bt/Title_Start_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Start_Bt_02.png" width="242" height="100" x="339" y="965" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Game_Start_01.wav"]
[button name="load" storage="title_screen.ks" target="LOAD" graphic="../image/New_GUI/Title_Bt/Title_Load_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Load_Bt_02.png" width="242" height="100" x="589" y="965" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="config" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Title_Bt/Title_Config_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Config_Bt_02.png" width="242" height="100" x="839" y="965" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="gallery" storage="title_screen.ks" target="GALLERY" graphic="../image/New_GUI/Title_Bt/Title_Gallery_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Gallery_Bt_02.png" width="242" height="100" x="1089" y="965" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="exit" storage="title_screen.ks" target="EXIT" graphic="../image/New_GUI/Title_Bt/Title_Exit_Bt_01.png" enterimg="../image/New_GUI/Title_Bt/Title_Exit_Bt_02.png" width="242" height="100" x="1339" y="965" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[_tb_end_tyrano_code]

[mask_off  time="500"  effect="fadeOut"  ]
[s  ]
*START

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_hide_message_window  ]
[jump  storage="input_name_scene_01.ks"  target="*l_jump_1"  ]
[s  ]
*LOAD

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
*gallery

[jump  storage="Gallery_Screen_01.ks"  target="*gallery"  ]
[showgallery]

[s  ]
*EXIT

[tb_start_tyrano_code]
[close]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
