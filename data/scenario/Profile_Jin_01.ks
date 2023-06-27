[_tb_system_call storage=system/_Profile_Jin_01.ks]

[mask  time="300"  effect="fadeIn"  color="0x000000"  ]
*profile_jin_00

[tb_keyconfig  flag="0"  ]
[bg  time="10"  method="crossfade"  storage="Profile_BGI/Profile_Jin_01.png"  ]
[tb_start_tyrano_code]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[free name="charinfo" layer=1 ]
[clearfix name="lootcommon"]
[clearfix name="lootkang"]
[clearfix name="lootjin"]
[clearfix name="lootsul"]
[clearfix name="setting"]

[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=23 x=166 y=931 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[cm]
[image layer=1 width=399 height=42 left=906 top=620 page=fore visible=true name=02_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=620 page=fore visible=true name=02_02 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_02.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=667 page=fore visible=true name=02_03 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_03.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=667 page=fore visible=true name=02_04 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_04.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=715 page=fore visible=true name=07_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/07_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=715 page=fore visible=true name=10_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/10_01.png" zindex=10 ]
[image layer=1 width=902 height=679 left=862 top=245 page=fore visible=true name=profilejin01 storage ="../image/New_GUI/Profile_UI/UI_Profile_Jin_01.png" zindex=5 ]

[button name="next" storage="Profile_Jin_01.ks" target="profile_jin_02" graphic="../image/New_GUI/Profile_UI/Button_Next_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Next_02.png" width="80" height="40" x="1656" y="865" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="profilebt" storage="Profile_Jin_01.ks" target="profile_jin_01" graphic="../image/New_GUI/Profile_UI/Button_Profile_03.png" enterimg="../image/New_GUI/Profile_UI/Button_Profile_02.png" width="203" height="65" x="862" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="storybt" storage="Profile_Jin_01.ks" target="profile_jin_01" graphic="../image/New_GUI/Profile_UI/Button_Story_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Story_02.png" width="203" height="65" x="1085" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Profile_Jin_01.ks" target="back" graphic="../image/New_GUI/Profile_UI/Button_Back_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Back_02.png" width="110" height="56" x="13" y="13" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]

[if exp="f.jTopDay >= '2'"]
[free name="02_01" layer=1]
[free name="02_02" layer=1]
[free name="02_03" layer=1]
[free name="02_04" layer=1]
[endif]
[if exp="f.jTopDay >= '7'"]
[free name="07_01" layer=1]
[endif]
[if exp="f.jTopDay >= '10'"]
[free name="10_01" layer=1]
[endif]
[_tb_end_tyrano_code]

[mask_off  time="300"  effect="fadeOut"  ]
[s  ]
*profile_jin_01

[tb_start_tyrano_code]
[cm]

[image layer=1 width=399 height=42 left=906 top=620 page=fore visible=true name=02_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=620 page=fore visible=true name=02_02 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_02.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=667 page=fore visible=true name=02_03 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_03.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=667 page=fore visible=true name=02_04 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/02_04.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=715 page=fore visible=true name=07_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/07_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=715 page=fore visible=true name=10_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/10_01.png" zindex=10 ]

[free name=profilejin02 layer="1"]
[image layer=1 width=902 height=679 left=862 top=245 page=fore visible=true name=profilejin01 storage ="../image/New_GUI/Profile_UI/UI_Profile_Jin_01.png" zindex=5 ]
[button name="next" storage="Profile_Jin_01.ks" target="profile_jin_02" graphic="../image/New_GUI/Profile_UI/Button_Next_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Next_02.png" width="80" height="40" x="1656" y="865" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="profilebt" storage="Profile_Jin_01.ks" target="profile_jin_01" graphic="../image/New_GUI/Profile_UI/Button_Profile_03.png" enterimg="../image/New_GUI/Profile_UI/Button_Profile_02.png" width="203" height="65" x="862" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="storybt" storage="Profile_Jin_01.ks" target="profile_jin_01" graphic="../image/New_GUI/Profile_UI/Button_Story_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Story_02.png" width="203" height="65" x="1085" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Profile_Jin_01.ks" target="back" graphic="../image/New_GUI/Profile_UI/Button_Back_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Back_02.png" width="110" height="56" x="13" y="13" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]

[free name=03_01 layer="1"]
[free name=03_02 layer="1"]
[free name=03_03 layer="1"]
[free name=04_01 layer="1"]
[free name=04_02 layer="1"]
[free name=05_01 layer="1"]
[free name=05_02 layer="1"]
[free name=05_03 layer="1"]
[free name=06_01 layer="1"]
[free name=08_01 layer="1"]
[free name=08_02 layer="1"]
[free name=09_01 layer="1"]

[if exp="f.jTopDay >= '2'"]
[free name="02_01" layer=1]
[free name="02_02" layer=1]
[free name="02_03" layer=1]
[free name="02_04" layer=1]
[endif]
[if exp="f.jTopDay >= '7'"]
[free name="07_01" layer=1]
[endif]
[if exp="f.jTopDay >= '10'"]
[free name="10_01" layer=1]
[endif]
[_tb_end_tyrano_code]

[s  ]
*profile_jin_02

[tb_start_tyrano_code]
[cm]

[image layer=1 width=399 height=42 left=906 top=336 page=fore visible=true name=03_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/03_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=336 page=fore visible=true name=03_02 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/03_02.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=383 page=fore visible=true name=03_03 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/03_03.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=477 page=fore visible=true name=04_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/04_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=477 page=fore visible=true name=04_02 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/04_02.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=524 page=fore visible=true name=05_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/05_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=524 page=fore visible=true name=05_02 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/05_02.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=571 page=fore visible=true name=05_03 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/05_03.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=571 page=fore visible=true name=06_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/06_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=383 page=fore visible=true name=08_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/08_01.png" zindex=10 ]
[image layer=1 width=399 height=42 left=906 top=430 page=fore visible=true name=08_02 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/08_02.png" zindex=10 ]
[image layer=1 width=399 height=42 left=1321 top=430 page=fore visible=true name=09_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Jin/09_01.png" zindex=10 ]

[free name=profilejin01 layer="1"]
[image layer=1 width=902 height=679 left=862 top=245 page=fore visible=true name=profilejin02 storage ="../image/New_GUI/Profile_UI/UI_Profile_Jin_02.png" zindex=5 ]
[button name="before" storage="Profile_Jin_01.ks" target="profile_jin_01" graphic="../image/New_GUI/Profile_UI/Button_Before_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Before_02.png" width="80" height="40" x="1656" y="865" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="profilebt" storage="Profile_Jin_01.ks" target="profile_jin_02" graphic="../image/New_GUI/Profile_UI/Button_Profile_03.png" enterimg="../image/New_GUI/Profile_UI/Button_Profile_02.png" width="203" height="65" x="862" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="storybt" storage="Profile_Jin_01.ks" target="profile_jin_01" graphic="../image/New_GUI/Profile_UI/Button_Story_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Story_02.png" width="203" height="65" x="1085" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Profile_Jin_01.ks" target="back" graphic="../image/New_GUI/Profile_UI/Button_Back_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Back_02.png" width="110" height="56" x="13" y="13" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]

[free name=02_01 layer="1"]
[free name=02_02 layer="1"]
[free name=02_03 layer="1"]
[free name=02_04 layer="1"]
[free name=07_01 layer="1"]
[free name=10_01 layer="1"]

[if exp="f.jTopDay >= '3'"]
[free name="03_01" layer=1]
[free name="03_02" layer=1]
[free name="03_03" layer=1]
[endif]
[if exp="f.jTopDay >= '4'"]
[free name="04_01" layer=1]
[free name="04_02" layer=1]
[endif]
[if exp="f.jTopDay >= '5'"]
[free name="05_01" layer=1]
[free name="05_02" layer=1]
[free name="05_03" layer=1]
[endif]
[if exp="f.jTopDay >= '6'"]
[free name="06_01" layer=1]
[endif]
[if exp="f.jTopDay >= '8'"]
[free name="08_01" layer=1]
[free name="08_02" layer=1]
[endif]
[if exp="f.jTopDay >= '9'"]
[free name="09_01" layer=1]
[endif]
[_tb_end_tyrano_code]

[s  ]
*back

[jump  storage="Test_Wait_01.ks"  target="*bgmstart"  ]
[s  ]
