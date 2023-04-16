[_tb_system_call storage=system/_Chapter02_Office_01.ks]

*office_01

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[bg  time="1000"  method="crossfade"  storage="943a383299379145946725d58025e83f.jpg"  ]
[tb_start_tyrano_code]
; 강여진 등장
[chara_new name="Kang" storage="chara/Kang_Sc/bin.png" zindex=1 jname="Kang" width="1169" height="2735" ]

[chara_layer name="Kang" part="body" id="1" storage="chara/Kang_SC/Kang_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="2" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="3" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]

[chara_layer name="Kang" part="face" id="1" storage="chara/Kang_SC/Kang_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="2" storage="chara/Kang_SC/Kang_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="3" storage="chara/Kang_SC/Kang_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="4" storage="chara/Kang_SC/Kang_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="5" storage="chara/Kang_SC/Kang_Face_Angry_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="6" storage="chara/Kang_SC/Kang_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="7" storage="chara/Kang_SC/Kang_Face_Worry_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="face" id="8" storage="chara/Kang_SC/Kang_Face_Embarrass_Sc_01.png" zindex=20 ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_show name="Kang" time="100" top="0" left="375" ]
[chara_part name="Kang" body="1" face="4" ]
#한갑수
안 돼![p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
그러니까 왜 안 되는 건데요![p]
[chara_part name="Kang" body="1" face="4" ]
#한갑수
오늘까지 등록을 갱신하는 날인데 동아리 인원이 세 명밖에 없잖아![p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
네 명 다 모였어요! 선생님이 승인만 해주시면 된다구요![p]
[chara_part name="Kang" body="1" face="4" ]
#한갑수
그러니까 내가 말하잖아![p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
아까부터 계속 같은 말만 하시잖아요![p]
#한갑수
그래! 귀찮다고![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="4" ]
#강여진
선생님이 귀찮을 게 어디있어요..동아리 활동은 저희가 하는 건데![p]
#한갑수
너희가 그렇게 활동을 하게 되면 내가 신경 써야 하잖아![r]
나는 그게 귀찮은 거라고[p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
선생님! 너무해요...![p]
#한갑수
흥, 그렇게 말해도 안 되는 건 안 되는 거야 ![p]
[chara_part name="Kang" body="1" face="4" ]
#강여진
너무해...[p]
#한갑수
어허! 다 들린다![p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide name="Kang" time=1 wait=false]
[_tb_end_tyrano_code]

[bg  time="100"  method="crossfade"  storage="Common_Sc_Lobby_Bgi_01.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#&[sf.name]
( 안이 제법 시끄럽네... )[p]
( 무슨 문제라도 있나? )[p]
[chara_part name="Kang" body="1" face="4" ]
[chara_show name="Kang" time="500" top="0" left="553" width="815" height="1903" wait=false ]
#&[sf.name]
( 앗 여진이 나왔다 )[p]
...어떻게 됐어?[p]
[chara_part name="Kang" body="1" face="6" ]
[chara_move name="Kang" time="200" top="0" left="375" width="1169" height="2735" wait=false]
#강여진
응? [p]
#강여진
[chara_part name="Kang" body="3" face="8" ]
아하하... 별일 없을 거야 너무 걱정하지마![p]
#&[sf.name]
( 별일이 있는 것 같은 분위기였는데...  )[p]
[chara_part name="Kang" body="2" face="2" ]
#강여진
일단 부실로 돌아가자![p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide name="Kang" time=1 wait=false]
[_tb_end_tyrano_code]

[jump  storage="Chapter02_Office_01.ks"  target=""  ]
[s  ]
