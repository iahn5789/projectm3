; ティラノスクリプト テーマプラグイン theme_kopanda_bth_06_blue
; 作者:こ・ぱんだ
; https://kopacurve.blog.fc2.com/


[iscript]


mp.font_color    = mp.font_color    || "0x222222";
mp.name_color    = mp.name_color    || "0x222222";
mp.frame_opacity = mp.frame_opacity || "255";
mp.font_color2   = mp.font_color2   || "0x222222";
mp.glyph         = mp.glyph         || "off";

// Config.tjsで既読テキストのフォントカラーを「default」にしている場合はmp.font_color2は反映されません
if(TG.config.alreadyReadTextColor != "default"){
  TG.config.alreadyReadTextColor = mp.font_color2;
}

[endscript]

; 名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

; メッセージウィンドウの設定
[position layer="message0" width="1920" height="363" top="718" left="0"]
[position layer="message0" frame="../image/New_GUI/Text_Box_01.png" face="NanumGothicBold" margint="90" marginl="533" marginr="387" marginb="74" opacity="100%" page="fore"]

; 名前枠の設定
[ptext name="chara_name_area" layer="message0" color="&mp.name_color" align="center" size="64" face="NanumGothicRegular" x="202" y="857" width="242" color="white"]
[chara_config ptext="chara_name_area"]

; デフォルトのフォントカラー指定
[font color="black"]
[deffont color="black"]

; クリック待ちグリフの設定（on設定時のみ有効）
[if exp="mp.glyph == 'on'"]
[glyph line="../../../data/others/plugin/theme_kopanda_bth_06_blue/image/system/pagebreak.png"]
[endif]

;===============================================================================

; 機能ボタンを表示するマクロ

;===============================================================================
;機能ボタンを表示したいシーンで[add_theme_button]と記述してください（消去は[clearfix]タグ）
[macro  name="add_theme_button"]

; 歯車ボタン（メニューボタン）非表示
[hidemenubutton]

; Save
[button name="menu_button" role="save" graphic="../image/New_GUI/Menu_UI/Save_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Save_Button_02.png" x="2100" y="520" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

; Load
[button name="menu_button" role="load" graphic="../image/New_GUI/Menu_UI/Load_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Load_Button_02.png" x="2100" y="600" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

; Backlog
[button name="menu_button" role="backlog" graphic="../image/New_GUI/Menu_UI/Log_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Log_Button_02.png" x="2100" y="680" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

; Auto
[button name="rol_button" role="auto" graphic="../image/New_GUI/Menu_UI/Auto_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Auto_Button_02.png" x="2100" y="760" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

; Skip
[button name="rol_button" role="skip" graphic="../image/New_GUI/Menu_UI/Skip_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Skip_Button_02.png" x="2100" y="840" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

; Config（※sleepgame を使用して config.ks を呼び出しています）
[button name="rol_button" role="sleepgame" graphic="../image/New_GUI/Menu_UI/Setting_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Setting_Button_02.png"  x="2100" y="930" storage="../scenario/config.ks" x="2100" y="920" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

; Title
[button name="rol_button" role="title" graphic="../image/New_GUI/Menu_UI/Title_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Title_Button_02.png" x="2100" y="1000" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Common_Branch_Click_01.wav"]

; Menu_Hide
;[button name='rol_button" role="" graphic="../image/New_GUI/Menu_UI/Hide_Button_01.png" x="1743" y="37" ]

; Menu（※ロールボタンを使うなら不要）
;[button name="menu_button" role="menu" graphic="../image/New_GUI/Menu_UI/Title_Button_01.png" enterimg="../image/New_GUI/Menu_UI/Title_Button_02.png" x="1743" y="802"]

; Screen
;[button name="role_button" role="fullscreen" graphic="../others/plugin/theme_kopanda_bth_06_blue/image/button/screen.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/button/screen2.png" x="1860" y="20"]

; Close
;[button name="role_button" role="window" graphic="../others/plugin/theme_kopanda_bth_06_blue/image/button/close.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/button/close2.png" x="1195" y="535"]

; Q.Save
;[button name="role_button" role="quicksave" graphic="" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/button/qsave2.png" x="169" y="1020"]

; Q.Load
;[button name="role_button" role="quickload" graphic="../others/plugin/theme_kopanda_bth_06_blue/image/button/qload.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/button/qload2.png" x="319" y="1020"]


[endmacro]

;===============================================================================

; HTML, CSS

;===============================================================================
; HTML-Save
[sysview type="save" storage="./data/others/plugin/theme_kopanda_bth_06_blue/html/save.html" ]

; HTMLL-Load
[sysview type="load" storage="./data/others/plugin/theme_kopanda_bth_06_blue/html/load.html" ]

; HTML-Backlog
[sysview type="backlog" storage="./data/others/plugin/theme_kopanda_bth_06_blue/html/backlog.html" ]

; HTML-Menu
[sysview type="menu" storage="./data/others/plugin/theme_kopanda_bth_06_blue/html/menu.html" ]

; HTMLL-Confirm
[sysview type="confirm" storage="./data/others/plugin/theme_kopanda_bth_06_blue/html/Confirm.html" ]

; CSS
[loadcss file="./data/others/plugin/theme_kopanda_bth_06_blue/bth06.css"]

[loadjs storage="plugin/theme_kopanda_bth_06_blue/setting.js"]

;===============================================================================

; TestMessagePlugin

;===============================================================================
[loadjs storage="plugin/theme_kopanda_bth_06_blue/testMessagePlus/gMessageTester.js"]
[loadcss file="./data/others/plugin/theme_kopanda_bth_06_blue/testMessagePlus/style.css"]

[macro name="test_message_start"]
[eval exp="gMessageTester.create()"]
[endmacro]

[macro name="test_message_end"]
[eval exp="gMessageTester.destroy()"]
[endmacro]

[macro name="test_message_reset"]
[eval exp="gMessageTester.currentTextNumber=0;gMessageTester.next(true)"]
[endmacro]


[return]
