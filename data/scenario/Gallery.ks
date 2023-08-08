[_tb_system_call storage=system/_Gallery.ks]

*gallery_01

[tb_clear_images]

[mask  time="200"  effect="slideInRight"  color="0x000000"  ]
[tb_start_tyrano_code]
[freeimage layer="0"]
[image layer=0 left=0 top=0 page=fore visible=true name=gallery storage = ../image/New_GUI/CG_UI/CG_Bgi_01.png ]

[_tb_end_tyrano_code]

*cg_01

[cm  ]
*base_root

[cm  ]
[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[mask_off  time="200"  effect="slideOutRight"  ]
*base_01

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="pageback" storage="Gallery.ks" target="base_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="base_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="1"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="1"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="2"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="3"]
[tb_ptext_show x="1025" y="594" size="17" color="0xFFFFFF" time="0" text="4"]
[tb_ptext_show x="1420" y="594" size="17" color="0xFFFFFF" time="0" text="5"]
[tb_ptext_show x="1825" y="594" size="17" color="0xFFFFFF" time="0" text="6"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="base01"]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="base02"]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="base03"]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="base04"]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="base05"]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="base06"]

[s  ]
*base_02

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="base07"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="base08"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="base09"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="base10"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="base11"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="base12"  ]

[tb_start_tyrano_code]
[button name="pageback" storage="Gallery.ks" target="base_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="base_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="2"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="7"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="8"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="9"]
[tb_ptext_show x="1023" y="594" size="17" color="0xFFFFFF" time="0" text="10"]
[tb_ptext_show x="1418" y="594" size="17" color="0xFFFFFF" time="0" text="11"]
[tb_ptext_show x="1823" y="594" size="17" color="0xFFFFFF" time="0" text="12"]
[_tb_end_tyrano_code]

[s  ]
*kang_root

[cm  ]
[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

*kang_01

[tb_ptext_hide  time="1"  ]
[tb_start_tyrano_code]
[tb_clear_images]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[button name="pageback" storage="Gallery.ks" target="kang_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="kang_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="1"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="1"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="2"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="3"]
[tb_ptext_show x="1025" y="594" size="17" color="0xFFFFFF" time="0" text="4"]
[tb_ptext_show x="1420" y="594" size="17" color="0xFFFFFF" time="0" text="5"]
[tb_ptext_show x="1825" y="594" size="17" color="0xFFFFFF" time="0" text="6"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="../bgimage/CG/Kang_CG_01.png"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="kang01"  ]

[tb_cg_image_button  graphic="../bgimage/CG/Kang_CG_02.png"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="kang02"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="kang03"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="kang04"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="kang05"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="kang06"  ]

[s  ]
*kang_02

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="pageback" storage="Gallery.ks" target="kang_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="kang_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="2"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="7"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="8"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="9"]
[tb_ptext_show x="1023" y="594" size="17" color="0xFFFFFF" time="0" text="10"]
[tb_ptext_show x="1418" y="594" size="17" color="0xFFFFFF" time="0" text="11"]
[tb_ptext_show x="1823" y="594" size="17" color="0xFFFFFF" time="0" text="12"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="kang07"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="kang08"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="kang09"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="kang10"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="kang11"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="kang12"  ]

[s  ]
*jin_root

[cm  ]
[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

*jin_01

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[button name="pageback" storage="Gallery.ks" target="jin_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="jin_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="1"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="1"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="2"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="3"]
[tb_ptext_show x="1025" y="594" size="17" color="0xFFFFFF" time="0" text="4"]
[tb_ptext_show x="1420" y="594" size="17" color="0xFFFFFF" time="0" text="5"]
[tb_ptext_show x="1825" y="594" size="17" color="0xFFFFFF" time="0" text="6"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="jin01"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="jin02"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="jin03"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="jin04"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="jin05"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="jin06"  ]

[s  ]
*jin_02

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="pageback" storage="Gallery.ks" target="jin_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="jin_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="2"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="7"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="8"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="9"]
[tb_ptext_show x="1023" y="594" size="17" color="0xFFFFFF" time="0" text="10"]
[tb_ptext_show x="1418" y="594" size="17" color="0xFFFFFF" time="0" text="11"]
[tb_ptext_show x="1823" y="594" size="17" color="0xFFFFFF" time="0" text="12"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="jin07"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="jin08"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="jin09"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="jin10"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="jin11"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="jin12"  ]

[s  ]
*sul_root

[cm  ]
[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

*sul_01

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[button name="pageback" storage="Gallery.ks" target="sul_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="sul_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="1"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="1"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="2"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="3"]
[tb_ptext_show x="1025" y="594" size="17" color="0xFFFFFF" time="0" text="4"]
[tb_ptext_show x="1420" y="594" size="17" color="0xFFFFFF" time="0" text="5"]
[tb_ptext_show x="1825" y="594" size="17" color="0xFFFFFF" time="0" text="6"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="sul01"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="sul02"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="sul03"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="sul04"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="sul05"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="sul06"  ]

[s  ]
*sul_02

[tb_ptext_hide  time="1"  ]
[tb_clear_images]

[tb_start_tyrano_code]
[button name="base" storage="Gallery.ks" target="base_root" graphic="../image/New_GUI/CG_UI/Base_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Base_Bt_02.png" width="418" height="88" x="105" y="272" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="kang" storage="Gallery.ks" target="kang_root" graphic="../image/New_GUI/CG_UI/Kang_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Kang_Bt_02.png" width="418" height="88" x="105" y="426" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="jin" storage="Gallery.ks" target="jin_root" graphic="../image/New_GUI/CG_UI/Jin_Bt_01.png" enterimg="../image/New_GUI/CG_UI/Jin_Bt_02.png" width="418" height="88" x="105" y="582" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="sul" storage="Gallery.ks" target="sul_root" graphic="../image/New_GUI/CG_UI/Sul_Bt_03.png" enterimg="../image/New_GUI/CG_UI/Sul_Bt_02.png" width="418" height="88" x="105" y="736" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Gallery.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="110" height="56" x="50" y="1000" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="pageback" storage="Gallery.ks" target="sul_01" graphic="../image/New_GUI/CG_UI/Pageback_01.png" enterimg="../image/New_GUI/CG_UI/Pageback_02.png" width="23" height="41" x="1688" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="pagenext" storage="Gallery.ks" target="sul_02" graphic="../image/New_GUI/CG_UI/Pagenext_01.png" enterimg="../image/New_GUI/CG_UI/Pagenext_02.png" width="23" height="41" x="1787" y="796" clickse="UI/Config_Sellect_Click_01.wav"]
[tb_ptext_show x="1737" y="796" size="41" color="0x000000" time="0" text="2"]
[tb_ptext_show x="1025" y="312" size="17" color="0xFFFFFF" time="0" text="7"]
[tb_ptext_show x="1420" y="312" size="17" color="0xFFFFFF" time="0" text="8"]
[tb_ptext_show x="1825" y="312" size="17" color="0xFFFFFF" time="0" text="9"]
[tb_ptext_show x="1023" y="594" size="17" color="0xFFFFFF" time="0" text="10"]
[tb_ptext_show x="1418" y="594" size="17" color="0xFFFFFF" time="0" text="11"]
[tb_ptext_show x="1823" y="594" size="17" color="0xFFFFFF" time="0" text="12"]
[_tb_end_tyrano_code]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="284"  _tb_parts_type="cg_image_button"  id="sul07"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="284"  _tb_parts_type="cg_image_button"  id="sul08"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="284"  _tb_parts_type="cg_image_button"  id="sul09"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="669"  y="566"  _tb_parts_type="cg_image_button"  id="sul10"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1063"  y="566"  _tb_parts_type="cg_image_button"  id="sul11"  ]

[tb_cg_image_button  graphic="none"  storage="system/master_cg.ks"  target=""  role="sleepgame"  no_graphic="&sf._tb_cg_noimage"  time="1"  width="344"  height="194"  x="1469"  y="566"  _tb_parts_type="cg_image_button"  id="sul12"  ]

[s  ]
*back

[tb_clear_images]

[tb_start_tyrano_code]
[cm]
[freeimage layer="0"]
[freeimage layer=1]
[wait_cancel]
[awakegame]
[_tb_end_tyrano_code]

[jump  storage="Gamenote.ks"  target="*gamenote_01"  ]
[s  ]
