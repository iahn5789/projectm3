*system
	[mask  time="100"  effect="slideInRight"  color="0xffffff"  ]

	[clearfix]

;	キーコンフィグの無効化
	[stop_keyconfig]

;	レイヤーモードの解放
	[free_layermode time="100" wait="false"]

;	カメラのリセット
	[reset_camera time="100" wait="false"]

;	前景レイヤの中身をすべて空に
	[iscript]
		$(".layer_camera").empty();
		$("#bgmovie").remove();
	[endscript]

;	メニューボタン非表示
	[hidemenubutton]

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	; tf.current_ch_speed = parseInt(TG.config.chSpeed); // テキスト表示速度
	; tf.current_auto_speed = parseInt(TG.config.autoSpeed); // オート時のテキスト表示速度

	; tf.text_skip ="ON"; // 未読スキップ
	; if(TG.config.unReadTextSkip != "true"){
	; 	tf.text_skip ="OFF";
	; }

	tf.fullscreen_mode = "ON"; // 전체화면 모드
	if(TG.config.fullscreen != "true"){
    tf.fullscreen_mode = "OFF";
	}

	tf.window_mode = "ON"; // 창 모드
	if(TG.config.windowMode != "true"){
    tf.window_mode = "OFF";
	}

	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path = '../image/New_GUI/Config_UI/';

	/* 画像類のパス（ボタン） */
	tf.btn_path_off = tf.img_path + 'c_btn.gif';
	tf.btl_path_off = tf.img_path + 'c_btn.gif';
	; tf.btn_path_on_1  = tf.img_path + 'Config_Bt_Yellow_01.png';
	; tf.btn_path_on_2  = tf.img_path + 'Config_Bt_Pink_01.png';

	// ボタン画像の幅と高さ（※未読スキップ、ミュート除く）
	; tf.btn_width  = 54; // 幅
	; tf.btl_width  = 67; // 幅
	; tf.btn_height = 54; // 高さ
	; tf.btl_height  = 67; // 幅
		
	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	; tf.config_x      = [1802, 1081, 1160, 1237, 1315, 1393, 1471, 1549, 1627, 1705, 1783]; // X座標（共通）
	; tf.config_y_ch    = 374; // テキスト速度のY座標
	; tf.config_y_auto  = 527; // オート速度のY座標

	; // ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	; tf.config_x_1       = [1802, 1075, 1153, 1231, 1309, 1387, 1465, 1543, 1621, 1699, 1777]; // X座標（共通）
	; tf.config_y_1_ch    = 368; // テキスト速度のY座標
	; tf.config_y_1_auto  = 521; // オート速度のY座標

	// 上記の配列変数の添字を格納しておく変数。選択した音量や速度に対応。
	; tf.config_num_ch;   // テキスト速度
	; tf.config_num_auto; // オート速度

	// 既読スキップの画像ファイル名を格納しておく変数
	; tf.img_unread_skip;

	// テキスト速度のチェック
	; switch(tf.current_ch_speed){
	; 	case 100: tf.config_num_ch =  0; break;
	; 	case  80: tf.config_num_ch =  1; break;
	; 	case  50: tf.config_num_ch =  2; break;
	; 	case  40: tf.config_num_ch =  3; break;
	; 	case  30: tf.config_num_ch =  4; break;
	; 	case  25: tf.config_num_ch =  5; break;
	; 	case  20: tf.config_num_ch =  6; break;
	; 	case  11: tf.config_num_ch =  7; break;
	; 	case   8: tf.config_num_ch =  8; break;
	; 	case   5: tf.config_num_ch =  9; break;

	; 	default: break;
	; };

	; // オート時のテキスト速度のチェック
	; switch(tf.current_auto_speed){
	; 	case 5000: tf.config_num_auto =  0; break;
	; 	case 4500: tf.config_num_auto =  1; break;
	; 	case 4000: tf.config_num_auto =  2; break;
	; 	case 3500: tf.config_num_auto =  3; break;
	; 	case 3000: tf.config_num_auto =  4; break;
	; 	case 2500: tf.config_num_auto =  5; break;
	; 	case 2000: tf.config_num_auto =  6; break;
	; 	case 1300: tf.config_num_auto =  7; break;
	; 	case  800: tf.config_num_auto =  8; break;
	; 	case  500: tf.config_num_auto =  9; break;

	; 	default: break;
	; };

	// ミュート用のBGM、SE音量管理
	; if( typeof f.prev_vol_list === 'undefined'){
	; 	f.prev_vol_list = [tf.current_bgm_vol, tf.config_num_bgm, tf.current_se_vol, tf.config_num_se];
	; }

	[endscript]

[cm]

	[bg class="bg-image" storage="&tf.img_path +'Config_Bgi_System_01.png'" time="1" ]

;	戻るボタン
	[button fix="true" graphic="&tf.img_path + 'UI_Close_Bt_01.png'" enterimg="&tf.img_path + 'UI_Close_Bt_02.png'" target="*backtitle3" x="33" y="965"]

[jump target="*config_page3"]

*config_page3
[clearstack]
   [button name="sound" storage="config.ks" target="*sound" graphic="../image/New_GUI/Config_UI/Config_Audio_01.png" enterimg="../image/New_GUI/Config_UI/Config_Audio_03.png" width="418" height="88" x="104" y="353"]
   [button name="text" storage="config2.ks" target="*text" graphic="../image/New_GUI/Config_UI/Config_Text_01.png" enterimg="../image/New_GUI/Config_UI/Config_Text_03.png" width="418" height="88" x="104" y="507"]
   [button name="system" storage="config3.ks" target="*system" graphic="../image/New_GUI/Config_UI/Config_System_02.png" enterimg="../image/New_GUI/Config_UI/Config_System_03.png" width="418" height="88" x="104" y="662"]
   
	[button name="unread_on"  fix="true" target="*skip_on3"  graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Skip_On_02.png'" width="259" height="60" x="1208" y="504"]
	[button name="unread_off" fix="true" target="*skip_off3" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Skip_Off_02.png'" width="259" height="60" x="1530" y="504"]
	; 전체화면
	[button name="fullscreen"  fix="true" target="*fullscreen"  graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Fullscreen_02.png'" width="259" height="60" x="1208" y="357"]
	; 창화면
	[button name="winscreen" fix="true" target="*winscreen" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Winscreen_02.png'" width="259" height="60" x="1530" y="357"]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------
	[mask_off  time="100"  effect="slideOutLeft"  ]

	[call target="*load_skip_img3"]
	[call target="*screen_mode"]
[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backtitle3
[cm]

;	テキスト速度のサンプル表示に使用していたメッセージレイヤを非表示に
	[layopt layer="message1" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの有効化
	[start_keyconfig]

;	コールスタックのクリア
	[clearstack]

;	ゲーム復帰
	[awakegame]

;================================================================================

; ボタンクリック時の処理

;-------------------------------------------------------------------------------
*skip_on3
[free layer="0" name="unread_off" time="1"]
[image layer="0" name="unread_on" storage="../image/New_GUI/Config_UI/skip_on_03.png" x="1208" y="504"]
[config_record_label skip="true"]

[return]

;-------------------------------------------------------------------------------
; スキップ処理-OFF
;-------------------------------------------------------------------------------
*skip_off3
[free layer="0" name="unread_on" time="1"]
[image layer="0" name="unread_off" storage="../image/New_GUI/Config_UI/skip_off_03.png" x="1530" y="504"]
[config_record_label skip="false"]

[return]

; 전체화면
*fullscreen
[if exp="tf.fullscreen_mode == 'OFF'"]
	[free layer="0" name="winscreen" time="1"]
	[image layer="0" name="fullscreen" storage="../image/New_GUI/Config_UI/Fullscreen_03.png" x="1208" y="357"]
	[config_record_label skip="true"]
	[screen_full ]
	[iscript]
	tf.fullscreen_mode = "ON"
	[endscript]
	
[endif]

[return]
; 창화면
*winscreen
[if exp="tf.fullscreen_mode == 'ON'"]
	[free layer="0" name="fullscreen" time="1"]
	[image layer="0" name="winscreen" storage="../image/New_GUI/Config_UI/Winscreen_03.png" x="1530" y="357"]
	[config_record_label skip="true"]
	[screen_full ]
	[iscript]
	tf.fullscreen_mode = "OFF"
	[endscript]
	
[endif]
[return]

*load_skip_img3
[if exp="tf.text_skip == 'ON'"]
	[image layer="0" name="unread_on" storage="../image/New_GUI/Config_UI/Skip_On_03.png" x="1208" y="504"]
[else]
	[image layer="0" name="unread_off" storage="../image/New_GUI/Config_UI/Skip_Off_03.png" x="1530" y="504"]
[endif]

[return]

*screen_mode
[if exp="tf.fullscreen_mode == 'ON'"]
	[image layer="0" name="fullscreen" storage="../image/New_GUI/Config_UI/Fullscreen_03.png" x="1208" y="357"]
[else]
	[image layer="0" name="winscreen" storage="../image/New_GUI/Config_UI/Winscreen_03.png" x="1530" y="357"]
[endif]


[return]

[s]