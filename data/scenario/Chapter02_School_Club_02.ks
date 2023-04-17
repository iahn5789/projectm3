[_tb_system_call storage=system/_Chapter02_School_Club_02.ks]

*l_in

[bg  time="1"  method="crossfade"  storage="57387fa831415154b4b2a90a.jpg"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#강여진
무슨 이야기 하고 있었어? 나도 끼워줘![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
; 강여진 등장
[chara_new name="Kang" storage="chara/Kang_Sc/bin.png" zindex=1 jname="Kang" width="813" height="1903" ]

[chara_layer name="Kang" part="body" id="1" storage="chara/Kang_SC/Kang_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="2" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Kang" part="body" id="3" storage="chara/Kang_SC/Kang_Body_Sc_03.png" zindex=20 ]

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
[chara_part name="Kang" body="1" face="1" ]
[chara_show name="Kang" top="0" left="553" time=300 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#&[sf.name]
어...별 일 아니야! 그냥 이런저런 이야기?[p]
#강여진
아참! 그러고 보니 오는 길에 선생님을 만났어[p]
#&[sf.name]
선생님?[p]
[chara_part name="Kang" body="2" face="2" ]
#강여진
응응!  우리 동아리 고문 한갑수 선생님![p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
생각이 바뀌셨는지 네가 동아리에 들어오는 것을[r] 허락한다고 하시더라?[p]
[chara_part name="Kang" body="2" face="8" ]
#강여진
그런데......[p]
#&[sf.name]
그런데?[p]
#강여진
조건이 있다고 하셨어[p]
#&[sf.name]
조건? 무슨 조건?[p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
네가 열심히 할 거라는 보장이 없으니까 어느 정도[r]실력이 입증되었으면 좋겠다고 말씀하시더라고![p]
[chara_move name="Kang" width="1169" height="2735" left=375 ]
그 말은 즉![l] 오디션을 본다는 말씀인 것 같아![p]
#&[sf.name]
아하 그런 거였어? 그런 거라면...준비하면 되지 않을까?[p]
[chara_part name="Kang" body="1" face="8" ]
#강여진
아... 우리 고문 선생님은 깐깐하기로 유명하시거든...[p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
; 진다영 등장
[chara_new name="Jin" storage="chara/Jin_Sc/bin.png" zindex=1 jname="Jin" width="1169" height="2735" ]

[chara_layer name="Jin" part="body" id="1" storage="chara/Jin_SC/Jin_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="body" id="2" storage="chara/Jin_SC/Jin_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Jin" part="body" id="3" storage="chara/Jin_SC/Jin_Body_Sc_03.png" zindex=20 ]

[chara_layer name="Jin" part="face" id="1" storage="chara/Jin_SC/Jin_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="2" storage="chara/Jin_SC/Jin_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="3" storage="chara/Jin_SC/Jin_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="4" storage="chara/Jin_SC/Jin_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="6" storage="chara/Jin_SC/Jin_Face_Surprise_Sc_01.png" zindex=20 ]
[chara_layer name="Jin" part="face" id="8" storage="chara/Jin_SC/Jin_Face_Embarrass_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide_all time=9 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" top="0" left="375" time=10 wait=false ]
#진다영
네가 미덥지 않다는 말이잖아![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_move name="Jin" width="813" height="1903" left=146 time=1 wait=false]
[chara_show name="Kang" width="813" height="1903" left=960 time=1 wait=false]
[chara_part name="Kang" body="1" face="5" ]
#강여진
진다영! 그런 말이 아니잖아![p]
[chara_part name="Jin" body="2" face="4" ]
[chara_part name="Kang" body="1" face="5" ]
#진다영
나는 아직 이 변태를 우리 부원으로 인정할 수 없어![p]
최악이야![p]
#&[sf.name]
( 그런 말은 당사자 앞에서 하지 않아줬으면 좋겠는데... )[p]
[chara_part name="Kang" body="1" face="4" ]
#강여진
진다영! 아무리 그래도 당사자 앞에서 그렇게 말하면 어떡해![p]
#&[sf.name]
( 너가 제일 나빠..흑... )[p]
[chara_part name="Jin" body="1" face="4" ]
#진다영
흥![p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
아무튼 고문 선생님 마음에 들려면 준비를 잘해야 할거야![p]
#&[sf.name]
최대한 열심히 해볼게! 노래라면...자신...있...[p]
.......[p]
[chara_hide_all time=1 wait=false ]
[chara_show name="Kang" width="1169" height="2735" left=375 time=1 wait=false]
#강여진
응? [p]
[chara_part name="Kang" body="2" face="6" ]
무슨 문제라도 있어?[p]
#&[sf.name]
( 그러고보니 노래는 자신이 없는데... )[p]
[chara_part name="Kang" body="1" face="8" ]
#강여진
갑자기 얼굴이 어두워졌어! 어디 아픈 건 아니지??[p]
#&[sf.name]
실은... 나 노래를 잘 못 불러...[p]
[chara_part name="Kang" body="1" face="6" ]
#강여진
에? 그게 무슨소리야...?[p]
#&[sf.name]
나 음치일지도 몰라...[p]
#진다영
거봐 쓸모없을 줄 알았어![p]
#&[sf.name]
그럴지도...[p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
...[p]
[chara_part name="Kang" body="3" face="8" ]
그... 그래도 한번 들어볼 수 있을까..?[p]
[_tb_end_tyrano_code]

[s  ]
