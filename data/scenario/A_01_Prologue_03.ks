[_tb_system_call storage=system/_A_01_Prologue_03.ks]

*in01

[tb_keyconfig  flag="1"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="MySweethome_Scene_Home_01.wav"  fadein="true"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Office_01.wav"  fadein="true"  loop="true"  ]
[bg  time="10"  method="crossfade"  storage="Common_Home_Dirtyroom_Bgi_Night_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]집에 들어오니 어느새 하늘은 완전히 어두워져 있었다.[t2][p]
#
[t1]피곤한 몸을 이끌고 곧장 방 안으로 들어갔다.[t2][p]
#
[t1]아직 정리가 되지 않은 방이 눈에 들어오자 벌써 머리가[r]지끈거렸다.[t2][p]
#&[sf.name]
[t1]( 후... 오늘 하루 정말 기네. 빨리 씻고 자야지. )[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
[t1]짐을 내려놓고 씻을 준비를 하려던 찰나 노크 소리가 들리고 문이 열렸다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Door_Noke_01.wav"  ]
[tb_start_tyrano_code]
#
[t1]똑.  똑.  똑       [p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  fadeout="false"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Door_Open_Squeak_01.wav"  ]
[tb_start_tyrano_code]
#엄마
[t1]아들 저녁 먹을 시간도 지났는데 학교에서 무슨 일 있었어?[t2][p]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]아... 그게... 친구랑 이야기하다가 늦었어요.[t2][p]
#엄마
[t1]그래? 무슨 이야기를 이렇게 길게 했어?[t2][p]
#&[sf.name]
[t1]그냥... 별 이야기는 아닌데...[t2][p]
#엄마
[t1]아들. 엄마한테는 솔직하게 말해야지.[t2][p]
#&[sf.name]
[t1]그... 그러니까... 그게......[t2][p]
[_tb_end_tyrano_code]

[playse  volume="80"  time="1000"  buf="0"  storage="SFX/Emotion_Angry_roar_01.wav"  ]
[stopse  time="2000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
#엄마
[t1]빨리 말 안 해!!![t2][p]
#아빠
[t1]에헤이- 친구들끼리 놀다 보면 조금 늦을 수도 있지 왜 그래.[t2][p]
#아빠
[t1]우리도 그랬는데 뭘-[t2][p]
#
[t1]아빠와 눈이 마주치자 능글맞게 눈썹을 두 번[r]치켜올리셨다.[t2][p]
#&[sf.name]
[t1]아빠가 엄마를 자연스럽게 데리고 나가려는 도중[r]엄마가 멈춰 서며 말씀하셨다.[t2][p]
#엄마
[t1]아들! 오늘은 꼭 방 정리하렴?[t2][p]
#&[sf.name]
[t1]네 알겠어요.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
[t1]여기저기 어지럽게 널브러진 이삿짐들이 눈에 띈다.[t2][p]
#
[t1]이사를 온 지 일주일 정도 지났지만, 아직 정리를 다 못[r]끝내서 상자 안에 있는 짐들이 아직 많다.[t2][p]
#&[sf.name]
[t1]엄마가 정리하라고 하셨는데...[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="0"  storage="SFX/Common_Body_Fall_Bed_01.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]생각하기를 잠시 멈춘 채 침대에 몸을 던졌다.[t2][p]
#&[sf.name]
[t1]하자...[t2][p]
#&[sf.name]
[t1]내일 정리하는 걸로 하자...[t2][p]
#
[t1]침대에 몸을  잡생각이 떠올랐다.[r]동아리, 루틴, 전단지, 앨범, 짐정리...[t2][p][t1]낮에 꾸었던 꿈이 가장 크게 떠올랐다.[t2][p]

[_tb_end_tyrano_code]

[stopbgm  time="6000"  fadeout="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]( 그 꿈은 뭘까. )[t2][p]
#&[sf.name]
[t1]( 하필이면 수업 시간에 부끄럽게... )[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
[bg  time="500"  method="crossfade"  storage="Common_Home_Room_Bgi_03.png"  ]
#&[sf.name]
[t1]( 한 번도 해본 적이 없는데 그런 꿈을 꾸는 게[r]참 이상하네... )[t2][p]
[bg  time="500"  method="crossfade"  storage="Common_Home_Room_Bgi_04.png"  ]
#&[sf.name]
[t1]( 차라리 오늘 있던 일이 꿈이었으면 좋겠는데... )[t2][p]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="120"  time="1000"  buf="1"  storage="SFX/Common_Morning_Bird_Twitter_01.wav"  fadein="false"  ]
[playse  volume="80"  time="500"  buf="3"  storage="Amb/Amb_Shool_Club_01.wav"  fadein="true"  loop="true"  ]
[bg  time="10"  method="crossfade"  storage="Common_Home_Dirtyroom_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]아침의 시작을 알리는 새소리에 잠에서 깬 채 잠시 멍하니[r]누워있었다.[t2][p]
#
[t1]이렇게 개운하게 일어난 게 얼마 만인지 모르겠다.[t2][p]
#
[t1]전날의 일들 때문에 몸이 피곤해 숙면을 한 것 같았...[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Common_Text_Kick_01.wav"  ]
[playbgm  volume="110"  time="1000"  loop="true"  storage="Our_Story_Common_Classroom_01.wav"  ]
[tb_start_tyrano_code]
[quake  time="300"  count="5"  hmax="10"  wait="false"  vmax="10"  ]
#&[sf.name]
[t1]!!![p]
#
[t1]엄습해온 불안감에 나는 휴대폰을 꺼내 시간을 확인해[r]보았다.[t2][p]
#
[t1]역시나 안 좋은 예감은 언제나 틀리지 않는다.[t2][p]
#
[t1]평소보다 20분이나 늦게 일어났으니 개운하지 않을 리가[r]없었다.[t2][p]
#엄마
[t1]아들! 벌써 해 떴다 아침이야![t2][p]
#&[sf.name]
[t1]네! 일어났어요![t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[tb_start_tyrano_code]
#
[t1]나는 교복을 걸치다시피 한 채 집에서 부리나케[r]뛰쳐나왔다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="90"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Wood_Run_01.wav"  ]
[stopse  time="1000"  buf="3"  fadeout="true"  ]
[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="1000"  buf="1"  fadeout="true"  ]
[playse  volume="100"  time="1000"  buf="4"  storage="Amb/Amb_Road_01.wav"  fadein="true"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Road_Bgi_02.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]집을 나서자 잔뜩 불편한 얼굴의 대용이를 만났다.[t2][p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jeon_ill]
[chara_part name="Jeon" body="4" face="4" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]늦는구만 늦어! 이럼 내 루틴이 또 꼬이잖아![t2][p]
[chara_part name="Jeon" body="4" face="1" ]
#&[sf.name]
[t1]걱정하지 마 지각은 절대 안 할 테니까.[t2][p]
[chara_part name="Jeon" body="3" face="1" ]
#전대용
[t1]지각도 문제지만 어제 내가 말한 동아리는 생각해봤어?[t2][p]
[chara_part name="Jeon" body="3" face="8" ]
#&[sf.name]
[t1]그래도 역시 너희 동아리는 들어가지 않을 거야.[t2][p]
[chara_part name="Jeon" body="2" face="1" ]
#전대용
[t1]이런이런... 오늘까지 동아리에 들어가야 하니[r]기억하라고?[t2][p]
#&[sf.name]
[t1]알겠어. 늦겠다 어서 가자.[t2][p]
[chara_hide_all time="300" wait="false"]
[_tb_end_tyrano_code]

[playse  volume="70"  time="1000"  buf="0"  storage="SFX/Footsteps_Male_Ctr_Walk_01.wav"  ]
[tb_hide_message_window  ]
[stopse  time="2500"  buf="0"  fadeout="true"  ]
[stopse  time="1500"  buf="4"  fadeout="true"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="40"  time="1300"  buf="4"  storage="Amb/Amb_Classroom_Cutoff_01.wav"  fadein="true"  loop="true"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[jeon_ill]
[chara_part name="Jeon" body="1" face="2" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]그러니까 나랑 같이 벼루에 먹을 갈며 운기조식을 하며...[t2][p]
#
[t1]밀린 숙제를 하기 위해 쉬는 시간에도 책상에 앉아있었지만[t2][p]
#
[t1]대용이는 반까지 찾아와【과학서예부】이야기를 멈추지[r]않았다.[t2][p]
#&[sf.name]
[t1]너희 동아리는 벼루에 먹이 아니고 마요네즈를 붓잖아....[t2][p]
[chara_part name="Jeon" body="2" face="4" ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#전대용
[t1]항상 마요네즈만 쓰는 건 아니라고? 가끔은 간장이나[r]초고추장 같은 것도 쓴다니깐!?[t2][p]
[chara_hide_all time="300" wait="false"]
#
[t1]상상하기도 어려운 대용이의 동아리 활동 경험을 듣던[r]와중 교실 뒷문이 열렸다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="120"  time="1000"  buf="0"  storage="SFX/Common_Sliding_Door_Open_02.wav"  ]
[tb_start_tyrano_code]

#
드르륵-      쿵! [p]
#???
[t1]네가 그 전학생이구나![t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="0"  fadeout="true"  ]
[stopse  time="2000"  buf="4"  fadeout="true"  ]
[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="100"  time="3000"  buf="4"  storage="SFX/Common_Beautiful_Bell_Tree_01.wav"  loop="true"  fadein="true"  ]
[tb_cg  id="kang01"  ]
[bg  time="500"  method="crossfade"  storage="CG/Kang_CG_01.png"  ]
[mask_off  time="2000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
[t1]고개를 돌리자, 한 여학생이 나를 보며 서 있었다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
[t1]문을 어찌나 세게 열었는지 쾅 하는 소리가 들렸다.[t2][p]
#
[t1]그 소리와 함께 약간의 바람을 타고 좋은 향기가 날라왔다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#&[sf.name]
[t1]( 예쁘다... )[t2][p]
#
[t1]감탄하고 있는 사이 향기가 지나가 버렸다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="2000"  buf="4"  fadeout="true"  ]
[tb_start_tyrano_code]
#
[t1]그 자리에는 처음 보는 여자애를 마주한 부끄러움만이[r]남아있었다.[t2][p]
#
[t1]처음 보는 예쁜 여자애가 반까지 찾아와 나에게 말을 걸었다.[t2][p]
#
[t1]어떤 말을 해야 할지 모른 채 이러지도 저러지도 못하고 있자[t2][p]
#
[t1]눈앞의 여학생이 기다리지 못한 채 다시 말을 걸었다.[t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="2000"  buf="4"  storage="Amb/Amb_Classroom_Cutoff_01.wav"  fadein="true"  loop="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[tb_show_message_window  ]
[playse  volume="80"  time="1000"  buf="0"  storage="SFX/Common_Door_Noke_01.wav"  ]
[stopse  time="2000"  buf="0"  fadeout="true"  ]
[tb_start_tyrano_code]
#???
[t1]저기... 듣고 있는 거야?[t2][p]
#&[sf.name]
[t1]어... 누구세요...?[t2][p]
[_tb_end_tyrano_code]

[playse  volume="60"  time="1000"  buf="0"  storage="SFX/Common_String_Stab_Soft_01.wav"  ]
[tb_start_tyrano_code]
#???
[t1]러브크레센도!!!!![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="2"  storage="SFX/Footsteps_Female_Wood_Walk_01.wav"  fadein="true"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]( ...진짜 학교에 소문이 다 난 거야?! )[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
[t1]여학생은 나에게 볼일이 있다는 듯 교실로 들어와 내 앞에[r]멈춰선 채 말을 이어 나갔다.[t2][p]
[_tb_end_tyrano_code]

[stopse  time="1000"  buf="2"  fadeout="true"  ]
[tb_start_tyrano_code]
[kang_ill]
[chara_part name="Kang" body="2" face="1" ]
[chara_show name="Kang" time="300" top="0" left="553" wait="false"]
#강여진
[t1]반가워! 내 이름은 강여진이라고 해![t2][p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
[t1]네가 누군지 한번 보러왔어! 화제의 전학생이잖아![t2][p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
[t1]전학생이면 아직 동아리에는 들어가지 않았을테고...[t2][p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
[t1]너 혹시 우리 동아리에 들어오지 않을래?[t2][p]
#&[sf.name]
[t1]어... 갑자기...요? 혹시 이상한 곳은 아니죠?[t2][p]
[chara_part name="Kang" body="2" face="8" ]
#&[sf.name]
[t1]마요네즈로 붓글씨를 쓴다던지...[t2][p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
[t1]하하! 우리 동아리는 이상한 곳 아니야![t2][p]
#&[sf.name]
[t1]( 그래도 정상적인 동아리도 있어서 다행이다... )[t2][p]
[chara_part name="Kang" body="1" face="1" ]
#강여진
[t1]우리 학교에 밴드부가 있다는 이야기는 들어본 적 있어?[t2][p]
#&[sf.name]
[t1]밴드...부?[t2][p]
[chara_hide_all time="300" wait="false"]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time="300" top="0" left="375" width="1169" height="2735" wait="false"]
#강여진
[t1]응! 밴드부![t2][p]
#&[sf.name]
[t1]( 윽... 가까워... )[t2][p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
[t1]우리는 네가 꼭 필요해![t2][p]
#&[sf.name]
[t1]아무리 그래도 그렇게 갑작스럽게 말하면...[t2][p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
[t1]음...역시 생각할 시간이 필요한 건가?[t2][p]
[chara_part name="Kang" body="3" face="1" ]
#강여진
[t1]그럼 오늘 수업이 끝나고 동아리실에서 보는 거로 하자![t2][p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
[t1]위치는 4층 과학실 옆에 있어! 동아리실 이름이[r]붙어있어서 찾기 쉬울 거야![t2][p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
[t1]오늘 방과 후에 기다리고 있을 테니 이따 보는 걸로 하자![t2][p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
[t1]늦으면 안 돼![t2][p]
[_tb_end_tyrano_code]

[playse  volume="100"  time="1000"  buf="2"  storage="SFX/Footsteps_Female_Wood_Walk_01.wav"  ]
[stopse  time="3000"  buf="2"  fadeout="true"  ]
[tb_start_tyrano_code]
[chara_hide_all time="300" wait="false"]
#
[t1]일방적인 대화 끝에 여진이는 교실을 나갔다.[t2][p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jeon_ill]
[chara_part name="Jeon" body="2" face="2" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
[t1]오... 강여진...[t2][p]
#&[sf.name]
[t1]뭐야? 아는 사람이야?[t2][p]
[chara_part name="Jeon" body="4" face="4" ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#전대용
[t1]그럼! 당연히 알고 있지![t2][p]
#전대용
[t1]도내 최상위S급쿨뷰티미녀![t2][p]
[_tb_end_tyrano_code]

[playse  volume="50"  time="1000"  buf="1"  storage="SFX/Common_Cartoon_Walla_01.wav"  loop="false"  ]
[tb_start_tyrano_code]
#전대용
[t1]금발태닝양아치선배님도절대로가질수없던마성의매력을소유한2학년최고미녀게다가샴푸는무엇을사용하는지머리향기는말로설명이되지않지아프로디테의질투를...                                                                                                                                                                             [t2][er]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[chara_part name="Jeon" body="4" face="8" ]

[_tb_end_tyrano_code]

[stopse  time="1000"  buf="1"  ]
[playse  volume="70"  time="1000"  buf="2"  storage="UI/Common_Whistle_01.wav"  ]
[tb_start_tyrano_code]
#&[sf.name]
[t1]그만! 거기까지![t2][p]
#전대용
[chara_part name="Jeon" body="2" face="1" ]
[t1]엣헴...아무튼 그런 사람이 너랑 말을 하게 될 줄이야.[t2][p]
#전대용
[chara_part name="Jeon" body="1" face="2" ]
[t1]이 자식 대단한걸?[t2][p]
[chara_part name="Jeon" body="1" face="6" ]
#&[sf.name]
[t1]그러면 그렇게 잘 아는 녀석이 아까는 왜 조용했을까?[t2][p]
[chara_part name="Jeon" body="4" face="8" ]
#전대용
[t1]...가끔 남자에게는 말 못 할 비밀들이 있지...[t2][p]
[chara_part name="Jeon" body="4" face="4" ]
#전대용
[t1]더는 묻지마라![t2][p]
[_tb_end_tyrano_code]

[playse  volume="40"  time="1000"  buf="1"  storage="UI/Common_Breaktime_Belltower_01.wav"  ]
[tb_start_tyrano_code]
#
( ♪ ~ ♪ ~ ♪~ ♪♪ ~ ♬ )[p]
[_tb_end_tyrano_code]

[stopse  time="3500"  buf="1"  fadeout="true"  ]
[tb_start_tyrano_code]
[chara_part name="Jeon" body="4" face="6" ]
#전대용
[t1]수업 종 울렸네. 난 간다![t2][p]
[chara_hide_all time="300" wait="false"]
#&[sf.name]
[t1]대용이가 교실에서 나가고 잠시 후 선생님이 교실로[r]들어오셨다.[t2][p]
#&[sf.name]
[t1]( 밴드부라... 너무나 갑작스럽게 초대받았는데... )[t2][p]
#&[sf.name]
[t1]( 딱히 생각은 없었는데 한번 가볼까...? )[t2][p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="1"  storage="SFX/Footsteps_Male_Wood_Walk_01.wav"  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[stopse  time="2000"  buf="4"  fadeout="true"  ]
[jump  storage="A_02_Week_01_01.ks"  target="*in_01"  ]
