[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[playbgm  volume="10"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  ]
*title

[glink  color="btn_30_purple"  text="START"  x="1404"  y="597"  size="35"  target="*START"  width="400"  height="100"  _clickable_img=""  ]
[glink  color="btn_30_purple"  text="LOAD"  x="1404"  y="717"  size="35"  target="*LOAD"  width="400"  height="100"  _clickable_img=""  ]
[glink  color="btn_30_purple"  storage="title_screen.ks"  size="35"  target="*title"  text="EXIT"  x="1404"  y="837"  width="400"  height="100"  _clickable_img=""  ]
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
