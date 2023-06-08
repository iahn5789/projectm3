[_tb_system_call storage=system/_input_name_scene_01.ks]

*l_jump_1

[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[tb_keyconfig  flag="0"  ]
[hidemenubutton]

[bg  storage="BGI/Common_Black.jpg"  method="puffIn"  time="1"  ]
[mask_off  time="3000"  effect="fadeOut"  ]
[playse  volume="150"  time="1000"  buf="0"  storage="Amb/Amb_Crowd_Loop_cutoff_01.wav"  fadein="true"  loop="true"  ]
[tb_hide_message_window  ]
[tb_ptext_show  x="715"  y="408"  size="48"  color="0xffffff"  time="1000"  text="너의&nbsp;이름을&nbsp;알려줘"  face="TheJamsil5Bold"  anim="false"  edge="undefined"  shadow="undefined"  ]
[button  storage="input_name_scene_01.ks"  target="*L_name_1"  graphic="button/Common_Button.png"  width="83"  height="47"  x="1032"  y="503"  _clickable_img=""  name="img_8"  ]
[tb_start_tyrano_code]
[html]
<input required autofocus class="text_box form event-setting-element" name="sf.name" type="text" value="" placeholder="정민" data-event-tag="edit" data-event-pm='{"name":"sf.name","color":"black","left":"714","top":"483","size":"60","face":"TheJamsil5Bold","width":"480","autocomplete":"false","height":"80","maxchars":"5","reflect":"false","_tag":"edit"}' maxlength="4" autocomplete="off" style="border-radius:16px; padding-left: 8px; color: rgb(0, 0, 0); left: 714px; top: 483px; width: 400px; height: 80px; font-size: 32px; font-family: TheJamsil5Bold; position: absolute;"/>
[endhtml]
[_tb_end_tyrano_code]

[tb_ptext_show  x="715"  y="578"  size="30"  color="0xffffff"  time="1000"  text="최대&nbsp;4글자까지&nbsp;가능합니다."  face="TheJamsil5Bold"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="715"  y="620"  size="20"  color="0xffffff"  time="1000"  text="이름을&nbsp;입력하지&nbsp;않을&nbsp;시&nbsp;기본&nbsp;이름&nbsp;[정민]로&nbsp;시작합니다."  face="TheJamsil5Bold"  anim="false"  edge="undefined"  shadow="undefined"  ]
[s  ]
*name

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[button  storage="input_name_scene_01.ks"  target="*L_name_1"  graphic="button/Common_Button.png"  width="83"  height="47"  x="1032"  y="503"  _clickable_img=""  name="img_8"  ]
[tb_start_tyrano_code]
[html]
<input required autofocus class="text_box form event-setting-element" name="sf.name" type="text" value="" placeholder="정민" data-event-tag="edit" data-event-pm='{"name":"sf.name","color":"black","left":"714","top":"483","size":"60","face":"TheJamsil5Bold","width":"480","autocomplete":"false","height":"80","maxchars":"5","reflect":"false","_tag":"edit"}' maxlength="4" autocomplete="off" style="border-radius:16px; padding-left: 8px; color: rgb(0, 0, 0); left: 714px; top: 483px; width: 400px; height: 80px; font-size: 32px; font-family: TheJamsil5Bold; position: absolute;"/>
[endhtml]
[_tb_end_tyrano_code]

[s  ]
*L_name_1

[tb_start_tyrano_code]
[commit name="sf.name"]
[_tb_end_tyrano_code]

[jump  storage="input_name_scene_01.ks"  target="*kangcheck"  cond="sf.name!='강여진'"  ]
[jump  storage="input_name_scene_01.ks"  target="*shake"  ]
[s  ]
*kangcheck

[jump  storage="input_name_scene_01.ks"  target="*jincheck"  cond="sf.name!='진다영'"  ]
[jump  storage="input_name_scene_01.ks"  target="*shake"  ]
[s  ]
*jincheck

[jump  storage="input_name_scene_01.ks"  target="*sulcheck"  cond="sf.name!='설나희'"  ]
[jump  storage="input_name_scene_01.ks"  target="*shake"  ]
[s  ]
*sulcheck

[jump  storage="input_name_scene_01.ks"  target="*daeyong"  cond="sf.name!='전대용'"  ]
[jump  storage="input_name_scene_01.ks"  target="*shake"  ]
[s  ]
*daeyong

[jump  storage="input_name_scene_01.ks"  target="*name_init"  ]
[s  ]
*name_init

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_ptext_hide  time="1000"  ]
[tb_start_tyrano_code]
[if exp=" sf.name ===  f.null"]
[eval exp="sf.name='정민'"]
[jump storage="Chapter01_Dream_01.ks" target="L_input_name"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="Chapter01_Dream_01.ks"  target="*L_input_name"  cond="sf.name!=''"  ]
[s  ]
[tb_start_tyrano_code]
[html]<button data-event-tag="button" data-event-pm="{"storage":"input_name_scene_01.ks","target":"*L_name_1","ext":"","name":"img_7","x":"1059","y":"498","width":"47","height":"47","fix":"false","savesnap":"false","folder":"image","exp":"","prevar":"","visible":"true","hint":"","clickse":"","enterse":"","leavese":"","activeimg":"","clickimg":"","enterimg":"","auto_next":"yes","role":"","_clickable_img":"","_tag":"button"}" style="position: absolute; cursor: pointer; z-index: 99999999; left: 1059px; top: 498px; width: 47px; height: 47px; background-color: "black"; color: "white";">확인</button>
[endhtml]
[_tb_end_tyrano_code]

*shake

[tb_start_tyrano_code]

[ptext layer="2" name="name_error" text="불가능한&nbsp;이름입니다." size="30" x="715" y="678" color="red" face="TheJamsil5Bold" ]

[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="true"  vmax="10"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
[free name="name_error" layer="2" ]
[_tb_end_tyrano_code]

[jump  storage="input_name_scene_01.ks"  target="*name"  ]
[s  ]
