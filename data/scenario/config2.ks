*text
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

	tf.current_ch_speed = parseInt(TG.config.chSpeed); // テキスト表示速度
	tf.current_auto_speed = parseInt(TG.config.autoSpeed); // オート時のテキスト表示速度

	tf.text_skip ="ON"; // 未読スキップ
	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path = '../image/New_GUI/Config_UI/';

	/* 画像類のパス（ボタン） */
	tf.btn_path_off = tf.img_path + 'c_btn.gif';
	tf.btl_path_off = tf.img_path + 'c_btn.gif';
	tf.btn_path_on_1  = tf.img_path + 'Config_Bt_Yellow_01.png';
	tf.btn_path_on_2  = tf.img_path + 'Config_Bt_Pink_01.png';

	// ボタン画像の幅と高さ（※未読スキップ、ミュート除く）
	tf.btn_width  = 54; // 幅
	tf.btl_width  = 67; // 幅
	tf.btn_height = 54; // 高さ
	tf.btl_height  = 67; // 幅
		
	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	tf.config_x      = [1802, 1081, 1160, 1237, 1315, 1393, 1471, 1549, 1627, 1705, 1783]; // X座標（共通）
	tf.config_y_ch    = 374; // テキスト速度のY座標
	tf.config_y_auto  = 527; // オート速度のY座標

	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	tf.config_x_1       = [1802, 1075, 1154, 1231, 1309, 1387, 1465, 1543, 1621, 1699, 1777]; // X座標（共通）
	tf.config_y_1_ch    = 368; // テキスト速度のY座標
	tf.config_y_1_auto  = 522; // オート速度のY座標

	// 上記の配列変数の添字を格納しておく変数。選択した音量や速度に対応。
	tf.config_num_ch;   // テキスト速度
	tf.config_num_auto; // オート速度

	// 既読スキップの画像ファイル名を格納しておく変数
;	tf.img_unread_skip;

	// テキスト速度のチェック
	switch(tf.current_ch_speed){
		case 100: tf.config_num_ch =  0; break;
		case  80: tf.config_num_ch =  1; break;
		case  50: tf.config_num_ch =  2; break;
		case  40: tf.config_num_ch =  3; break;
		case  30: tf.config_num_ch =  4; break;
		case  25: tf.config_num_ch =  5; break;
		case  20: tf.config_num_ch =  6; break;
		case  11: tf.config_num_ch =  7; break;
		case   8: tf.config_num_ch =  8; break;
		case   5: tf.config_num_ch =  9; break;

		default: break;
	};


	// オート時のテキスト速度のチェック
	switch(tf.current_auto_speed){
		case 5000: tf.config_num_auto =  0; break;
		case 4500: tf.config_num_auto =  1; break;
		case 4000: tf.config_num_auto =  2; break;
		case 3500: tf.config_num_auto =  3; break;
		case 3000: tf.config_num_auto =  4; break;
		case 2500: tf.config_num_auto =  5; break;
		case 2000: tf.config_num_auto =  6; break;
		case 1300: tf.config_num_auto =  7; break;
		case  800: tf.config_num_auto =  8; break;
		case  500: tf.config_num_auto =  9; break;

		default: break;
	};

	// ミュート用のBGM、SE音量管理
	if( typeof f.prev_vol_list === 'undefined'){
		f.prev_vol_list = [tf.current_bgm_vol, tf.config_num_bgm, tf.current_se_vol, tf.config_num_se];
	}

	[endscript]

[cm]

	[bg class="bg-image" storage="&tf.img_path +'Config_Bgi_Text_01.png'" time="1" ]

;	戻るボタン
	[button fix="true" graphic="&tf.img_path + 'UI_Close_Bt_01.png'" enterimg="&tf.img_path + 'UI_Close_Bt_02.png'" target="*backtitle2" x="50" y="1000" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Back_01.wav"]

[jump target="*config_page2"]

*config_page2
[clearstack]
;------------------------------------------------------------------------------------------------------
; テキスト速度
;------------------------------------------------------------------------------------------------------
	[button name="ch,ch_100" fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[1]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed =100; tf.config_num_ch = 0" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_80"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[2]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 80; tf.config_num_ch = 1" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_50"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[3]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 50; tf.config_num_ch = 2" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_40"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[4]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 40; tf.config_num_ch = 3" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_30"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[5]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 30; tf.config_num_ch = 4" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_25"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[6]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 25; tf.config_num_ch = 5" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_20"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[7]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 20; tf.config_num_ch = 6" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_11"  fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[8]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed = 11; tf.config_num_ch = 7" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_8"   fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[9]"  y="&tf.config_y_1_ch" exp="tf.set_ch_speed =  8; tf.config_num_ch = 8" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="ch,ch_5"   fix="true" target="*ch_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[10]" y="&tf.config_y_1_ch" exp="tf.set_ch_speed =  5; tf.config_num_ch = 9" clickse="UI/Config_Sellect_Click_01.wav"]

;------------------------------------------------------------------------------------------------------
; オート速度
;------------------------------------------------------------------------------------------------------
	[button name="auto,auto_5000" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[1]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 5000; tf.config_num_auto = 0" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_4500" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[2]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 4500; tf.config_num_auto = 1" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_4000" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[3]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 4000; tf.config_num_auto = 2" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_3500" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[4]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 3500; tf.config_num_auto = 3" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_3000" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[5]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 3000; tf.config_num_auto = 4" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_2500" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[6]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 2500; tf.config_num_auto = 5" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_2000" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[7]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 2000; tf.config_num_auto = 6" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_1300" fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[8]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed = 1300; tf.config_num_auto = 7" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_800"  fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[9]"  y="&tf.config_y_1_auto" exp="tf.set_auto_speed =  800; tf.config_num_auto = 8" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="auto,auto_500"  fix="true" target="*auto_speed_change2" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[10]" y="&tf.config_y_1_auto" exp="tf.set_auto_speed =  500; tf.config_num_auto = 9" clickse="UI/Config_Sellect_Click_01.wav"]
;-----------------------------------------------------------------------------------------------------
-
; 테스트용 버튼 이미지 테스트 민아럼ㄴㅇ러
;------------------------------------------------------------------------------------------------------
   [button name="sound" storage="config.ks" target="*sound" graphic="../image/New_GUI/Config_UI/Config_Audio_01.png" enterimg="../image/New_GUI/Config_UI/Config_Audio_03.png" width="418" height="88" x="104" y="353" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
   [button name="text" storage="config2.ks" target="*text" graphic="../image/New_GUI/Config_UI/Config_Text_02.png" enterimg="../image/New_GUI/Config_UI/Config_Text_03.png" width="418" height="88" x="104" y="507" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
   [button name="system" storage="config3.ks" target="*system" graphic="../image/New_GUI/Config_UI/Config_System_01.png" enterimg="../image/New_GUI/Config_UI/Config_System_03.png" width="418" height="88" x="104" y="662" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
   
;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------
	[mask_off  time="100"  effect="slideOutLeft"  ]

	[call target="*load_img2"]
	[call target="*icon_ch2"]
	[call target="*icon_auto2"]
;	[call target="*load_skip_img"]

	[test_message_start]

[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backtitle2
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

;================================================================================
;--------------------------------------------------------------------------------


;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------
*ch_speed_change2

	[iscript]
	tf.current_ch_speed = tf.set_ch_speed;
	[endscript]

	[free layer="0" name="ch" time="0" wait="true"]
	[call target="*icon_ch2"]
	[configdelay speed="&tf.set_ch_speed"]

	[test_message_reset]

[return]

;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*auto_speed_change2

	[iscript]
	tf.current_auto_speed = tf.set_auto_speed;
	[endscript]

	[free layer="0" name="auto" time="0" wait="true"]
	[call target="*icon_auto2"]
	[autoconfig speed="&tf.set_auto_speed"]

[return]

*icon_ch2

	[iscript]

	$(".ch_img_1").css( "visibility", tf.config_num_ch >= 0 ? 'visible' : 'hidden');
	$(".ch_img_2").css( "visibility", tf.config_num_ch >  0 ? 'visible' : 'hidden');
	$(".ch_img_3").css( "visibility", tf.config_num_ch >  1 ? 'visible' : 'hidden');
	$(".ch_img_4").css( "visibility", tf.config_num_ch >  2 ? 'visible' : 'hidden');
	$(".ch_img_5").css( "visibility", tf.config_num_ch >  3 ? 'visible' : 'hidden');
	$(".ch_img_6").css( "visibility", tf.config_num_ch >  4 ? 'visible' : 'hidden');
	$(".ch_img_7").css( "visibility", tf.config_num_ch >  5 ? 'visible' : 'hidden');
	$(".ch_img_8").css( "visibility", tf.config_num_ch >  6 ? 'visible' : 'hidden');
	$(".ch_img_9").css( "visibility", tf.config_num_ch >  7 ? 'visible' : 'hidden');
	$(".ch_img_10").css("visibility", tf.config_num_ch >  8 ? 'visible' : 'hidden');

	[endscript]

[return]

;--------------------------------------------------------------------------------

; オート速度更新

;--------------------------------------------------------------------------------
*icon_auto2

	[iscript]

	$(".auto_img_1").css( "visibility", tf.config_num_auto >= 0 ? 'visible' : 'hidden');
	$(".auto_img_2").css( "visibility", tf.config_num_auto >  0 ? 'visible' : 'hidden');
	$(".auto_img_3").css( "visibility", tf.config_num_auto >  1 ? 'visible' : 'hidden');
	$(".auto_img_4").css( "visibility", tf.config_num_auto >  2 ? 'visible' : 'hidden');
	$(".auto_img_5").css( "visibility", tf.config_num_auto >  3 ? 'visible' : 'hidden');
	$(".auto_img_6").css( "visibility", tf.config_num_auto >  4 ? 'visible' : 'hidden');
	$(".auto_img_7").css( "visibility", tf.config_num_auto >  5 ? 'visible' : 'hidden');
	$(".auto_img_8").css( "visibility", tf.config_num_auto >  6 ? 'visible' : 'hidden');
	$(".auto_img_9").css( "visibility", tf.config_num_auto >  7 ? 'visible' : 'hidden');
	$(".auto_img_10").css("visibility", tf.config_num_auto >  8 ? 'visible' : 'hidden');

	[endscript]

[return]
;================================================================================

; 画像の読み込み（コンフィグ画面の起動時のみコール）

;================================================================================
*load_img2

	[layopt layer="0" visible="true"]

;	テキスト速度
	[image layer="0" name="ch_img_1"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[1]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_2"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[2]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_3"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[3]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_4"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[4]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_5"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[5]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_6"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[6]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_7"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[7]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_8"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[8]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_9"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[9]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_10" storage="&tf.img_path + 'Config_Bt_Yellow_01.png'" x="&tf.config_x[10]" y="&tf.config_y_ch"]

;	オート速度
	[image layer="0" name="auto_img_1"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[1]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_2"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[2]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_3"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[3]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_4"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[4]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_5"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[5]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_6"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[6]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_7"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[7]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_8"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[8]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_9"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[9]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_10" storage="&tf.img_path + 'Config_Bt_Pink_01.png'"  x="&tf.config_x[10]" y="&tf.config_y_auto"]

[return]
[s]