[_tb_system_call storage=system/_Credit_01.ks]

*credit_01

[mask  time="200"  effect="slideInRight"  color="0x000000"  ]
*prod

[mask  time="100"  effect="slideInRight"  color="0xffffff"  ]
[tb_start_tyrano_code]
[freeimage layer="0"]
[image layer=0 left=0 top=0 page=fore visible=true name=credit storage = ../image/New_GUI/Credit_UI/Credit_Bgi_01.png ]

[_tb_end_tyrano_code]

[cm  ]
[tb_start_tyrano_code]
[image layer=1 left=695 top=227 page=fore visible=true name=We storage = ../image/New_GUI/Credit_UI/Credit_We_01.png ]
[button name="prod" storage="Credit_01.ks" target="prod" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Prod_03.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Prod_02.png" width="418" height="88" x="105" y="322" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="help" storage="Credit_01.ks" target="help" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Help_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Help_02.png" width="418" height="88" x="105" y="505" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="Spon" storage="Credit_01.ks" target="Spon" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Spon_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Spon_02.png" width="418" height="88" x="105" y="688" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Credit_01.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="185" height="88" x="33" y="965" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[mask_off  time="200"  effect="slideOutRight"  ]
[s  ]
*help

[mask  time="100"  effect="slideInRight"  color="0xffffff"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 left=695 top=227 page=fore visible=true name=We storage = ../image/New_GUI/Credit_UI/Credit_Help_01.png ]
[button name="prod" storage="Credit_01.ks" target="prod" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Prod_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Prod_02.png" width="418" height="88" x="105" y="322" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="help" storage="Credit_01.ks" target="help" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Help_03.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Help_02.png" width="418" height="88" x="105" y="505" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="Spon" storage="Credit_01.ks" target="Spon" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Spon_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Spon_02.png" width="418" height="88" x="105" y="688" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Credit_01.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="185" height="88" x="33" y="965" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[mask_off  time="200"  effect="slideOutRight"  ]
[s  ]
*Spon

[mask  time="100"  effect="slideInRight"  color="0xffffff"  ]
[cm  ]
[tb_start_tyrano_code]
[freeimage layer="1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 left=695 top=227 page=fore visible=true name=We storage = ../image/New_GUI/Credit_UI/Credit_Spon_01.png ]
[button name="prod" storage="Credit_01.ks" target="prod" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Prod_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Prod_02.png" width="418" height="88" x="105" y="322" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="help" storage="Credit_01.ks" target="help" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Help_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Help_02.png" width="418" height="88" x="105" y="505" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="Spon" storage="Credit_01.ks" target="Spon" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Spon_03.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Spon_02.png" width="418" height="88" x="105" y="688" enterse="UI/Config_Sellect_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="back" storage="Credit_01.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="185" height="88" x="33" y="965" clickse="UI/Config_Back_01.wav"]
[_tb_end_tyrano_code]

[mask_off  time="200"  effect="slideOutRight"  ]
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
