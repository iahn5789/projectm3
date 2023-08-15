[_tb_system_call storage=system/_Gamenote.ks]

*gamenote_01

[tb_clear_images]

[tb_start_tyrano_code]
[clearfix name="config"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[freeimage layer="0"]
[_tb_end_tyrano_code]

[cm  ]
[tb_ptext_hide  time="1"  ]
[bg  time="1"  method="crossfade"  storage="BGI/Common_Title_Screen_02.jpg"  ]
[tb_start_tyrano_code]
[image name=gamenote layer=0 left=-1920 top=0 page=fore visible=true storage = ../image/New_GUI/Gamenote_UI/Gamenote_Bgi_01.png ]
[button name="gallery" storage="Gallery.ks" target="gallery_01" graphic="../image/New_GUI/Gamenote_UI/CG_Bt_01.png" enterimg="../image/New_GUI/Gamenote_UI/CG_Bt_02.png" width="374" height="601" x="-1920" y="239" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="capture" storage="replay.ks" target="capture_01" graphic="../image/New_GUI/Gamenote_UI/Capture_Bt_01.png" enterimg="../image/New_GUI/Gamenote_UI/Capture_Bt_02.png" width="374" height="601" x="-1920" y="239" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="credit" storage="Credit_01.ks" target="credit_01" graphic="../image/New_GUI/Gamenote_UI/Credit_Bt_01.png" enterimg="../image/New_GUI/Gamenote_UI/Credit_Bt_02.png" width="374" height="601" x="-1920" y="239" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="bt" storage="" target="bt" graphic="../image/New_GUI/Gamenote_UI/Bt_01.png" enterimg="../image/New_GUI/Gamenote_UI/Bt_02.png" width="374" height="601" x="-1920" y="239" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gamenote.ks" target="back" graphic="../image/New_GUI/Gamenote_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/Gamenote_UI/UI_Close_Bt_02.png" width="110" height="56" x="-1920" y="1000" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]
[anim name="gallery" left=82 time=100 effect=easeInQuad]
[anim name="capture" left=541 time=300 effect=easeInQuad]
[anim name="credit" left=1000 time=500 effect=easeInQuad]
[anim name="bt" left=1459 time=700 effect=easeInQuad]
[anim name="back" left=50 time=300 effect=easeInQuad]
[anim name="gamenote" left=0 time=300 effect=easeInQuad]
[wa]
[_tb_end_tyrano_code]

[s  ]
*back

[tb_start_tyrano_code]
[anim name="gamenote" left=-1920 time=300 effect=easeInQuad]
[anim name="gallery" left=-1920 time=300 effect=easeInQuad]
[anim name="capture" left=-1920 time=300 effect=easeInQuad]
[anim name="credit" left=-1920 time=300 effect=easeInQuad]
[anim name="bt" left=-1920 time=100 effect=easeInQuad]
[anim name="back" left=-1920 time=300 effect=easeInQuad]
[wa]
[_tb_end_tyrano_code]

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="0"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*particleon"  ]
[s  ]
