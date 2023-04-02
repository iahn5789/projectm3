[_tb_system_call storage=system/_Gift_line_random_script_Scene_01.ks]

*L_line_value_save

[jump  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_00"  cond="f.gift_line==0"  ]
[jump  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_01"  cond="f.gift_line==1"  ]
[jump  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_02"  ]
[jump  storage="Gift_line_random_script_Scene_01.ks"  target="*L_line_value_03"  ]
[s  ]
*L_line_value_00

[tb_eval  exp="f.gift_line='입에 단게 머리에 좋대!'"  name="gift_line"  cmd="="  op="t"  val="입에 단게 머리에 좋대!"  val_2="undefined"  ]
[return  ]
*L_line_value_01

[tb_eval  exp="f.gift_line='초코렛...오오...'"  name="gift_line"  cmd="="  op="t"  val="초코렛...오오..."  val_2="undefined"  ]
[return  ]
*L_line_value_02

[tb_eval  exp="f.gift_line='초!코!조!아!'"  name="gift_line"  cmd="="  op="t"  val="초!코!조!아!"  val_2="undefined"  ]
[return  ]
*L_line_value_03

[tb_eval  exp="f.gift_line='와아 마치 살아있는 것 같아!'"  name="gift_line"  cmd="="  op="t"  val="와아 마치 살아있는 것 같아!"  val_2="undefined"  ]
[return  ]
