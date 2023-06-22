[_tb_system_call storage=system/_A_01_Prologue_01.ks]

*in01

[call  storage="Particle_Test_Scene_01.ks"  target="*dust_particle"  ]
[tb_keyconfig  flag="1"  ]
[tb_eval  exp="f.Day=0"  name="Day"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_eval  exp="f.story='동아리&nbsp;생활을&nbsp;시작하다!'"  name="story"  cmd="="  op="t"  val="동아리&nbsp;생활을&nbsp;시작하다!"  val_2="undefined"  ]
[bg  time="1000"  method="crossfade"  storage="Common_Dream_Dark_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#
...어?[p]
#???
많이 긴장한 것 같은데? 괜찮은거지?[p]
#???
자 나를 봐봐![p]
#???
심호흡 한번하고...[p]
#???
다음 차례는! 러브...[p]
#&[sf.name]
러브.....[p]
[_tb_end_tyrano_code]

[bg  time="500"  method="crossfade"  storage="Common_Black.jpg"  ]
[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="10"  ]
[bg  time="10"  method="crossfade"  storage="Common_Sc_ClassRoom_Bgi_01_.png"  ]
[tb_start_tyrano_code]
#&[sf.name]
러브크레센도!!![p]
#일동
하하하하! 갑자기 뭐야!!![p]
#&[sf.name]
어...뭐지...?[p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#
빢![p]
#
갑자기 누군가 내 뒤통수를 때렸다.[p]
#선생님
이 자식은 수업 시간에 자는 걸로도 모자라서 소리까지[r]질러대네![p]
#선생님
뒤로 나가서 서 있어![p]
#&[sf.name]
아...으...어...네...[p]
#
화끈거리는 뒤통수를 잡고 뒤로 걸어 나갔다.[p]
#
뒤통수 너머로 더 화끈거리는 시선들이 느껴졌다.[p]
#&[sf.name]
( 뭐지? 꿈인가? )[p]
#&[sf.name]
( 꿈이라기엔 너무 생생했던 것 같은데... )[p]
#선생님
모두 조용! 집중해![p]
#
창밖의 햇살과 반 친구들의 웃음소리, 선생님의 호통을[r]들으니, 현실에 있다는 것이 실감이 난다.[p]
#&[sf.name]
( 꿈이였다니... 뭔가 기운빠지는구만... )[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="10"  method="crossfade"  storage="Common_Road_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#&[sf.name]
뒤에 나가 서 있는 거로 모자라 청소까지 하고 가라니...[p]
#&[sf.name]
이건 너무한 거 아니냐고...[p]
#???
오늘도 깊은 밤 꿈속에서 당신을 구하는 최고의 히어로![p]
#???
그 이름은 아름다운 러브크레센도![p]
#&[sf.name]
하...[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[bg  time="1000"  method="vanishIn"  storage="BGI/Common_Black.jpg"  ]
[tb_start_tyrano_code]
[jeon_ill]
[chara_part name="Jeon" body="3" face="1" ]
[chara_show name="Jeon" time=1000 wait=true width="570" height="1080" top="0" left="619" ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
#
전대용[p]
전학을 오자마자 친해진 유일한 친구다.[p]
재미도 있고 은근히 아는 것도 많지만...[p]
[chara_hide name="Jeon" ]
[_tb_end_tyrano_code]

[bg  time="1000"  method="vanishIn"  storage="Common_Road_Bgi_01.png"  ]
[tb_start_tyrano_code]
#&[sf.name]
변태다...[p]
;[chara_hide_all time=200 wait=false]
[jeon_ill]
[chara_part name="Jeon" body="3" face="1" ]
[chara_show name="Jeon" top="0" left="362" width=1004 height=1903 time=300 wait=false ]
#전대용
뭐? 하하! 자기소개라도 하는 건가?[p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#&[sf.name]
시끄러워![p]
#전대용
너 수업 중에 사자후를 날렸다며?[p]
#전대용
정말 멋있는 녀석이야.[p]
#전대용
수업을 듣기 싫으니 소리를 지른 것 아니야?[p]
#&[sf.name]
그거 칭찬 맞지?[p]
#&[sf.name]
근데 넌 왜 이 시간까지 학교에 있는 거야? [p]
너도 수업 듣기 싫어서 소리질렀냐?[p]
#전대용
...가끔 남자에게는 말 못 할 비밀들이 있지...[p]
#전대용
더는 묻지마라...[p]
#&[sf.name]
어... 그래...[p]
#&[sf.name]
( 역시 변태다. )[p]
#&[sf.name]
일이 있었겠지. 빨리 집에 가자.[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="10"  method="crossfade"  storage="Common_Road_Bgi_01.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
#전대용
그건 그렇고 물어보고 싶은 게 있는데.[p]
#전대용
전학와서 친구들은 좀 사귀었어?[p]
#전대용
늘 나랑만 붙어 다니는 것 같단 말이지.[p]
#&[sf.name]
그야 내가 먼저 다가가는 성격은 아니니까...[p]
#&[sf.name]
굳이 따지자면 너 말고는 친구가 없다고 할 수 있지.[p]
#전대용
흠...곤란하군 곤란해...[p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#&[sf.name]
갑자기 왜 시비야! 나는 지금 생활에 만족하고 있다고![p]
#전대용
아니. 내 말은 그게 아니야![p]
#전대용
너는 지금 우리 학교에서 아주 중요한 사실을 놓치고 있어.[p]
#&[sf.name]
중요한 사실? 그런 게 있으면 그냥 빨리 말해줬으면 되잖아.[p]
#전대용
후후...나 말고 다른 친구에게 들었으면 하는 마음에 미리 말하지 않았던 거라고![p]
#
전대용은 무언가 큰일이라도 난 것처럼 고개를 숙이고[r]가까이 다가왔다.[p]
#전대용
잘 들어! 우리 학교는 말이야...[p]
#전대용
동아리에 필수적으로 가입을 해야 해.[p]
#&[sf.name]
에...뭐?[p]
#전대용
네가 좋던 싫든 간에 무조건 동아리에 들어가야 해.[p]
#&[sf.name]
흠...그런 귀찮은 건 딱 질색인데.[p]
#전대용
응~교칙이야~ 그 누구도 예외는 없어~[p]
#&[sf.name]
글쎄.. 나는 딱히 취미도 없고 하고 싶은 것도 별로 없는걸.[p]
[quake  time="300"  count="3"  hmax="3"  wait="false"  vmax="3"  ]
#전대용
그렇다면 이미 정답은 정해져 있다![p]
#전대용
자네...나와 같은 서예부에 들어오지 않겠는가?[p]
#&[sf.name]
거기는 죽어도 싫어.[p]
#전대용
어째서지? 이런 마음에 평화를 주는 활동은 우리[r]서예부가 유일무이한데?[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
#&[sf.name]
그야 당연히 그냥 서예부가 아니고 【과학서예부】잖아.[p]
#전대용
이런 21세기 최첨단 시대에 과학은 기본 소양이라고?[p]
#&[sf.name]
바로 그게 문제라는 거야.[p]
#&[sf.name]
나는 마요네즈로 붓글씨를 쓰는 동아리에는 가입하고[r]싶지 않아![p]
#전대용
어허! 다 의미 있는 일이라는 것을 정녕 모르는 것이냐![p]
#전대용
너는 아주 중요한 사실을 놓치고 있어...[p]
#전대용
나는 단순히 과학과 서예 때문에 과학서예부에 들어가[r]있는 것이 아니야![p]
#전대용
진정한 남자라면 큰 그림을 보는 법![p]
#전대용
내가 과학서예부에 들어가 있는 이유는![p]
#전대용
바로 동아리 부장 때문이지![p]
#&[sf.name]
동아리 부장한테 약점이라도 잡힌 거야?[p]
#전대용
아니! 다른 이유가 있지![p]
#전대용
우리 동아리 부장 누나는 말이야...[p]
#전대용
예뻐.[p]
#&[sf.name]
뭐?[p]
#전대용
예쁘다고.[p]
#&[sf.name]
진짜 고작 그 이유로 그 동아리에 들어간 거라고...?[p]
#전대용
하하하! 내가 큰 그림을 보라고 했을 텐데?[p]
#&[sf.name]
설마...[p]
#전대용
역시 큰 가ㅅ...[p]
#&[sf.name]
그만! 거기까지![p]
#&[sf.name]
물어본 내가 바보지.[p]
#전대용
한번 보면 헤어 나오지 못하고 과학서예부에 들어오게[r]될걸?[p]
#&[sf.name]
제발 좀 조용히 말해줘... 같이 다니기 너무 부끄러워...[p]
#전대용
어차피 여기엔 우리 말고는 없다고?[p]
#&[sf.name]
에휴. 말을 말자.[p]
#
한번 풀려버린 대용이의 입은 멈출 줄 몰랐다.[p]
#
귀에 피가 나는 것 같아 만져보니 대용이의 침이었다.[p]
#
그렇게 만나 본 적도 없는 동아리 부장의 음식 취향까지[r]들어가며대용이와 함께 길을 걸어갔다.[p]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[jump  storage="A_01_Prologue_02.ks"  target="*in01"  ]
