[_tb_system_call storage=system/_Profile_Kang_01.ks]

*Profile_Kang_00

[bg  time="1000"  method="crossfade"  storage="Profile_BGI/Profile_Kang_01.png"  ]
[tb_start_tyrano_code]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=23 x=166 y=931 width=97 height=31 edge="0xFFFFFF" color="0xFF4F6E" align="center" vertical=false face="NanumGothicBold" ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
*profile_kang_01

[tb_start_tyrano_code]
[cm]
[image layer=1 width=399 height=42 left=906 top=622 page=fore visible=true name=02_01 storage ="../image/New_GUI/Profile_UI/Profile_UI_Kang/02_01.png" zindex=10 ]
[image layer=1 width=902 height=679 left=862 top=245 page=fore visible=true name=profilekang01 storage ="../image/New_GUI/Profile_UI/UI_Profile_Kang_01.png" zindex=5 ]

[button name="next" storage="Profile_Kang_01.ks" target="profile_kang_02" graphic="../image/New_GUI/Profile_UI/Button_Next_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Next_02.png" width="80" height="40" x="1656" y="865" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="profilebt" storage="Profile_Kang_01.ks" target="profile_kang_01" graphic="../image/New_GUI/Profile_UI/Button_Profile_03.png" enterimg="../image/New_GUI/Profile_UI/Button_Profile_02.png" width="203" height="65" x="862" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="storybt" storage="Profile_Kang_01.ks" target="profile_kang_01" graphic="../image/New_GUI/Profile_UI/Button_Story_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Story_02.png" width="203" height="65" x="1085" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Profile_Kang_01.ks" target="back" graphic="../image/New_GUI/Profile_UI/Button_Back_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Back_02.png" width="110" height="56" x="13" y="13" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]

[if exp="f.kTopDay > '2'"]
[free name=02_01 layer="1"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*profile_kang_02

[tb_start_tyrano_code]
[cm]
[html]
<div class="profilekang01">
<div style="position: absolute; left:862px; top:245px; z-index: 9999;">
<img class="img" src="data/image/New_GUI/Profile_UI/UI_Profile_Kang_02.png">
</div>
[endhtml]
[button name="before" storage="Profile_Kang_01.ks" target="profile_kang_01" graphic="../image/New_GUI/Profile_UI/Button_Before_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Before_02.png" width="80" height="40" x="1656" y="865" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="profilebt" storage="Profile_Kang_01.ks" target="profile_kang_02" graphic="../image/New_GUI/Profile_UI/Button_Profile_03.png" enterimg="../image/New_GUI/Profile_UI/Button_Profile_02.png" width="203" height="65" x="862" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="storybt" storage="Profile_Kang_01.ks" target="profile_kang_01" graphic="../image/New_GUI/Profile_UI/Button_Story_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Story_02.png" width="203" height="65" x="1085" y="156" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Profile_Kang_01.ks" target="back" graphic="../image/New_GUI/Profile_UI/Button_Back_01.png" enterimg="../image/New_GUI/Profile_UI/Button_Back_02.png" width="110" height="56" x="13" y="13" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*back

[jump  storage="Test_Wait_01.ks"  target="*bgmstart"  ]
[s  ]
