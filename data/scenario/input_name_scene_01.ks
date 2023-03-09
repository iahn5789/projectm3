[_tb_system_call storage=system/_input_name_scene_01.ks]

*l_jump_1

[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[hidemenubutton]

[bg  storage="BGI/Common_Black.jpg"  method="puffIn"  time="1"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_hide_message_window  ]
[tb_ptext_show  x="715"  y="408"  size="48"  color="0xffffff"  time="1000"  text="너의&nbsp;이름을&nbsp;알려줘"  face="TheJamsil5Bold"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_start_tyrano_code]
[html]
<input required autofocus class="text_box form event-setting-element" name="sf.name" type="text" value="" placeholder="이름" data-event-tag="edit" data-event-pm="{"name":"sf.name","color":"black","left":"714","top":"483","size":"60","face":"TheJamsil5Bold","width":"480","autocomplete":"false","height":"80","maxchars":"5","reflect":"false","_tag":"edit"}" maxlength="5" autocomplete="off" style="border-radius:16px; padding-left: 8px; color: rgb(0, 0, 0); left: 714px; top: 483px; width: 400px; height: 80px; font-size: 32px; font-family: TheJamsil5Bold; position: absolute;">
[endhtml]
[_tb_end_tyrano_code]

[button  storage="input_name_scene_01.ks"  target="*L_name_1"  graphic="button/Common_Button.png"  width="83"  height="47"  x="1032"  y="503"  _clickable_img=""  name="img_7"  ]
[tb_ptext_show  x="715"  y="578"  size="30"  color="0xffffff"  time="1000"  text="최대&nbsp;5글자까지&nbsp;가능합니다."  face="TheJamsil5Bold"  anim="false"  edge="undefined"  shadow="undefined"  ]
[s  ]
*L_name_1

[tb_start_tyrano_code]
[commit name="sf.name"]
[_tb_end_tyrano_code]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Chapter01_Dream_01.ks"  target="*L_input_name"  cond="sf.name!=''"  ]
[s  ]
[tb_start_tyrano_code]
[html]<button data-event-tag="button" data-event-pm="{"storage":"input_name_scene_01.ks","target":"*L_name_1","ext":"","name":"img_7","x":"1059","y":"498","width":"47","height":"47","fix":"false","savesnap":"false","folder":"image","exp":"","prevar":"","visible":"true","hint":"","clickse":"","enterse":"","leavese":"","activeimg":"","clickimg":"","enterimg":"","auto_next":"yes","role":"","_clickable_img":"","_tag":"button"}" style="position: absolute; cursor: pointer; z-index: 99999999; left: 1059px; top: 498px; width: 47px; height: 47px; background-color: "black"; color: "white";">확인</button>
[endhtml]
[_tb_end_tyrano_code]

