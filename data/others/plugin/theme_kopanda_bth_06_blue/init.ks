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
[position layer="message0" width="1920" height="372" top="750" left="0"]
[position layer="message0" frame="../image/New_GUI/Text_Box_01.png" margint="99" marginl="478" marginr="270" marginb="75" opacity="200" page="fore"]

; 名前枠の設定
[ptext name="chara_name_area" layer="message0" color="&mp.name_color" size="52" bold="bold" x="232" y="860" width="300" color="green" ]
[chara_config ptext="chara_name_area"]

; デフォルトのフォントカラー指定
[font color="white"]
[deffont color="white"]

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
[button name="menu_button" role="save" graphic="../image/New_GUI/Save_Button_01.png" enterimg="../image/New_GUI/Save_Button_02.png" x="1791" y="820" ]

; Load
[button name="menu_button" role="load" graphic="../image/New_GUI/Load_Button_01.png" enterimg="../image/New_GUI/Load_Button_02.png" x="1791" y="858" ]

; Backlog
[button name="menu_button" role="backlog" graphic="../image/New_GUI/Log_Button_01.png" enterimg="../image/New_GUI/Log_Button_02.png" x="1791" y="896"]

; Auto
[button name="rol_button" role="auto" graphic="../image/New_GUI/Auto_Button_01.png" enterimg="../image/New_GUI/Auto_Button_02.png" x="1791" y="934"]

; Skip
[button name="rol_button" role="skip" graphic="../image/New_GUI/Skip_Button_01.png" enterimg="../image/New_GUI/Skip_Button_02.png" x="1791" y="972"]

; Config（※sleepgame を使用して config.ks を呼び出しています）
[button name="rol_button" role="sleepgame" graphic="../image/New_GUI/Setting_Button_01.png" enterimg="../image/New_GUI/Setting_Button_02.png"  x="1791" y="1010" storage="../others/plugin/theme_kopanda_bth_06_blue/config.ks" x="1791" y="1010"]

; Menu（※ロールボタンを使うなら不要）
;[button name="menu_button" role="menu" graphic="../image/New_GUI/Setting_Button_01.png" enterimg="../image/New_GUI/Setting_Button_02.png"  x="1791" y="1010" ]

; Screen
[button name="role_button" role="fullscreen" graphic="../others/plugin/theme_kopanda_bth_06_blue/image/button/screen.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/button/screen2.png" x="1860" y="20"]

; Title
;[button name="role_button" role="title" graphic="../others/plugin/theme_kopanda_bth_06_blue/image/button/title.png" enterimg="../others/plugin/theme_kopanda_bth_06_blue/image/button/title2.png" x="1669" y="1020"]

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
