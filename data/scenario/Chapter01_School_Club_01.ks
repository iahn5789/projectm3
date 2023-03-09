[_tb_system_call storage=system/_Chapter01_School_Club_01.ks]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[playbgm  volume="30"  time="1000"  loop="true"  storage="Common_Embarrass_01.mp3"  ]
[tb_start_text mode=1 ]
#???
" 꺄악-!!!!!!! "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="room.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
( 헉-!! 큰일났... )[p]
[_tb_end_text]

[chara_show  name="KangYeoJin"  time="300"  wait="true"  storage="chara/3/KangYeoJin.png"  width="534"  height="1072"  left="728"  top="192"  reflect="false"  ]
[tb_start_text mode=1 ]
#강여진
" 와줬구나! 어서 와! "[p]
#???
" 뭐야! [l]변태같이 다 엿듣고 있던거야?! "[p]
#&[sf.name]
" 아니 나는....... "[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[font  size="40"  color="0x000000"  face="SBB"  ]
[tb_start_text mode=1 ]
#???
" 시끄러! [l]변태! [l]호색한! [l]대머리! "[p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
#강여진
" 그만! 내가 불러서 온 친구란 말이야! "[p]
#???
" 이해할 수 없어! 왜 우리 대화를 엿듣고 있던건데!?[p]
[_tb_end_text]

[font  size="40"  color="0x000000"  face="SBB"  ]
[tb_start_text mode=1 ]
#???
찐따! 찌질이! [l]버러지! 거지! "[l][p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[tb_start_text mode=1 ]
#강여진
" 진다영! "[p]
[_tb_end_text]

[resetfont  ]
[chara_show  name="JinDaYoung"  time="1000"  wait="true"  storage="chara/4/JinDaYoung.png"  width="620"  height="1007"  left="-1"  top="254"  reflect="false"  ]
[tb_start_text mode=1 ]
#진다영
" 왜! [l]왜 소리를 질러! "[p]
#강여진
" 앞으로 우리랑 같이 밴드부를 할 친구란 말이야[l][r]같은 부원이 하는 이야기를 들을 수도 있지! "[p]
#진다영
" 싫어!!! 나는 이런 변태랑은 밴드부 절대 못 해! 안해!! "[p]
#???
" 저기..... "[p]
[_tb_end_text]

[chara_show  name="SulNaHee"  time="1000"  wait="true"  storage="chara/5/SulNaHee.png"  width="593"  height="964"  left="1343"  top="298"  reflect="false"  ]
[tb_start_text mode=1 ]
#설나희
" 나는 좋다고 생각해.... "[p]
#진다영
" 뭐어? 진심으로 하는말이야?! "[p]
#설나희
" 다른 방법이..있는건 아니잖아..? "[p]
#진다영
" 그..그렇지만..."[p]
" ...하! 거기 너! "[p]
#&[sf.name]
" 저..저요..? "[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#진다영
" 그래 ! [l]변태 같이 엿 듣는 것 말고 할 줄 아는게 있긴 해? "[p]
#&[sf.name]
" 나...나는... "[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[tb_start_text mode=1 ]
#강여진
" 보컬! [l]보컬을 맡을거야! "[p]
#진다영
" 뭐?! 보컬?! [l]노래라면 이미 네가 하고있잖아 "[p]
#강여진
" 나는 악기도 함께 연주하고 있잖아 [l][r]나 혼자 두 가지를 하는 건 너무 어렵단 말이야 "[p]
#진다영
" 이이....그래도...!!! "[p]
#설나희
" 나는 좋다고 생각해.... "[p]
#강여진
" 네 생각은 어때? 같이 할거지? "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_18_red"  storage="Chapter01_School_Club_01.ks"  size="50"  target="*l_yes_01"  x="466"  y="282"  width="1000"  height="150"  text="까짓것&nbsp;한번&nbsp;해보지&nbsp;뭐!"  _clickable_img=""  ]
[glink  color="btn_18_blue"  storage="Chapter01_School_Club_01.ks"  size="50"  target="*l_no_01"  x="466"  y="582"  width="1000"  height="150"  text="역시..못&nbsp;하겠어"  _clickable_img=""  ]
[s  ]
*l_yes_01

[stopbgm  time="1000"  ]
[playbgm  volume="10"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#강여진
" 좋아! 잘 생각했어! "[p]
#진다영
" ..그치만 이건 너무 억지잖아! [l][r]폐부 막아보겠다고 저런 변태랑..헙!!  "[p]
#주인공
" 응?[l]그게 무슨말.......... "[p]
#강여진
" ...... "[p]
#설나희
" 규정상 동아리 인원이 4명 이상 되어야 하거든..... "[p]
" 지금 우리는 폐...."[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[tb_start_text mode=1 ]
#&[sf.name]
" 잠깐....뭐라고...? "[p]
#강여진
" 맞아! 하마터면 폐부될 뻔 했다구 [l][r]네가 와줘서 정말 다행이야! "[p]
#&[sf.name]
" 잠깐! 그런 말은 없었잖아 나는.... "[p]
#강여진
" 그러니까.. 할거지?? "[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&[sf.name]
" ... ... "[p]
" ......... "[p]
" 으...응... "[p]
[_tb_end_text]

[font  size="40"  color="0x000000"  face="SBB"  ]
[tb_start_text mode=1 ]
#진다영
" 변태.. "[p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
#&[sf.name]
" 아니! 그런게 아니라! "[p]
#강여진
" 아싸! "[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#강여진
" 앞으로 잘 부탁해! 우리 보컬! "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*l_no_01

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#강여진
" 에...그치만.... "[p]
#진다영
" 거봐! 결국 안하게 될거라니깐?! [l][r]조금이라도 기대한 내가 바보지 "[p]
[_tb_end_text]

[quake  time="300"  count="2"  hmax="3"  wait="true"  vmax="3"  ]
[tb_start_text mode=1 ]
#&[sf.name]
" 잠깐! 세상이 멸망할 것 같은 이 분위기 뭔데!  "[p]
" 나 한명쯤 안한다고 이렇게까지?? "[p]
#설나희
" ...동아리는 일정 정원을 채우지 못하면 강제적으로 폐부되거든... "[p]
" ...내일까지 4명이 모이지 않는다면... "[p]
#&[sf.name]
" ........... "[p]
#강여진
" 그러지 말고 같이 하자! 응? [l][r]우리는 네가 필요하단 말이야.. "[p]
#&[sf.name]
" 나는... "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_18_red"  storage="Chapter01_School_Club_01.ks"  size="50"  target="*l_yes_02"  x="466"  y="282"  width="1000"  height="150"  text="그래&nbsp;한번&nbsp;해보지&nbsp;뭐!"  _clickable_img=""  ]
[glink  color="btn_18_blue"  storage="Chapter01_School_Club_01.ks"  size="50"  target="*l_no_02"  x="466"  y="582"  width="1000"  height="150"  text="아직&nbsp;마음의&nbsp;준비가.."  _clickable_img=""  ]
[s  ]
*l_yes_02

[stopbgm  time="1000"  ]
[playbgm  volume="10"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#강여진
" 역시! 그럴 줄 알았어!! "[p]
#진다영
" 그치만 이건 너무 억지잖아! [l]폐부 막아보겠다고 저런 변태랑..! "[p]
#강여진
" 그치만 지금부터 우리 동아리에 맴버라구?? "[p]
#설나희
" 난...괜찮다고 생각해... "[p]
[_tb_end_text]

[quake  time="300"  count="2"  hmax="3"  wait="true"  vmax="3"  ]
[tb_start_text mode=1 ]
#진다영
" 설나희! 너까지!!!! "[p]
#강여진
" 그럼 이야기는 끝난거네! 다들 동의한거다?! "[p]
#진다영
" 잠깐 아직 나는.....! "[p]
#강여진
" 앞으로 잘 부탁해! 우리 보컬! "[p]
[_tb_end_text]

[font  size="40"  color="0x000000"  face="SBB"  ]
[quake  time="1000"  count="5"  hmax="4"  wait="false"  vmax="4"  ]
[tb_start_text mode=1 ]
#진다영
" 내 이야기 아직 안끝났어어어어!!! "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*l_no_02

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#진다영
" 거봐! 시간낭비만 한거잖아! "[p]

[_tb_end_text]

[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[tb_start_text mode=1 ]
#강여진
" 아냐! 네가 계속 소리를 지르니까 그러는거 아니야! "[p]
#설나희
" 그럴지도..... "[p]
#진다영
" 뭐? 설나희 너까지! "[p]
#강여진
" 부탁이야! 우리는 네가 정말 필요해 [l][r]너를 보는 순간부터 같이 하고싶었단 말이야 응? "[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#진다영
" 우리가 아니고 네가 필요한거겠지!! "[p]
#설나희
" 저것도 맞는말이긴 하지..... "[p]
#강여진
" 할거지!!? "[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
덥썩-[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#&[sf.name]
' ............어?? '[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#진다영
" 에...????? "[p]
[_tb_end_text]

[chara_hide  name="SulNaHee"  time="400"  wait="false"  pos_mode="true"  ]
[chara_hide  name="KangYeoJin"  time="400"  wait="false"  pos_mode="true"  ]
[chara_hide  name="JinDaYoung"  time="400"  wait="false"  pos_mode="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="fadeIn"  storage="BGI/Common_Black.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
손.....손을 잡았어..... [p]
여자 손을 잡아보는건....처음이야..... [p]
부...부드러워..... [p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="10"  method="crossfade"  storage="room.jpg"  ]
[chara_show  name="KangYeoJin"  time="300"  wait="false"  storage="chara/3/KangYeoJin.png"  width="534"  height="1072"  left="728"  top="192"  reflect="false"  ]
[chara_show  name="JinDaYoung"  time="300"  wait="false"  storage="chara/4/JinDaYoung.png"  width="620"  height="1007"  left="-1"  top="254"  reflect="false"  ]
[chara_show  name="SulNaHee"  time="300"  wait="false"  storage="chara/5/SulNaHee.png"  width="593"  height="964"  left="1343"  top="298"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#&[sf.name]
" 나는.....나는..........나는....... "[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_18_red"  storage="Chapter01_School_Club_01.ks"  size="50"  target="*l_yes_03"  x="466"  y="282"  width="1000"  height="150"  text="무슨&nbsp;노래든&nbsp;맡겨만&nbsp;줘!"  _clickable_img=""  ]
[glink  color="btn_18_blue"  storage="Chapter01_School_Club_01.ks"  size="50"  target="*l_yes_03"  x="466"  y="582"  width="1000"  height="150"  text="무조건!&nbsp;무조건&nbsp;할게!"  _clickable_img=""  ]
[s  ]
*l_yes_03

[stopbgm  time="1000"  ]
[playbgm  volume="10"  time="1000"  loop="true"  storage="Common_Title_Screen_01.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#강여진
" 역시! 그럴 줄 알았어!! "[p]
#진다영
" 에? 너 방금...손...! "[p]
#강여진
" 우리 동아리에 들어온걸 환영해!! "[p]
#진다영
" 아니...손.... "[p]
#강여진
" 앞으로 잘 부탁해! 우리 보컬! "[p]
#설나희
" 난....좋다고 생각해... "[p]
[_tb_end_text]

[quake  time="500"  count="3"  hmax="2"  wait="false"  vmax="3"  ]
[font  size="40"  color="0x000000"  face="SBB"  ]
[tb_start_text mode=1 ]
#진다영
" 설나희.....! 너까지! "[p]
[_tb_end_text]

[resetfont  ]
[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
