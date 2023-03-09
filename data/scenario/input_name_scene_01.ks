[_tb_system_call storage=system/_input_name_scene_01.ks]

*l_jump_1

[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[hidemenubutton]

[bg  storage="BGI/Common_Title_Nickname_01.png"  method="puffIn"  time="1"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[edit  left="714"  top="483"  width="480"  height="80"  size="60"  maxchars="80"  reflect="false"  name="sf.name"  ]
[button  storage="input_name_scene_01.ks"  target="*L_name_"  graphic="icons/save.png"  width="54"  height="54"  x="1129"  y="495"  _clickable_img=""  name="img_7"  ]
[s  ]
*L_name_

[tb_start_tyrano_code]
[commit name="sf.name"]

[_tb_end_tyrano_code]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="Chapter01_Dream_01.ks"  target="*L_input_name"  cond="sf.name!=''"  ]
[s  ]
