;	メッセージレイヤ0を不可視に
[mask  time="200"  effect="slideInRight"  color="0x000000"  ]

*sound
	[mask  time="100"  effect="slideInRight"  color="0xffffff"  ]

	[layopt layer="message0" visible="false"]

;	fixボタンをクリア
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

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume); // BGM音量
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume); // SE音量


	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path = '../image/New_GUI/Config_UI/';

	/* 画像類のパス（ボタン） */
	tf.btn_path_off = tf.img_path + 'c_btn.gif';
	tf.btl_path_off = tf.img_path + 'c_btn.gif';
	tf.btn_path_on_1  = tf.img_path + 'Config_Bt_Yellow_01.png';
	tf.btn_path_on_2  = tf.img_path + 'Config_Bt_Pink_01.png';
	tf.btn_path_on_3  = tf.img_path + 'Config_Bt_Blue_01.png';

	// ボタン画像の幅と高さ（※未読スキップ、ミュート除く）
	tf.btn_width  = 54; // 幅
	tf.btl_width  = 67; // 幅
	tf.btn_height = 54; // 高さ
	tf.btl_height  = 67; // 幅
		
	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	tf.config_x      = [1802, 1081, 1160, 1237, 1315, 1393, 1471, 1549, 1627, 1705, 1783]; // X座標（共通）
	tf.config_y_bgm   = 374; // BGMのY座標
	tf.config_y_se    = 527; // SEのY座標
	; tf.config_y_vox    = 527; // 성우음성

	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	tf.config_x_1       = [1802, 1075, 1153, 1231, 1309, 1387, 1465, 1543, 1621, 1699, 1777]; // X座標（共通）
	tf.config_y_1_bgm   = 368; // BGMのY座標
	tf.config_y_1_se    = 521; // SEのY座標

	// 上記の配列変数の添字を格納しておく変数。選択した音量や速度に対応。
	tf.config_num_bgm;  // BGM
	tf.config_num_se;   // SE

	// BGMの音量チェック
	switch(tf.current_bgm_vol){
		case   0: tf.config_num_bgm =  0; break;
		case  10: tf.config_num_bgm =  1; break;
		case  20: tf.config_num_bgm =  2; break;
		case  30: tf.config_num_bgm =  3; break;
		case  40: tf.config_num_bgm =  4; break;
		case  50: tf.config_num_bgm =  5; break;
		case  60: tf.config_num_bgm =  6; break;
		case  70: tf.config_num_bgm =  7; break;
		case  80: tf.config_num_bgm =  8; break;
		case  90: tf.config_num_bgm =  9; break;
		case 100: tf.config_num_bgm = 10; break;

		default: break;
	};


	// SEの音量チェック
	switch(tf.current_se_vol){
		case   0: tf.config_num_se =  0; break;
		case  10: tf.config_num_se =  1; break;
		case  20: tf.config_num_se =  2; break;
		case  30: tf.config_num_se =  3; break;
		case  40: tf.config_num_se =  4; break;
		case  50: tf.config_num_se =  5; break;
		case  60: tf.config_num_se =  6; break;
		case  70: tf.config_num_se =  7; break;
		case  80: tf.config_num_se =  8; break;
		case  90: tf.config_num_se =  9; break;
		case 100: tf.config_num_se = 10; break;

		default: break;
	};
	// ミュート用のBGM、SE音量管理
	if( typeof f.prev_vol_list === 'undefined'){
		f.prev_vol_list = [tf.current_bgm_vol, tf.config_num_bgm, tf.current_se_vol, tf.config_num_se];
	}
	[endscript]
[cm]
;------------------------------------------------------------------------------------------------------
;	コンフィグ用の背景を読み込んでトランジション
	[bg class="bg-image" storage="&tf.img_path +'Config_Bgi_01.png'" time="1" ]

;	戻るボタン
	[button fix="true" graphic="&tf.img_path + 'UI_Close_Bt_01.png'" enterimg="&tf.img_path + 'UI_Close_Bt_02.png'" target="*backtitle" x="33" y="965" clickse="UI/Config_Back_01.wav"]

[jump target="*config_page"]

*config_page
[clearstack]
;------------------------------------------------------------------------------------------------------
; BGM音量
;------------------------------------------------------------------------------------------------------
	[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[1]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  10; tf.config_num_bgm =  1" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[2]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  20; tf.config_num_bgm =  2" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[3]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  30; tf.config_num_bgm =  3" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[4]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  40; tf.config_num_bgm =  4" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[5]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  50; tf.config_num_bgm =  5" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[6]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  60; tf.config_num_bgm =  6" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[7]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  70; tf.config_num_bgm =  7" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[8]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  80; tf.config_num_bgm =  8" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[9]"  y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol =  90; tf.config_num_bgm =  9" clickse="UI/Config_Sellect_Click_01.wav"]
	[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[10]" y="&tf.config_y_1_bgm" exp="tf.current_bgm_vol = 100; tf.config_num_bgm = 10" clickse="UI/Config_Sellect_Click_01.wav"]

;	BGMミュート
	[button name="bgmvol,bgmvol_0"   fix="true" target="*vol_bgm_mute" graphic="&tf.btl_path_off" width="24" height="25" x="1802" y="338" clickse="UI/Config_Sellect_Click_01.wav"]

;------------------------------------------------------------------------------------------------------
; SE音量
;------------------------------------------------------------------------------------------------------
	[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[1]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  10; tf.config_num_se =  1" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[2]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  20; tf.config_num_se =  2" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[3]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  30; tf.config_num_se =  3" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[4]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  40; tf.config_num_se =  4" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[5]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  50; tf.config_num_se =  5" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[6]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  60; tf.config_num_se =  6" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[7]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  70; tf.config_num_se =  7" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[8]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  80; tf.config_num_se =  8" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[9]"  y="&tf.config_y_1_se" exp="tf.current_se_vol =  90; tf.config_num_se =  9" clickse="UI/Common_Click_01.wav"]
	[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" enterimg="&tf.img_path + 'Config_Bt_Hover_01.png'" width="&tf.btl_width" height="&tf.btl_height" x="&tf.config_x_1[10]" y="&tf.config_y_1_se" exp="tf.current_se_vol = 100; tf.config_num_se = 10" clickse="UI/Common_Click_01.wav"]

;	SEミュート
	[button name="sevol,sevol_0"   fix="true" target="*vol_se_mute" graphic="&tf.btl_path_off" width="24" height="25" x="1802" y="492" clickse="UI/Config_Sellect_Click_01.wav"]

;------------------------------------------------------------------------------------------------------
; 테스트용 버튼 이미지 테스트 민아럼ㄴㅇ러
;------------------------------------------------------------------------------------------------------
   [button name="sound" storage="config.ks" target="*sound" graphic="../image/New_GUI/Config_UI/Config_Audio_02.png" enterimg="../image/New_GUI/Config_UI/Config_Audio_03.png" width="418" height="88" x="104" y="353" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
   [button name="text" storage="config2.ks" target="*text" graphic="../image/New_GUI/Config_UI/Config_Text_01.png" enterimg="../image/New_GUI/Config_UI/Config_Text_03.png" width="418" height="88" x="104" y="507" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
   [button name="system" storage="config3.ks" target="*system" graphic="../image/New_GUI/Config_UI/Config_System_01.png" enterimg="../image/New_GUI/Config_UI/Config_System_03.png" width="418" height="88" x="104" y="662" enterse="UI/Common_Branch_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
   
[mask_off  time="100"  effect="slideOutLeft"  ]
;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------

	[call target="*load_img"]
	[call target="*icon_bgm"]
	[call target="*icon_se"]
;	[call target="*load_skip_img"]

	; [test_message_start]

[s]
;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backtitle
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
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_mute

[iscript]
	// ミュート
	if( tf.current_bgm_vol != 0 ){
		f.prev_vol_list[0] = tf.current_bgm_vol;
		f.prev_vol_list[1] = tf.config_num_bgm;
		tf.current_bgm_vol = 0;
		tf.config_num_bgm  = 0;

	// 解除
	} else {
		tf.current_bgm_vol = f.prev_vol_list[0];
		tf.config_num_bgm  = f.prev_vol_list[1];
	}
[endscript]
*vol_bgm_change
	[free layer="0" name="bgmvol" time="0" wait="true"]
	[call target="*icon_bgm"]
	[bgmopt volume="&tf.current_bgm_vol"]
[return]
;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_mute
[iscript]
	// ミュート
	if( tf.current_se_vol != 0 ){
		f.prev_vol_list[2] = tf.current_se_vol;
		f.prev_vol_list[3] = tf.config_num_se;
		tf.current_se_vol = 0;
		tf.config_num_se  = 0;

	// 解除
	} else {
		tf.current_se_vol = f.prev_vol_list[2];
		tf.config_num_se  = f.prev_vol_list[3];
	}
[endscript]

*vol_se_change

	[free layer="0" name="sevol" time="0" wait="true"]
	[call target="*icon_se"]
	[seopt volume="&tf.current_se_vol"]

[return]

*icon_bgm
	[iscript]
	// 設定した音量によって色付き画像の表示・非表示を切替える
	$( ".bgm_img_0").css( "visibility", tf.config_num_bgm == 0 ? 'visible' : 'hidden' );
	$( ".bgm_img_1").css( "visibility", tf.config_num_bgm >  0 ? 'visible' : 'hidden' );
	$( ".bgm_img_2").css( "visibility", tf.config_num_bgm >  1 ? 'visible' : 'hidden' );
	$( ".bgm_img_3").css( "visibility", tf.config_num_bgm >  2 ? 'visible' : 'hidden' );
	$( ".bgm_img_4").css( "visibility", tf.config_num_bgm >  3 ? 'visible' : 'hidden' );
	$( ".bgm_img_5").css( "visibility", tf.config_num_bgm >  4 ? 'visible' : 'hidden' );
	$( ".bgm_img_6").css( "visibility", tf.config_num_bgm >  5 ? 'visible' : 'hidden' );
	$( ".bgm_img_7").css( "visibility", tf.config_num_bgm >  6 ? 'visible' : 'hidden' );
	$( ".bgm_img_8").css( "visibility", tf.config_num_bgm >  7 ? 'visible' : 'hidden' );
	$( ".bgm_img_9").css( "visibility", tf.config_num_bgm >  8 ? 'visible' : 'hidden' );
	$(".bgm_img_10").css( "visibility", tf.config_num_bgm >  9 ? 'visible' : 'hidden' );
	[endscript]
[return]
;--------------------------------------------------------------------------------
; SE更新
;--------------------------------------------------------------------------------
*icon_se
	[iscript]
	$(".se_img_0").css( "visibility", tf.config_num_se == 0 ? 'visible' : 'hidden');
	$(".se_img_1").css( "visibility", tf.config_num_se >  0 ? 'visible' : 'hidden');
	$(".se_img_2").css( "visibility", tf.config_num_se >  1 ? 'visible' : 'hidden');
	$(".se_img_3").css( "visibility", tf.config_num_se >  2 ? 'visible' : 'hidden');
	$(".se_img_4").css( "visibility", tf.config_num_se >  3 ? 'visible' : 'hidden');
	$(".se_img_5").css( "visibility", tf.config_num_se >  4 ? 'visible' : 'hidden');
	$(".se_img_6").css( "visibility", tf.config_num_se >  5 ? 'visible' : 'hidden');
	$(".se_img_7").css( "visibility", tf.config_num_se >  6 ? 'visible' : 'hidden');
	$(".se_img_8").css( "visibility", tf.config_num_se >  7 ? 'visible' : 'hidden');
	$(".se_img_9").css( "visibility", tf.config_num_se >  8 ? 'visible' : 'hidden');
	$(".se_img_10").css("visibility", tf.config_num_se >  9 ? 'visible' : 'hidden');
	[endscript]
[return]
;================================================================================
; 画像の読み込み（コンフィグ画面の起動時のみコール）
;================================================================================
*load_img
	[layopt layer="0" visible="true"]
;	BGM
	[image layer="0" name="bgm_img_0"  storage="&tf.img_path + 'Config_Mute_02.png'"  x="1802"  y="338" ]
	[image layer="0" name="bgm_img_1"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[1]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_2"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[2]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_3"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[3]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_4"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[4]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_5"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[5]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_6"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[6]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_7"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[7]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_8"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[8]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_9"  storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[9]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_10" storage="&tf.img_path + 'Config_Bt_Yellow_01.png'"  x="&tf.config_x[10]" y="&tf.config_y_bgm"]

;	SE
	[image layer="0" name="se_img_0"  storage="&tf.img_path + 'Config_Mute_02.png'" x="1802"  y="492"]
	[image layer="0" name="se_img_1"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[1]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_2"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[2]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_3"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[3]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_4"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[4]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_5"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[5]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_6"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[6]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_7"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[7]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_8"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[8]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_9"  storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[9]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_10" storage="&tf.img_path + 'Config_Bt_Pink_01.png'" x="&tf.config_x[10]" y="&tf.config_y_se"]

[return]

[s]
