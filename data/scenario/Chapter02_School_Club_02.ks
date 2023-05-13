[_tb_system_call storage=system/_Chapter02_School_Club_02.ks]

*l_in

[bg  time="1"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Sliding_door_open.wav"  ]
[tb_start_tyrano_code]
#
드르르륵-             쿵 [p]
[_tb_end_tyrano_code]

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
갑자기 얼굴이 어두워졌어! 어디 아픈 건 아니지?[p]
#&[sf.name]
실은... 나 노래를 잘 못 불러...[p]
[chara_part name="Kang" body="1" face="6" ]
#강여진
에? 그게 무슨소리야...?[p]
#&[sf.name]
연습한 노래가 없는데...[p]
#진다영
보컬로 온거 아니야? 근데 준비가 안 되어있다고?[p]
너 진짜 바보야?[p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
#&[sf.name]
나는 바보가 아니야!!![p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
...[p]
[chara_part name="Kang" body="3" face="8" ]
그... 그래도 한번 들어볼 수 있을까..?[p]
자신이 없는거지 우리가 들어보는 건 또 다를 수 있으니까![p]
#&[sf.name]
맞아! 우선 해볼게![p]
[_tb_end_tyrano_code]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[chara_hide_all time=9 wait=false]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  storage="Chapter02_School_Club_02.ks"  target="*l_in_02"  ]
[s  ]
*l_in_02

[tb_show_message_window  ]
[tb_start_tyrano_code]
; 진다영 등장
[chara_new name="Jin" storage="chara/Jin_Sc/bin.png" zindex=1 jname="Jin" width="813" height="1903" ]

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
[chara_part name="Jin" body="1" face="8" ]
[chara_part name="Kang" body="3" face="8" ]
[chara_show name="Jin" top="0" left="146" time=10 wait=false ]
[chara_show name="Kang" top="0" left="960" time=10 wait=false ]
[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_tyrano_code]
#강여진
아...[p]
[chara_part name="Jin" body="3" face="2" ]
#진다영
아하하하하하 그게 노래냐?![p]
#강여진
하하하하...아하하..[r]평소에 좋아하는 노래는 잘 부를 수 있을 거야 [p]
그렇지...?[p]
#&[sf.name]
아니...[p]
#설나희
그래도 일주일 뒤가 오디션이니 그때까지 준비한다면 어쩌면...[p]
[chara_part name="Jin" body="3" face="4" ]
[chara_part name="Kang" body="1" face="4" ]
#진다영
틀렸어! [r]이 실력으로는 그 깐깐한 도덕 선생을 납득시킬 수 없단 말이야!![p]
할 줄 아는 게 뭐야!! 바보!! 죽어!! 죽어!![p]
[chara_part name="Jin" body="1" face="4" ]
#&[sf.name]
( 크흑… 아무리 그래도 눈 앞에서 대놓고… )[p]
[chara_part name="Kang" body="1" face="5" ]

[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
#강여진
진다영! 너 진짜![p]
[chara_part name="Kang" body="1" face="4" ]
#진다영
왜! 사실이잖아! [r]지금 이 실력으로는 쓸모없는 건 분명하다고![p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
아직 시간은 일주일이나 남았어! 일주일이면 충분해![p]
[chara_part name="Jin" body="2" face="2" ]
[chara_part name="Kang" body="1" face="4" ]
#진다영
헤~? 정말로 할 수 있다고 생각해?[p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
그럼! 내가 데려온 사람이니까 책임지고 가르치면 돼![p]
그리고... 우리가 앞에 있어서 긴장한 걸 수도 있잖아![p]
#진다영
그래 열~심히 해봐~ 달라지는 건 없겠지만~[p]
[chara_part name="Kang" body="1" face="4" ]
#&[sf.name]
( 아무리 봐도…비웃는 거로 밖에 안 보이는군…)[p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
두고봐 선생님 마음에 쏙 들 거야![p]
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
[chara_hide_all time=100 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" top="0" left="553" time=200 wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#설나희
...[p]
한 가지...[p]
한 가지 방법이 있어...[p]
#강여진
무슨 방법이야?[p]
#설나희
고문 선생님은 힙합을 좋아해...[p]
[chara_hide_all time=1 wait=false]
[chara_part name="Kang" body="1" face="6" ]
[chara_show name="Kang" top="0" left="375" width="1169" height="2735" time=10 wait=false ]

[_tb_end_tyrano_code]

[quake  time="300"  count="5"  hmax="10"  wait="false"  vmax="10"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="UI/Common_Whistle_01.wav"  ]
[tb_start_tyrano_code]
#강여진
으잉?               [er]
[chara_hide_all time=1 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" top="0" left="375" width="1169" height="2735" time=10 wait=false ]
[_tb_end_tyrano_code]

[quake  time="300"  count="5"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
#진다영
뭐?               [er]
#&[sf.name]
( 응...? )               [er]
[chara_hide_all time=1 wait=false]
[chara_part name="Sul" body="1" face="2" ]
[chara_show name="Sul" top="0" left="375" width="1169" height="2735" time=10 wait=false ]
#설나희
말 그대로...힙합을 좋아해...[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide_all time=100 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_part name="Kang" body="2" face="8" ]
[chara_show name="Jin" top="0" left="146" width="813" height="1903" time=10 wait=false ]
[chara_show name="Kang" top="0" left="960" width="813" height="1903" time=10 wait=false ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#진다영
그러니까...변태에게 힙합...[r]즉…랩을 시킨다는 거야…?[p]
#강여진
래...랩을 한다고...?[p]
[chara_part name="Jin" body="3" face="2" ]
#진다영
하하하하하하하! [r]노래도 못하는데 랩을 할 수 있을 거로 생각해?!?[p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
아니.... 잠깐. [p]
어쩌면...![p]
[chara_part name="Jin" body="1" face="4" ]
#진다영
뭐? 진심이야?[p]
#강여진
음치인거지...박치인 건 아니잖아...![p]
[chara_part name="Kang" body="1" face="1" ]
#강여진
시도해 볼 가치는 있어...[p]
[chara_part name="Jin" body="1" face="8" ]
#진다영
으으...이…[p]
[chara_hide_all time=100 wait=false]
#한갑수
에헴![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="2" ]
[chara_show name="Kang" time="100" width="813" height="1903" top="0" left="553" wait=false]
#강여진
아! 선생님 안녕하세요![p]
#한갑수
여진이가 성실하고 착한 친구라고 해서[r] 동아리에 입부시키긴 했지만 나는 아직 믿지 못한다![p]
#한갑수
준비는 잘 되어가고 있나?[p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
네...실은 [emb exp="sf.name"]에게 랩을 부탁할까 고민하고 있었어요![p]
#합갑수
뭐어? 랩?[p]
[chara_part name="Kang" body="2" face="2" ]
#강여진
네! 그러니까 힙합을...[p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Lightning_One_Shot_01.wav"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Door_Slam_01.wav"  ]
[quake  time="200"  count="3"  hmax="5"  wait="true"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="6" ]
#한갑수
너희가 힙합을 아느냐!!!![p]
#강여진
...네?[p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Door_Slam_01.wav"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Emotion_Angry_roar_01.wav"  ]
[playse  volume="100"  time="1000"  buf="2"  storage="SFX/Metal_Wood_Debris_01.wav"  ]
[quake  time="500"  count="6"  hmax="20"  wait="true"  vmax="10"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="2" face="6" ]
#한갑수
너희가 힙합에 대해서 제대로 아느냔 말이다!![p]
[chara_part name="Kang" body="3" face="8" ]
#한갑수
단순히 비트 위에 빠르게 말하는 것은 힙합이 아니란말이다아아아!!!!![p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Whoosh_Horror_01.wav"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Typing_Fast_01.wav"  loop="true"  ]
[tb_start_tyrano_code]
#한갑수
힙합이란 1970년대 후반 뉴욕 브롱크스 남쪽 빈민가에 거주하는 미국 흑인과
남미 히스패닉계 청소년들에 의해 형성된 새로운 문화운동 전반을 가르치는 말로........[p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="false"  ]
[tb_start_tyrano_code]
#&[sf.name]
......[p]
#한갑수
옛 헴![p]
#한갑수
내가 말한 것들을 제대로 이해하지 못했다면[r]앞으로 힙합은 입에도 올리지 말거라![p]
[chara_part name="Kang" body="3" face="8" ]
#강여진
으으...네...[p]
#한갑수
그리고! 오디션을 보는 것도 맞지만[r] 오디션만 보는 게 아니다![p]
[chara_part name="Kang" body="1" face="6" ]
#강여진
네? 그럼 오디션 말고 다른 것도 본다는 말씀이신가요?[p]
#한갑수
그럼! 성실하다고 말했으니 성실성을 확인을 해봐야지![p]
#한갑수
오디션 말고 쪽지 시험도 따로 준비하도록 하거라! [p]
동아리도 좋지만 학생의 본분에 충실해야지[p]
[chara_part name="Kang" body="1" face="8" ]
#강여진
아! 네 그건 걱정하지 않으셔도 돼요![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#한갑수
그래 알면 됐다! 그럼, 이만 가보마![p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[tb_start_tyrano_code]
#한갑수
옛 헴![p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Sliding_Door_Open_02.wav"  ]
[tb_start_tyrano_code]
[chara_hide_all time=100 wait=false]
[chara_part name="Jin" body="2" face="8" ]
[chara_show name="Jin" top="0" left="375" time=200 width="1169" height="2735" wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#진다영
우와... 저 꼰대...[p]
#강여진
진다영! 그런 말 하면 못써![p]
#진다영
그래도 20분 동안 혼자서 저렇게 연설을 할 줄이야...[p]
#강여진
확실히 그건 예상 밖이었지만 말이야,,,[p]
[chara_part name="Jin" body="1" face="4" ]
#진다영
이제 어쩔거야... [p]
저 변태가 오디션 말고 쪽지 시험도 준비해야 하는 거잖아[p]
#&[sf.name]
( 변태는 빼주면 안 될까... )[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide_all time=100 wait=false]
[chara_part name="Kang" body="3" face="1" ]
[chara_show name="Kang" top="0" left="375" time=200 width="1169" height="2735" wait=false ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#강여진
음... 우리 신입 부원이 공부도 잘하길 기도하는 수밖에?[p]
#&[sf.name]
그건 걱정하지 마. 그래도 중간은 하니까...[p]
[chara_part name="Kang" body="2" face="2" ]
#강여진
그럼 다행이네![p]
[chara_hide_all time=100 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" top="0" left="375" time=200 width="1169" height="2735" wait=false ]
#설나희
그래 쪽지 시험에 집중하자...[p]
#설나희
힙합을 하겠다는 전략은 못 쓸 것 같으니까...[p]
[chara_hide_all time=100 wait=false]
[chara_part name="Kang" body="1" face="1" ]
[chara_show name="Kang" top="0" left="375" time=200 width="1169" height="2735" wait=false ]
#강여진
자! 그럼 너는 어떤 걸 하고 싶어?[p]
#&[sf.name]
( 나는...역시 잘 모르겠다 )[p]
#강여진
역시 잘 모르겠다고 생각했지?[p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
음... 당장 오디션 준비를 하긴 어려우니까...[p]
[chara_part name="Kang" body="3" face="2" ]
#강여진
일단 교실로 가면서 쪽지 시험이 어떻게 나오는지[r]알려줄게![p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Footsteps_Female_Ctr_Walk_01.wav"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[wait  time="1000"  ]
[tb_start_tyrano_code]
[chara_hide_all time=100 wait=false]
[_tb_end_tyrano_code]

[jump  storage="Test_Scene_01.ks"  target="*testscenestart"  ]
[s  ]
