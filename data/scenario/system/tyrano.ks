
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		mp.graphic = mp.graphic.split(',');
		mp.tmp_graphic = mp.graphic.concat();
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
		
        if(typeof mp.thumb !="undefined"){
            mp.tmp_graphic[0] = mp.thumb;
        }
	
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="replay.ks" target="*no_image" folder="bgimage" ]
	[endif]
	
[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
    
    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]
        
        @layopt page="fore" layer="message0" visible=false
        ;システムボタンを非表示にするなど
        [hidemenubutton]
        
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]

;텍스트 사운드 매크로(시작)
[macro name="t1"]

	[playse storage=UI/Common_Text_Type_01.wav loop="true" buf="5" volume="100"]

[endmacro]

;텍스트 사운드 매크로(종료)
[macro name="t2"]

	[stopse  time="50"  buf="5"  fadeout="true"  ]

[endmacro]

[return]

;강여진 캐릭터 일러스트 코드
[macro name="kang_ill"]

	[chara_new name="Kang" storage="chara/Kang_Sc/bin.png" zindex=1 jname="Kang" width="813" height="1903" ]

	[chara_layer name="Kang" part="body" id="1" storage="chara/Kang_SC/Kang_Body_Sc_01.png" zindex=20 ]
	[chara_layer name="Kang" part="body" id="2" storage="chara/Kang_SC/Kang_Body_Sc_02.png" zindex=20 ]
	[chara_layer name="Kang" part="body" id="3" storage="chara/Kang_SC/Kang_Body_Sc_03.png" zindex=20 ]
	[chara_layer name="Kang" part="body" id="4" storage="chara/Kang_SC/Kang_Body_Sc_04.png" zindex=20 ]
	[chara_layer name="Kang" part="body" id="5" storage="chara/Kang_SC/Kang_Body_Sc_05.png" zindex=20 ]
	[chara_layer name="Kang" part="body" id="6" storage="chara/Kang_SC/Kang_Body_Sc_06.png" zindex=20 ]
	[chara_layer name="Kang" part="body" id="7" storage="chara/Kang_SC/Kang_Body_Sc_07.png" zindex=20 ]

	[chara_layer name="Kang" part="face" id="1" storage="chara/Kang_SC/Kang_Face_Base_Sc_01.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="2" storage="chara/Kang_SC/Kang_Face_Smile_Sc_01.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="3" storage="chara/Kang_SC/Kang_Face_Shy_Sc_01.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="4" storage="chara/Kang_SC/Kang_Face_Angry_Sc_01.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="5" storage="chara/Kang_SC/Kang_Face_Angry_Sc_02.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="6" storage="chara/Kang_SC/Kang_Face_Surprise_Sc_01.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="7" storage="chara/Kang_SC/Kang_Face_Worry_Sc_01.png" zindex=21 ]
	[chara_layer name="Kang" part="face" id="8" storage="chara/Kang_SC/Kang_Face_Embarrass_Sc_01.png" zindex=21 ]

[endmacro]

;진다영 캐릭터 일러스트 코드
[macro name="jin_ill"]

	[chara_new name="Jin" storage="chara/Jin_Sc/bin.png" zindex=1 jname="Jin" width="813" height="1903" ]

	[chara_layer name="Jin" part="body" id="1" storage="chara/Jin_SC/Jin_Body_Sc_01.png" zindex=20 ]
	[chara_layer name="Jin" part="body" id="2" storage="chara/Jin_SC/Jin_Body_Sc_02.png" zindex=20 ]
	[chara_layer name="Jin" part="body" id="3" storage="chara/Jin_SC/Jin_Body_Sc_03.png" zindex=20 ]
	[chara_layer name="Jin" part="body" id="4" storage="chara/Jin_SC/Jin_Body_Sc_04.png" zindex=20 ]
	[chara_layer name="Jin" part="body" id="5" storage="chara/Jin_SC/Jin_Body_Sc_05.png" zindex=20 ]
	[chara_layer name="Jin" part="body" id="6" storage="chara/Jin_SC/Jin_Body_Sc_06.png" zindex=20 ]
	[chara_layer name="Jin" part="body" id="7" storage="chara/Jin_SC/Jin_Body_Sc_07.png" zindex=20 ]

	[chara_layer name="Jin" part="face" id="1" storage="chara/Jin_SC/Jin_Face_Base_Sc_01.png" zindex=21 ]
	[chara_layer name="Jin" part="face" id="2" storage="chara/Jin_SC/Jin_Face_Smile_Sc_01.png" zindex=21 ]
	[chara_layer name="Jin" part="face" id="3" storage="chara/Jin_SC/Jin_Face_Shy_Sc_01.png" zindex=21 ]
	[chara_layer name="Jin" part="face" id="4" storage="chara/Jin_SC/Jin_Face_Angry_Sc_01.png" zindex=21 ]
	[chara_layer name="Jin" part="face" id="6" storage="chara/Jin_SC/Jin_Face_Surprise_Sc_01.png" zindex=21 ]
	[chara_layer name="Jin" part="face" id="8" storage="chara/Jin_SC/Jin_Face_Embarrass_Sc_01.png" zindex=21 ]

[endmacro]

;설나희 캐릭터 일러스트 코드
[macro name="sul_ill"]

	[chara_new name="Sul" storage="chara/Sul_Sc/bin.png" zindex=1 jname="Sul" width="813" height="1903" ]

	[chara_layer name="Sul" part="body" id="1" storage="chara/Sul_SC/Sul_Body_Sc_01.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="2" storage="chara/Sul_SC/Sul_Body_Sc_02.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="3" storage="chara/Sul_SC/Sul_Body_Sc_03.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="4" storage="chara/Sul_SC/Sul_Body_Sc_04.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="5" storage="chara/Sul_SC/Sul_Body_Sc_05.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="6" storage="chara/Sul_SC/Sul_Body_Sc_06.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="7" storage="chara/Sul_SC/Sul_Body_Sc_07.png" zindex=20 ]
	[chara_layer name="Sul" part="body" id="8" storage="chara/Sul_SC/Sul_Body_Sc_08.png" zindex=20 ]

	[chara_layer name="Sul" part="face" id="1" storage="chara/Sul_SC/Sul_Face_Base_Sc_01.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="2" storage="chara/Sul_SC/Sul_Face_Smile_Sc_01.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="3" storage="chara/Sul_SC/Sul_Face_Shy_Sc_01.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="4" storage="chara/Sul_SC/Sul_Face_Angry_Sc_01.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="5" storage="chara/Sul_SC/Sul_Face_Angry_Sc_02.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="7" storage="chara/Sul_SC/Sul_Face_Worry_Sc_01.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="8" storage="chara/Sul_SC/Sul_Face_Embarrass_Sc_01.png" zindex=21 ]
	[chara_layer name="Sul" part="face" id="9" storage="chara/Sul_SC/Sul_Face_Aversion_Sc_01.png" zindex=21 ]

[endmacro]

;진대용 캐릭터 일러스트 코드
[macro name="jeon_ill"]

	[chara_new name="Jeon" storage="chara/Jeon_Sc/bin.png" zindex=1 jname="Jeon" width="1444" height="2735" ]

	[chara_layer name="Jeon" part="body" id="1" storage="chara/Jeon_SC/Jeon_Body_Sc_01.png" zindex=20 ]
	[chara_layer name="Jeon" part="body" id="2" storage="chara/Jeon_SC/Jeon_Body_Sc_02.png" zindex=20 ]
	[chara_layer name="Jeon" part="body" id="3" storage="chara/Jeon_SC/Jeon_Body_Sc_03.png" zindex=20 ]
	[chara_layer name="Jeon" part="body" id="4" storage="chara/Jeon_SC/Jeon_Body_Sc_04.png" zindex=20 ]

	[chara_layer name="Jeon" part="face" id="1" storage="chara/Jeon_SC/Jeon_Face_Base_Sc_01.png" zindex=21 ]
	[chara_layer name="Jeon" part="face" id="2" storage="chara/Jeon_SC/Jeon_Face_Smile_Sc_01.png" zindex=21 ]
	[chara_layer name="Jeon" part="face" id="4" storage="chara/Jeon_SC/Jeon_Face_Angry_Sc_01.png" zindex=21 ]
	[chara_layer name="Jeon" part="face" id="6" storage="chara/Jeon_SC/Jeon_Face_Surprise_Sc_01.png" zindex=21 ]
	[chara_layer name="Jeon" part="face" id="8" storage="chara/Jeon_SC/Jeon_Face_Embarrass_Sc_01.png" zindex=21 ]

[endmacro]