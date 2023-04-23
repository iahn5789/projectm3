[_tb_system_call storage=system/_Credit_01.ks]

*credit_01

[mask  time="200"  effect="slideInRight"  color="0x000000"  ]
*prod

[tb_start_tyrano_code]
[freeimage layer="0"]
[image layer=0 left=0 top=0 page=fore visible=true name=credit storage = ../image/New_GUI/Credit_UI/Credit_Bgi_01.png ]

[_tb_end_tyrano_code]

[cm  ]
[tb_start_tyrano_code]
[image layer=1 left=695 top=227 page=fore visible=true name=We storage = ../image/New_GUI/Credit_UI/Credit_We_01.png ]
[button name="prod" storage="Credit_01.ks" target="prod" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Prod_03.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Prod_02.png" width="418" height="88" x="105" y="322" ]
[button name="help" storage="Credit_01.ks" target="help" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Help_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Help_02.png" width="418" height="88" x="105" y="505" ]
[button name="Spon" storage="Credit_01.ks" target="Spon" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Spon_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Spon_02.png" width="418" height="88" x="105" y="688" ]
[button name="back" storage="Credit_01.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="185" height="88" x="33" y="965"]
[_tb_end_tyrano_code]

[mask_off  time="200"  effect="slideOutRight"  ]
[s  ]
*help

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 left=695 top=227 page=fore visible=true name=We storage = ../image/New_GUI/Credit_UI/Credit_Help_01.png ]
[button name="prod" storage="Credit_01.ks" target="prod" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Prod_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Prod_02.png" width="418" height="88" x="105" y="322" ]
[button name="help" storage="Credit_01.ks" target="help" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Help_03.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Help_02.png" width="418" height="88" x="105" y="505" ]
[button name="Spon" storage="Credit_01.ks" target="Spon" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Spon_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Spon_02.png" width="418" height="88" x="105" y="688" ]
[button name="back" storage="Credit_01.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="185" height="88" x="33" y="965"]
[_tb_end_tyrano_code]

[s  ]
*Spon

[cm  ]
[tb_start_tyrano_code]
[freeimage layer="1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 left=695 top=227 page=fore visible=true name=We storage = ../image/New_GUI/Credit_UI/Credit_Spon_01.png ]
[button name="prod" storage="Credit_01.ks" target="prod" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Prod_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Prod_02.png" width="418" height="88" x="105" y="322" ]
[button name="help" storage="Credit_01.ks" target="help" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Help_01.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Help_02.png" width="418" height="88" x="105" y="505" ]
[button name="Spon" storage="Credit_01.ks" target="Spon" graphic="../image/New_GUI/Credit_UI/Credit_Bt_Spon_03.png" enterimg="../image/New_GUI/Credit_UI/Credit_Bt_Spon_02.png" width="418" height="88" x="105" y="688" ]
[button name="back" storage="Credit_01.ks" target="back" graphic="../image/New_GUI/CG_UI/UI_Close_Bt_01.png" enterimg="../image/New_GUI/CG_UI/UI_Close_Bt_02.png" width="185" height="88" x="33" y="965"]
[_tb_end_tyrano_code]

[s  ]
*back

[tb_clear_images]

[tb_start_tyrano_code]
[cm]
[clearfix]
[freeimage layer="0"]
[freeimage layer=1]
[wait_cancel]
[awakegame]
[_tb_end_tyrano_code]

[jump  storage="Gamenote.ks"  target="*gamenote_01"  ]
[s  ]
