[_tb_system_call storage=system/_A_01_Prologue_03.ks]

*in01

[tb_keyconfig  flag="1"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[bg  time="10"  method="crossfade"  storage="Common_Home_Room_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
집에 들어온 후 피곤한 몸을 이끌고 곧장 방 안으로[r]들어갔다.[p]
#
아직 정리가 되지 않은 방이 눈에 들어오자 벌써 머리가[r]지끈거렸다.[p]
#&[sf.name]
( 후... 오늘 하루 정말 기네. 빨리 씻고 자야지. )[p]
#
짐을 내려놓고 씻을 준비를 하려던 찰나 노크 소리가 들리고 문이 열렸다.[p]
#엄마
아들 저녁 먹을 시간도 지났는데 학교에서 무슨 일 있었어?[p]
#&[sf.name]
아... 그게... 친구랑 이야기하다가 늦었어요.[p]
#엄마
그래? 무슨 이야기를 이렇게 길게 했어?[p]
#&[sf.name]
그냥... 별 이야기는 아닌데...[p]
#엄마
아들. 엄마한테는 솔직하게 말해야지.[p]
#&[sf.name]
그... 그러니까... 그게......[p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
#엄마
빨리 말 안 해!!![p]
#아빠
에헤이- 한창 젊을 때인데 조금 늦을 수도 있지 왜 그래.[p]
#아빠
우리도 그랬는데 뭘-[p]
#
아빠와 눈이 마주치자 능글맞게 눈썹을 두 번[r]치켜올리셨다.
#&[sf.name]
아빠가 엄마를 자연스럽게 데리고 나가려는 도중[r]엄마가 멈춰 서며 말씀하셨다.[p]
#엄마
아들! 오늘은 꼭 방 정리하렴?[p]
#&[sf.name]
네 알겠어요.[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#
여기저기 어지럽게 널브러진 이삿짐들이 눈에 띈다.[p]
#
이사를 온 지 일주일 정도 지났지만, 아직 정리를 다 못[r]끝내서 상자 안에 있는 짐들이 아직 많다.[p]
#&[sf.name]
엄마가 정리하라고 하셨는데...[p]
#&[sf.name]
생각하기를 잠시 멈춘 채 침대에 몸을 던졌다.[p]
#&[sf.name]
하자...[p]
#&[sf.name]
내일 정리하는 걸로 하자...[p]
#
침대에 몸을  잡생각이 떠올랐다.[r]
동아리, 루틴, 전단지, 앨범, 짐정리...[p]
낮에 꾸었던 꿈이 가장 크게 떠올랐다.[p]
#&[sf.name]
( 그 꿈은 뭘까. )[p]
#&[sf.name]
( 하필이면 수업 시간에 부끄럽게... )[p]
#&[sf.name]
( 한 번도 해본 적이 없는데 그런 꿈을 꾸는 게[r]참 이상하네... )[p]
#&[sf.name]
( 차라리 오늘 있던 일이 꿈이었으면 좋겠는데... )[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
아침의 시작을 알리는 새소리에 잠에서 깬 채 잠시 멍하니[r]누워있었다.[p]
#
이렇게 개운하게 일어난 게 얼마 만인지 모르겠다.[p]
#
전날의 일들 때문에 몸이 피곤해 숙면을 한 것 같았...[p]
[quake  time="300"  count="5"  hmax="10"  wait="false"  vmax="10"  ]
#&[sf.name]
!!![p]
#
엄습해온 불안감에 나는 휴대폰을 꺼내 시간을 확인해[r]보았다.[p]
#
역시 안 좋은 예감은 틀리지 않는다는 것을 증명하듯이[r]평소보다 20분이나 늦게 일어났다.[p]
#엄마
아들! 벌써 해 떴다 아침이야![p]
#&[sf.name]
네! 일어났어요![p]
#
나는 교복을 걸치다시피 한 채 집에서 부리나케[r]뛰쳐나왔다.[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Road_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
집을 나서자 잔뜩 불편한 얼굴의 대용이를 만났다.[p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[jeon_ill]
[chara_part name="Jeon" body="4" face="4" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
늦는구만 늦어! 이럼 내 루틴이 또 꼬이잖아![p]
[chara_part name="Jeon" body="4" face="8" ]
#&[sf.name]
걱정하지 마 지각은 절대 안 할 테니까.[p]
[chara_part name="Jeon" body="3" face="1" ]
#전대용
지각도 문제지만 어제 내가 말한 동아리는 생각해봤어?[p]
[chara_part name="Jeon" body="3" face="8" ]
#&[sf.name]
그래도 역시 너희 동아리는 들어가지 않을 거야.[p]
[chara_part name="Jeon" body="2" face="1" ]
#전대용
이런이런... 오늘까지 동아리에 들어가야 하니[r]기억하라고?[p]
#&[sf.name]
알겠어. 늦겠다 어서 가자.[p]
[chara_hide_all time="300" wait="false"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[jeon_ill]
[chara_part name="Jeon" body="1" face="2" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
그러니까 나랑 같이 벼루에 먹을 갈며 운기조식을 하며...[p]
#&[sf.name]
너희 동아리는 벼루에 먹이 아니고 마요네즈를 붓잖아....[p]
[chara_part name="Jeon" body="2" face="4" ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#전대용
항상 마요네즈만 쓰는 건 아니라고? 가끔은 간장이나[r]초고추장 같은 것도 쓴다니깐!?[p]
[chara_hide_all time="300" wait="false"]
#
상상하기도 어려운 대용이의 동아리 활동 경험을 듣던[r]와중 교실 뒷문이 열렸다.[p]
#
벌컥-[p]
#???
네가 그 전학생이구나![p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="500"  method="crossfade"  storage="Common_Black.jpg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
고개를 돌리자, 한 여학생이 나를 보며 서 있었다.[p]
#
문을 어찌나 세게 열었는지 쾅 하는 소리와 함께 약간의[r]바람을 타고 좋은 향기가 날라왔다.[p]
#&[sf.name]
( 예쁘다... )[p]
#
감탄하고 있는 사이 향기가 지나가 버렸다.[p]
#
그 자리에는 처음 보는 여자애를 마주한 부끄러움만이[r]남아있었다.[p]
#
어떤 대답을 해야 할지 고민하는 와중에 눈앞의 여학생이[r]기다리지 못한 채 다시 말을 걸었다.[p]
#???
저기... 듣고 있는 거야?[p]
#&[sf.name]
어... 누구세요...?[p]
#???
러브크레센도![p]
#&[sf.name]
( ...진짜 학교에 소문이 다 난 거야?! )[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
여학생은 나에게 볼일이 있다는 듯 교실로 들어와 내 앞에[r]멈춰선 채 말을 이어 나갔다.[p]
[kang_ill]
[chara_part name="Kang" body="2" face="1" ]
[chara_show name="Kang" time="300" top="0" left="553" wait="false"]
#강여진
반가워! 내 이름은 강여진이라고 해![p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
네가 누군지 한번 보러왔어! 화제의 전학생이잖아![p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
전학생이면 아직 동아리에는 들어가지 않았을테고...[p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
너 혹시 우리 동아리에 들어오지 않을래?[p]
#&[sf.name]
어... 갑자기...요? 혹시 이상한 곳은 아니죠?[p]
[chara_part name="Kang" body="2" face="8" ]
#&[sf.name]
마요네즈로 붓글씨를 쓴다던지...[p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
하하! 우리 동아리는 이상한 곳 아니야![p]
#&[sf.name]
( 그래도 정상적인 동아리도 있어서 다행이다... )[p]
[chara_part name="Kang" body="1" face="1" ]
#강여진
우리 학교에 밴드부가 있다는 이야기는 들어본 적 있어?[p]
#&[sf.name]
밴드...부?[p]
[chara_hide_all time="300" wait="false"]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
[chara_part name="Kang" body="2" face="2" ]
[chara_show name="Kang" time="300" top="0" left="375" width="1169" height="2735" wait="false"]
#강여진
응! 밴드부![p]
#&[sf.name]
( 윽... 가까워... )[p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
우리는 네가 꼭 필요해![p]
#&[sf.name]
아무리 그래도 그렇게 갑작스럽게 말하면...[p]
[chara_part name="Kang" body="3" face="7" ]
#강여진
음...역시 생각할 시간이 필요한 건가?[p]
[chara_part name="Kang" body="3" face="1" ]
#강여진
그럼 오늘 수업이 끝나고 동아리실에서 보는 거로 하자![p]
[chara_part name="Kang" body="1" face="2" ]
#강여진
위치는 4층 과학실 옆에 있어! 동아리실 이름이[r]붙어있어서 찾기 쉬울 거야![p]
[chara_part name="Kang" body="2" face="1" ]
#강여진
오늘 방과 후에 기다리고 있을 테니 이따 보는 걸로 하자![p]
[chara_part name="Kang" body="1" face="5" ]
#강여진
늦으면 안 돼![p]
[chara_hide_all time="300" wait="false"]
#
일방적인 대화 끝에 여진이는 교실을 나갔다.[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jeon_ill]
[chara_part name="Jeon" body="2" face="2" ]
[chara_show name="Jeon" time="300" top="0" left="362" width="1004" height="1903" wait="false"]
#전대용
오... 강여진...[p]
#&[sf.name]
뭐야? 아는 사람이야?[p]
[chara_part name="Jeon" body="4" face="4" ]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#전대용
그럼! 당연히 알고 있지![p]
#전대용
도내 최상위S급쿨뷰티미녀![p]
#전대용
금발태닝양아치선배님도절대로가질수없던마성의매력을소유한2학년최고미녀게다가샴푸는무엇을사용하는지머리향기는말로설명이되지않지아프로디테의질투를...[p]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[chara_part name="Jeon" body="4" face="8" ]
#&[sf.name]
그만! 거기까지![p]
#전대용
[chara_part name="Jeon" body="2" face="1" ]
엣헴...아무튼 그런 사람이 너랑 말을 하게 될 줄이야.[p]
#전대용
[chara_part name="Jeon" body="1" face="2" ]
이 자식 대단한걸?[p]
[chara_part name="Jeon" body="1" face="6" ]
#&[sf.name]
그러면 그렇게 잘 아는 녀석이 아까는 왜 조용했을까?[p]
#&[sf.name]
꿀 먹은 벙어리가 따로 없던걸?[p]
[chara_part name="Jeon" body="4" face="8" ]
#전대용
...가끔 남자에게는 말 못 할 비밀들이 있지...[p]
[chara_part name="Jeon" body="4" face="4" ]
#전대용
더는 묻지마라![p]
[chara_part name="Jeon" body="4" face="6" ]
#전대용
수업 종 울렸네. 난 간다![p]
[chara_hide_all time="300" wait="false"]
#&[sf.name]
대용이가 교실에서 나가고 잠시 후 선생님이 교실로[r]들어오셨다.[p]
#&[sf.name]
( 밴드부라... 너무나 갑작스럽게 초대받았는데... )[p]
#&[sf.name]
( 그러고 보니 어제 꿨던 꿈도 밴드를 하는 것 같았지.)[p]
#&[sf.name]
( 딱히 생각은 없었는데 한번 가볼까...? )[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="A_01_Prologue_03.ks"  target=""  ]
