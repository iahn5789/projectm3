[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[mask  time="100"  effect="fadeIn"  color="0x000000"  ]
[playbgm  volume="0"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  ]
*title

[tb_start_tyrano_code]
[button name="start" storage="title_screen.ks" target="START" graphic="../image/New_GUI/Title_Bt/button_transparent.png" width="446" height="116" x="1310" y="305"]
[button name="load" storage="title_screen.ks" target="LOAD" graphic="../image/New_GUI/Title_Bt/button_transparent.png" width="446" height="116" x="1336" y="458"]
[button name="gallery" storage="title_screen.ks" target="gallery" graphic="../image/New_GUI/Title_Bt/button_transparent.png" width="446" height="116" x="1362" y="610"]
[button name="config" storage="title_screen.ks" target="START" graphic="../image/New_GUI/Title_Bt/button_transparent.png" width="446" height="116" x="1385" y="763"]
[button name="exit" storage="title_screen.ks" target="START" graphic="../image/New_GUI/Title_Bt/button_transparent.png" width="446" height="116" x="1411" y="916"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html]
<link href="title.css" type="text/css" rel="stylesheet">
[endhtml]
[_tb_end_tyrano_code]

[mask_off  time="500"  effect="fadeOut"  ]
[s  ]
*START

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[stopbgm  time="2000"  fadeout="true"  ]
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

*EXIT

[s  ]
