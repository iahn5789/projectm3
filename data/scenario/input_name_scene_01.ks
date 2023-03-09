[_tb_system_call storage=system/_input_name_scene_01.ks]

*l_jump_1

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[hidemenubutton]

[bg  storage="BGI/Common_Black.jpg"  method="puffIn"  time="1"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[edit  left="760"  top="445"  width="400"  height="130"  size="60"  maxchars="80"  reflect="false"  name="sf.name"  ]
[button  storage="input_name_scene_01.ks"  target="*L_name_"  graphic="button/save2.png"  width="70"  height="25"  x="1188"  y="515"  _clickable_img=""  name="img_4"  ]
[glink  color="btn_32_red"  storage="input_name_scene_01.ks"  size="20"  x="1426"  y="566"  width=""  height=""  text="확인"  _clickable_img=""  target="*L_name_"  ]
[s  ]
*L_name_

[tb_start_tyrano_code]
[commit name="sf.name"]

[_tb_end_tyrano_code]

[jump  storage="Chapter01_Dream_01.ks"  target="*L_input_name"  cond="sf.name!=''"  ]
[s  ]
