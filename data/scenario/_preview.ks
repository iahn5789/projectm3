[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[bg  storage="BGI/Common_Black.jpg"  method="puffIn"  time="10"  ]
[tb_show_message_window] 
[mask_off time=10]
[tb_start_tyrano_code]
[html]
<input required class="text_box form event-setting-element" name="sf.name" type="text" value="" placeholder="Name" data-event-tag="edit" data-event-pm="{&quot;name&quot;:&quot;sf.name&quot;,&quot;color&quot;:&quot;black&quot;,&quot;left&quot;:&quot;714&quot;,&quot;top&quot;:&quot;483&quot;,&quot;size&quot;:&quot;60&quot;,&quot;face&quot;:&quot;TheJamsil5Bold&quot;,&quot;width&quot;:&quot;480&quot;,&quot;autocomplete&quot;:&quot;false&quot;,&quot;height&quot;:&quot;80&quot;,&quot;maxchars&quot;:&quot;5&quot;,&quot;reflect&quot;:&quot;false&quot;,&quot;_tag&quot;:&quot;edit&quot;}" maxlength="5" autocomplete="off" style="padding-left: 8px; color: rgb(0, 0, 0); left: 714px; top: 483px; width: 400px; height: 80px; font-size: 40px; font-family: TheJamsil5Bold; position: absolute;">
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

