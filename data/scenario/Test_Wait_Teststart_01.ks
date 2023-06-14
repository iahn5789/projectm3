[_tb_system_call storage=system/_Test_Wait_Teststart_01.ks]

*teststartcheckkang

[jump  storage="Test_Wait_Teststart_01.ks"  target="*teststartcheckjin"  cond="f.k_poster_choice_whether=='FALSE'"  ]
*teststartcheckjin

[jump  storage="Test_Wait_Teststart_01.ks"  target="*teststartchecksul"  cond="f.j_poster_choice_whether=='FALSE'"  ]
*teststartchecksul

[jump  storage="Test_Wait_Teststart_01.ks"  target="*teststartfail"  cond="f.s_poster_choice_whether=='FALSE'"  ]
*teststartfail

[tb_start_tyrano_code]
[html]
<div class="caution01">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Caution_Teststart_01.png" alt="">
</div>
[endhtml]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[quake  time="300"  count="3"  hmax="5"  wait="false"  vmax="5"  ]
[button name="teststart" storage="Test_Wait_Teststart_01.ks" target="teststartcheck" graphic="../image/New_GUI/Test_UI/Button_Test_01.png" enterimg="../image/New_GUI/Test_UI/Button_Test_02.png" width="348" height="106" x="830" y="927" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[_tb_end_tyrano_code]

[jump  storage="Test_Wait_01.ks"  target="*callback"  ]
[jump  storage="Test_Wait_Teststart_01.ks"  target="*teststartsuccess"  cond="f.k_poster_choice_whether=='TRUE'"  ]
[jump  storage="Test_Wait_Teststart_01.ks"  target="*teststartsuccess"  cond="f.j_poster_choice_whether=='TRUE'"  ]
[jump  storage="Test_Wait_Teststart_01.ks"  target="*teststartsuccess"  cond="f.s_poster_choice_whether=='TRUE'"  ]
*teststartcheck

[tb_start_tyrano_code]
[if exp="f.k_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="test01" ]
[elsif exp="f.j_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="test02" ]
[elsif exp="f.s_poster_choice_whether === 'TRUE'"]
[jump  storage="Test_Wait_Teststart_01.ks"  target="test03" ]
[else]
[jump  storage="Test_Wait_Teststart_01.ks"  target="teststartfail" ]
[endif]

[_tb_end_tyrano_code]

[s  ]
*test01

[tb_ptext_show  x="1129"  y="625"  size="50"  color="0x000000"  time="10"  text="1"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[s  ]
*test02

[tb_ptext_show  x="1129"  y="625"  size="50"  color="0x000000"  time="10"  text="2"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[s  ]
*test03

[tb_ptext_show  x="1129"  y="625"  size="50"  color="0x000000"  time="10"  text="3"  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[s  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="Test_Wait_01.ks"  target="*callback"  ]
