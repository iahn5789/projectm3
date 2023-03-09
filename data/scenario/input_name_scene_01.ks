[_tb_system_call storage=system/_input_name_scene_01.ks]

[hidemenubutton]

[bg  storage="BGI/Common_Black.jpg"  method="puffIn"  time="1"  ]
[tb_hide_message_window  ]
[edit  left="760"  top="445"  width="400"  height="130"  size="60"  maxchars="80"  reflect="false"  name="sf.name"  ]
[button  storage="input_name_scene_01.ks"  target="*L_name_"  graphic="ok_button.png"  width="131"  height="60"  x="1200"  y="535"  _clickable_img=""  name="img_4"  ]
[glink  color="btn_32_red"  storage="input_name_scene_01.ks"  size="20"  x="1426"  y="566"  width=""  height=""  text="확인"  _clickable_img=""  target="*L_name_"  ]
[s  ]
*L_name_

[tb_start_tyrano_code]
[commit name="sf.name"]

[_tb_end_tyrano_code]

[jump  storage="Chapter01_Dream_01.ks"  target=""  cond="sf.name!=''"  ]
[s  ]
