[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[playbgm  volume="2"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[bg  storage="BGI/Common_Title_Screen.jpg"  ]
*title

[glink  color="black"  text="New&nbsp;Game"  x="75"  y="370"  size="20"  target="*start"  ]
[glink  color="black"  text="Load&nbsp;Game"  x="75"  y="470"  size="20"  target="*load"  ]
[glink  color="black"  storage="title_screen.ks"  size="20"  target="*title"  text="title"  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]
*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
