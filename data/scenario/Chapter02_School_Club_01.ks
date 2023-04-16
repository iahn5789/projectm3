[_tb_system_call storage=system/_Chapter02_School_Club_01.ks]

*undefined

[bg  time="1000"  method="crossfade"  storage="BGI02/Common_Classroom_Day_01.png"  ]
[tb_start_tyrano_code]
; 강여진 등장
[chara_new name="Kang" storage="chara/Kang_Sc/bin.png" zindex=1 jname="Kang" width="813" height="1903" ]

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
; 설나희 등장
[chara_new name="Sul" storage="chara/Sul_Sc/bin.png" zindex=1 jname="Sul" width="813" height="1903" ]

[chara_layer name="Sul" part="body" id="1" storage="chara/Sul_SC/Sul_Body_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="2" storage="chara/Sul_SC/Sul_Body_Sc_02.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="3" storage="chara/Sul_SC/Sul_Body_Sc_03.png" zindex=20 ]
[chara_layer name="Sul" part="body" id="4" storage="chara/Sul_SC/Sul_Body_Sc_04.png" zindex=20 ]

[chara_layer name="Sul" part="face" id="1" storage="chara/Sul_SC/Sul_Face_Base_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="2" storage="chara/Sul_SC/Sul_Face_Smile_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="3" storage="chara/Sul_SC/Sul_Face_Shy_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="4" storage="chara/Sul_SC/Sul_Face_Angry_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="5" storage="chara/Sul_SC/Sul_Face_Angry_Sc_02.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="7" storage="chara/Sul_SC/Sul_Face_Worry_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="8" storage="chara/Sul_SC/Sul_Face_Embarrass_Sc_01.png" zindex=20 ]
[chara_layer name="Sul" part="face" id="9" storage="chara/Sul_SC/Sul_Face_Aversion_Sc_01.png" zindex=20 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="1" ]
[chara_part name="Sul" body="1" face="1" ]
[chara_show name="Kang" top="0" left="960" time=100 wait=false ]
[chara_show name="Sul" top="0" left="146" time=100 wait=false  ]

[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#강여진
아! 나희 언니 있었네?[p]
언제왔어?[p]
[chara_part name="Sul" body="2" face="1" ]
#설나희
방금...[p]
#강여진
다영이는 아직 안왔어?[p]
#설나희
왔어...[p]
#강여진
응? 근데 어디 갔어?[p]
#설나희
화장실...[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide name="Kang" time=10 wait=false]
[chara_hide name="Sul" time=10 wait=false]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  ]
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
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" top="0" left="375" time=100 wait=true]
#진다영
설나희! 죽을래![p]
#강여진
다영이도 왔구나! 화장실 다녀온 거야?[p]
[chara_part name="Jin" body="3" face="3" ]
#진다영
닥쳐어ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ![p]
#강여진
하핫! 화장실은 부끄러운 게 아니야~[p]
[chara_part name="Jin" body="3" face="6" ]
#진다영
시끄러워! 꺼져어ㅓㅓㅓㅓㅓㅓㅓ![p]
[chara_hide name="Jin" time=500 wait=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
쾅-![p]
[chara_part name="Kang" body="2" face="8" ]
[chara_show name="Kang" top="0" left="375" width="1169" height="2735" time=100 wait=false ]
#강여진
다영이가 많이 화났나 봐...[p]
조금 달래주고 올게 잠깐만~[p]
[chara_hide name="Kang" time=500 wait=false]
[_tb_end_tyrano_code]

[s  ]
