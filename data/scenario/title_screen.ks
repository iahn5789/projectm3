[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[playbgm  volume="10"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  ]
*title

[glink  color="btn_30_purple"  text="START"  x="910"  y="395"  size="30"  target="*START"  width="300"  height="80"  _clickable_img=""  ]
[glink  color="btn_30_purple"  text="LOAD"  x="910"  y="495"  size="30"  target="*LOAD"  width="300"  height="80"  _clickable_img=""  ]
[glink  color="btn_30_purple"  storage="title_screen.ks"  size="30"  target="*title"  text="EXIT"  x="910"  y="595"  width="300"  height="80"  _clickable_img=""  ]
[s  ]
*START

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[tb_hide_message_window  ]
[jump  storage="Chapter01_Dream_01.ks"  target=""  ]
[s  ]
*LOAD

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
*EXIT

[s  ]
