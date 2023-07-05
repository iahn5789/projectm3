;メッセージレイヤの定義

		[position width=1800 height=300 top=700 left=300 ]


		
			[position page=fore frame="append/frame_message.png" margint=45 marginl=80 marginr=20 marginb=30 vertical=false ]
		

		[ptext name="chara_name_area" layer="message0" color=0x000000 size=30 x=324 y=705 bold="bold" edge="undefined" shadow="undefined"]

		;キャラクターの表示モードに関する定義
		[chara_config ptext="chara_name_area" pos_mode=true time="600" memory="false" anim="true" effect="linear" pos_change_time="600" ]

		;キャラクターフォーカスなど
		[chara_config  talk_focus="none" ]

		;クリック待ちボタンについて
		[glyph fix="true" left="1533" top="935" ]

		

		;CG・回想用の共通項目
		[eval exp="sf._tb_cg_noimage='Scene_Bt_Off_01.png'" ]
		[eval exp="sf._tb_replay_noimage='New_GUI/Scene_Bt_Off_02.png'" ]

		;ふきだし用の設定（message1）
		;[position layer="message1" left=160 top=500 width=1000 height=200 radius=15 page=fore visible=true color="white" opacity=255 border_size="3" border_color="black" ]
		;[position layer="message1" page=fore margint="15" marginl="20" marginr="20" marginb="20"]

		[position layer="message1" width=1800 height=300 top=700 left=300 ]
		[position layer="message1" page=fore margint=5 marginl=10 marginr=10 marginb=10 vertical=false opacity="0" radius="0" color="0x000000" ]

		