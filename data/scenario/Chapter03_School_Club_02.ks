[_tb_system_call storage=system/_Chapter03_School_Club_02.ks]

*Chapter03_02

[cm  ]
[bg  time="10"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[tb_show_message_window  ]
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

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Shotgun_Desk_01.wav"  ]
[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
#
쾅!!!!!!!!![p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="Amb/Amb_Cold_Wind_01.wav"  fadein="true"  loop="true"  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="4" ]
[chara_show name="Sul" top="0" width=1169 height=2735 left=375 top=0 time=200 wait=false ]
#설나희
둘 다 그만[p]
#설나희
더 싸울거야?[p]
#
...[p]
#설나희
아직 할 말이 남아있어?[p]
#
...[p]
#설나희
둘 다 오늘 혼나볼래?[p]
#진다영
미...미안...[p]
#강여진
아니요...[p]
[chara_part name="Sul" body="3" face="1" ]
#설나희
둘이 싸우지 말고 이 일을 해결할 수 있는 사람이 있잖아[p]
넌 어떻게 생각해?[p]
#&[sf.name]
네...? 저요...?[p]
#설나희
둘이 싸우는 거 다 듣고 있었잖아[p]
너는 어떻게 생각하냐고[p]
#&[sf.name]
갑자기 그렇게 물어보시면...[p]
[chara_part name="Sul" body="3" face="5" ]
#설나희
어.떠.냐.고[p]
#&[sf.name]
저...저는...[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[filter layer=all blur=5 ]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  ]
[tb_hide_message_window  ]
[tb_keyconfig  flag="0"  ]
[tb_start_tyrano_code]
[glink color="btn_21_yellow" target="l_kang" text="그래도 역시 밴드는 기타가..." face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="200" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_yellow" target="l_jin" text="베이스가 없으면 허전하지..." face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="500" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[glink color="btn_21_yellow" target="l_sul" text="둘 다 그만해..." face="The Jamsil5Bold" size="55" width="1000" height="150" x="466" y="800" enterse="UI/Common_Branch_Hover_01.wav" leavese="UI/Common_Branch_Hover_Leave_01.wav" clickse="UI/Common_Branch_Click_01.wav"]
[_tb_end_tyrano_code]

[s  ]
*l_kang

[tb_keyconfig  flag="1"  ]
[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="1" ]
#&[sf.name]
그래도 밴드에 기타가 없으면 조금 허전하지 아마...[p]
[chara_hide_all time=200 wait=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_part name="Kang" body="3" face="1" ]
[chara_show name="Kang" time="200" top="0" left="553" wait=false]
#강여진
하하! 거봐 그럴 줄 알았어![r]다들 기타를 좋아할 수밖에 없다니까?[p]
#진다영
뭐?! 인정할 수 없어! 네가 데려온 사람이잖아![r]그러면 당연히 네 편을 들 수밖에 없는 거 아니야?[p]
[chara_part name="Kang" body="3" face="2" ]
#강여진
그래도 역시 밴드에는 기타가 있어야 하지![r]다영이 넌 나한테 진 게 그렇게 분한 거야? 하하하!![p]
#진다영
시끄러!! 바보!! 멍청이!! 말미잘!![p]
[chara_part name="Kang" body="1" face="1" ]
#강여진
알겠으니 이제 그만해![p]
#진다영
퉤!![p]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" time="200" top="0" left="553" width="813" height="1903" wait=false]
#설나희
에휴...[p]
#설나희
답은 이미 정해졌으니 둘 다 이제 그만해...[p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Whoosh_Horror_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="4" ]
[chara_move name="Sul" time="200" width="1169" height="2735" top="0" left="375" wait=false]
#설나희
만약 이 이상 또 이 문제로 싸우면...[p]
[chara_part name="Sul" body="3" face="5" ]
#설나희
말 안해도 알지?[p]
#강여진
네...[p]
#진다영
아하하...싸우긴 누가~...하!하!하![p]
[chara_part name="Sul" body="3" face="2" ]
#설나희
그래...싸우지 말자[p]
[_tb_end_tyrano_code]

[jump  storage="Chapter03_School_Club_02.ks"  target="*l_kangjin"  ]
[s  ]
*l_jin

[tb_keyconfig  flag="1"  ]
[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="1" ]
#&[sf.name]
그래도 역시 밴드에 베이스가 빠지면 뭔가 허전하지...[p]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="3" face="2" ]
[chara_show name="Jin" time="200" top="0" left="553" width="813" height="1903" wait=false]
#진다영
하하하하하하하하하핳!! 들었어?[r]이 변태가 방금 베이스가 없으면 허전하다고 했지?[p]
#&[sf.name]
그러니까 그 변태는...좀 빼줬으면 좋겠는데...[p]
[chara_part name="Jin" body="1" face="2" ]
[chara_move name="Jin" time="200" width="1169" height="2735" top="0" left="375" ]
#진다영
음흉한 생각만 하는 줄 알았는데 나름대로 생각할 줄[r]아는가 보네! 베이스를 아주 정확하게 알고 있잖아?[p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
[chara_part name="Jin" body="3" face="2" ]
#진다영
내 승리다 강여진!!! 하하하하하하하!!![p]
[chara_move name="Jin" time="200" width="813" height="1903" top="0" left="146" wait=false]
[chara_part name="Kang" body="1" face="4" ]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="960" wait=false]
#강여진
다영이 너 진짜...[p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
그래 뭐 틀린 말은 아니니까 내가 한번 봐줬다![p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
두고봐! 다음에 다시 물어볼 때 기타가 없으면[r]안 된다는 걸 알게 될 테니까![p]
[chara_part name="Jin" body="1" face="2" ]
#진다영
응 아니야~ 다음에도 똑같아~~~~[p]
#설나희
...[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="3" face="4" ]
[chara_show name="Sul" top="0" width=1169 height=2735 left=375 top=0 time=200 wait=false ]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Whoosh_Horror_01.wav"  ]
[tb_start_tyrano_code]
#설나희
다시...한다고...?[p]
#진다영
헉...[p]
[chara_part name="Sul" body="2" face="4" ]
#설나희
다시할까?[p]
#강여진
아니요...[p]
[chara_part name="Sul" body="2" face="1" ]
#설나희
그래 이제 그만하자[p]
#&[sf.name]
역시 이사람 무서워...[p]
[_tb_end_tyrano_code]

[jump  storage="Chapter03_School_Club_02.ks"  target="*l_kangjin"  ]
[s  ]
*l_sul

[tb_keyconfig  flag="1"  ]
[tb_start_tyrano_code]
[filter layer=all blur=0 ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
[chara_part name="Sul" body="3" face="1" ]
#&[sf.name]
둘 다 그만해...[r]좋아하는 악기는 있지만 뭐가 더 중요하다고는 할 수 없어[p]
#&[sf.name]
모두 다 똑같은 밴드의 구성원이야[r]그러니 싸우지 말았으면 해...[p]
#설나희
...[p]
#강여진
맞아 다 똑같이 중요한데[r]부끄러운 모습을 보여버린 것 같네...[p]
#진다영
아니..나는 싸우려고 했던 건 아니였는데...[p]
[chara_part name="Sul" body="4" face="1" ]
#설나희
그래서 좋아하는 악기는 뭐야?[p]
#&[sf.name]
( 앗...당장 생각나는 악기가 없는데... )[p]
#&[sf.name]
( 일단 눈에 들어오는 거로..! )[p]
#&[sf.name]
저는...드럼...[r]드럼이 제일 좋아요[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="3" face="1" ]
[chara_part name="Jin" body="1" face="2" ]
[chara_show name="Jin" time="200" width="813" height="1903" top="0" left="146" wait=false]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="960" wait=false]
#강여진
오! 의외네![p]
#진다영
그러게 운동은 잘 못할 것 같은데?[p]
#&[sf.name]
운동?[p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
조용한 걸 좋아할 줄 알았는데[r]드럼을 좋아한다니 의외인걸?[p]
#강여진
맞아 매력 있는 악기지[r]나도 가끔은 배워보고 싶다니까?[p]
[chara_part name="Jin" body="1" face="4" ]
#진다영
칠 줄 아는 거 아니였어?[p]
#강여진
그래도 우리 나희 언니만큼은 아니야~[p]
[_tb_end_tyrano_code]

[jump  storage="Chapter03_School_Club_02.ks"  target="*l_01"  ]
[s  ]
*l_kangjin

[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="3" face="1" ]
[chara_part name="Jin" body="1" face="2" ]
[chara_show name="Jin" time="200" width="813" height="1903" top="0" left="146" wait=false]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="960" wait=false]
[_tb_end_tyrano_code]

[jump  storage="Chapter03_School_Club_02.ks"  target="*l_01"  ]
[s  ]
*l_01

[tb_start_tyrano_code]
#강여진
자! 그럼 소개도 끝난 것 같으니[r]아주 중요한 일이 남아있어[p]
[chara_part name="Jin" body="2" face="6" ]
#진다영
또? 집에 가고 싶단 말이야! 집에 보내줘~~~[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time="200" width="1169" height="2735" top="0" left="375" wait=false]
#강여진
동아리 이름! 밴드 이름을 정해야 해![p]
#&[sf.name]
그러고 보니 왜 우리 동아리 이름은 리듬 오브 레전드야?[p]
[chara_part name="Kang" body="3" face="8" ]
#강여진
아... 그건...[p]
[chara_part name="Kang" body="2" face="3" ]
#강여진
멋있지...않아?[p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
리듬 오브 레전드! 뭔가 엄청날 것 같잖아![p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Crow_Caw_01.wav"  ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" time="200" width="813" height="1903" top="0" left="553" wait=false]
#진다영
구려...[p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_tyrano_code]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" time="200" width="813" height="1903" top="0" left="553" wait=false]
#설나희
별로야...[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#&[sf.name]
하하...[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="3" face="4" ]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="553" wait=false]
#강여진
다들 이런 반응이라니까...[p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="1" ]
#강여진
그래서 모든 맴버들이 다 모이면[r]새로 이름을 정하고 싶었어![p]
#강여진
추천 할 만한 이름이 있다면 말하도록![p]
[chara_part name="Kang" body="1" face="6" ]
#강여진
오! 다영이 손 든 거야?[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="1" face="1" ]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" time="200" width="813" height="1903" top="0" left="146" wait=false]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="960" wait=false]
#진다영
진다영과 친구들 어때?[p]
[chara_part name="Kang" body="1" face="8" ]
#강여진
음..다른 누군가가 떠오르는 이름인걸[p]
[chara_part name="Kang" body="1" face="1" ]
#강여진
나희 언니는?[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" time="1" width="813" height="1903" top="0" left="146" wait=false]
[chara_part name="Sul" body="1" face="1" ]
[chara_show name="Sul" time="200" width="813" height="1903" top="0" left="960" wait=false]
#설나희
와일드 캣...?[p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="UI/Common_Whistle_01.wav"  ]
[tb_start_tyrano_code]
[chara_part name="Jin" body="2" face="2" ]
#진다영
그거 완전 축구팀 이름 같은 건 알고 있지?[p]
#강여진
뭐야...다들 태클만 걸고 제대로 된 이름이 없잖아![r]
역시 리듬 오브 레전드가 최고라니까...[p]
[chara_part name="Jin" body="3" face="4" ]
#진다영
싫어!!! 그런 이름으로 난 하기 싫어!!![p]
[chara_part name="Sul" body="3" face="1" ]
#설나희
나도 다른 이름이 좋다고 생각해...[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="1" face="4" ]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="553" wait=false]
#강여진
칫...[p]
[chara_part name="Kang" body="2" face="1" ]
[chara_move name="Kang" time="200" width="1169" height="2735" top="0" left="375" wait=false]
#강여진
네 생각은 어때?[p]
#&[sf.name]
나...?[p]
#&[sf.name]
나는 따로 생각한 건 없는데[r]
애초에 밴드를 할 생각도 없었다고...[p]
[chara_part name="Kang" body="2" face="4" ]
#강여진
그래도 의견은 내야지~ 이제 같은 밴드부원이라구![p]
#진다영
이 바보가 무슨 생각이 있겠어![r]음흉한 상상만 하고 있겠지![p]
[chara_part name="Kang" body="2" face="1" ]
#&[sf.name]
그건 아니거든![p]
#&[sf.name]
음...뭔가 떠오르는건 없는데...[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
( 어...잠깐만...? )[p]
#
( 분명... )[p]
[chara_hide_all time=200 wait=false]
[_tb_end_tyrano_code]

[bg  time="500"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[layermode graphic=Common_Dream_Bgi_01.png folder=bgimage time=100 mode=difference wait=false]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[font  size="80"  color="0x000000"  face="TheJamsil5Bold"  ]
[tb_start_tyrano_code]
#
이번 순서는...
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="100"  method="crossfade"  storage="Common_Dream_Bgi_01.png"  ]
[tb_start_tyrano_code]
[layermode graphic=Common_Dream_Bgi_01.png folder=bgimage time=100 mode=exclusion wait=false]
[_tb_end_tyrano_code]

[bg  time="100"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[er]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[font  size="80"  color="0x000000"  face="TheJamsil5Bold"  ]
[tb_start_tyrano_code]
#
이번 순서는...
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="100"  method="crossfade"  storage="Common_Dream_Bgi_01.png"  ]
[tb_start_tyrano_code]
[layermode graphic=Common_Dream_Bgi_01.png folder=bgimage time=100 mode=overlay wait=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[er]
[_tb_end_tyrano_code]

[font  size="80"  color="0x000000"  face="TheJamsil5Bold"  ]
[tb_show_message_window  ]
[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[tb_start_tyrano_code]
#
러브크레센도!
[_tb_end_tyrano_code]

[bg  time="100"  method="crossfade"  storage="BGI/Common_White_01.png"  ]
[bg  time="100"  method="crossfade"  storage="Common_Black.jpg"  ]
[bg  time="100"  method="crossfade"  storage="Common_Dream_Bgi_01.png"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[layermode graphic=Common_Dream_Bgi_01.png folder=bgimage time=100 mode=multiply wait=false]
[_tb_end_tyrano_code]

[bg  time="100"  method="crossfade"  storage="BGI/Common_White_01.png"  ]
[tb_start_tyrano_code]
[free_layermode time=0 wait=false]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[er]
[_tb_end_tyrano_code]

[bg  time="2000"  method="crossfade"  storage="Common_Sc_Club_Bgi_01.png"  ]
[resetfont  ]
[tb_show_message_window  ]
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
#&[sf.name]
......[p]
#&[sf.name]
러브...크레센도...?[p]
[chara_part name="Jin" body="3" face="2" ]
[chara_show name="Jin" time="200" width="813" height="1903" top="0" left="553" wait=false]
#진다영
하하! 그게 뭐야 어디서 나온 말이야![p]
#&[sf.name]
꿈...속에서...?[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="3" face="7" ]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="553" wait=false]
#강여진
음...러브 크레센도... 나쁘지 않은데![p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
크레센도라면 소리를 조금씩 크게 연주하는거잖아?[p]
#강여진
뜻도 좋은 것 같아![p]
[chara_hide_all time=200 wait=false]
[chara_part name="Jin" body="1" face="4" ]
[chara_show name="Jin" time="200" width="813" height="1903" top="0" left="553" wait=false]
#진다영
이거 말고...다른 이름은 없는거야?[p]
[chara_hide_all time=200 wait=false]
[chara_part name="Sul" body="3" face="1" ]
[chara_show name="Sul" time="200" width="813" height="1903" top="0" left="553" wait=false]
#설나희
스파이럴...캣츠...?[p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
#진다영
그러니까! 왜 항상 캣츠로 끝나는건데!!![p]
[chara_part name="Sul" body="3" face="3" ]
#설나희
고양이는...귀엽잖아...[p]
#진다영
우리는 고양이가 아니야![p]
[chara_hide_all time=200 wait=false]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time="200" width="813" height="1903" top="0" left="553" wait=false]
#강여진
하하하! 스파이럴 캣츠도 좋은 것 같아![p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
아니면 싸우지말고 그냥 리듬 오브 레전드로 하자![p]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
[chara_hide_all time=10 wait=false]
[chara_part name="Jin" body="3" face="4" ]
[chara_show name="Jin" time="10" width="813" height="1903" top="0" left="553" wait=false]
#진다영
안 돼!        [er]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
[chara_hide_all time=10 wait=false]
[chara_part name="Sul" body="3" face="4" ]
[chara_show name="Sul" time="10" width="813" height="1903" top="0" left="553" wait=false]
#설나희
...!            [er]
[_tb_end_tyrano_code]

[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
[chara_hide_all time=10 wait=false]
[chara_part name="Kang" body="2" face="8" ]
[chara_show name="Kang" time="10" width="813" height="1903" top="0" left="553" wait=false]
#&[sf.name]
그건 좀...[p]
[chara_part name="Kang" body="1" face="4" ]
#강여진
힝...[p]
[chara_hide_all time=100 wait=false]
[chara_part name="Jin" body="3" face="4" ]
[chara_show name="Jin" time="100" width="813" height="1903" top="0" left="553" wait=false]
#진다영
이럴거면 그냥 변태가 말했던 러브...그 뭐지?[p]
#설나희
러브...크레센도...?[p]
[chara_part name="Jin" body="3" face="2" ]
#진다영
그래 그거! 러브크레센도![p]
#진다영
그걸로 하자...![p]
#&[sf.name]
엥? 정말 이걸로 결정하는거야?[p]
[chara_hide_all time=100 wait=false]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time="100" width="813" height="1903" top="0" left="553" wait=false]
#강여진
응! 지금까지 들은 이름중에는 제일 좋은걸?[p]
[chara_part name="Kang" body="1" face="1" ]
#강여진
좋아! 결정이다![p]
#강여진
지금부터 우리 밴드의 이름은 러브 크레센도야![p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
다들 이견 없지?[p]
#진다영
하하...맘에...들어...[p]
#설나희
나는 좋아...[p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
그래 러브 크레센도 결성 기념으로...[p]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Crowd_Cheer_01.wav"  ]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[tb_start_tyrano_code]
[chara_part name="Kang" body="1" face="2" ]
#강여진
오늘은 내가 쏜다![p]
#진다영
또 언제나처럼 떡볶이 먹으러 가는 거겠지...[p]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
#설나희
그렇지...[p]
[chara_part name="Kang" body="2" face="1" ]
[chara_move name="Kang" time="200" width="1169" height="2735" top="0" left="375" wait=false]
#강여진
하하! 어서 가자! [p]
[chara_part name="Kang" body="2" face="2" ]
#강여진
오늘은 왕창 먹을 거야![p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[s  ]
