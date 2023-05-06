■時間制限バープラグイン利用手順

    1. プラグイン配置

        data\others\plugin 直下にこのフォルダごと配置してください


    2. ゲームに本プラグインを適用

        plugin.ks等にpluginタグを以下の通りに記載してください

        [plugin name="time_limit"]

◇プラグイン適用時に使用できるタグ一覧

    1. time_limitタグ

        制限時間バーを表示するためのタグ
        一度にたくさんの制限時間バーを配置すると動作が重くなる場合があります

        [time_limit label="*timeover" (posX=560) (posY=330) (width=624) (height=40) (time=3500) (layer="0")]

        <引数説明>
        label  : 【必須】制限時間超過時の移動先のラベル名
        posX   : X座標(px)[デフォルト:0]
        posY   : Y座標(px)[デフォルト:0]
        width  : 幅(px)[デフォルト:100]
        height : 高さ(px)[デフォルト:100]
        layer  : 配置先レイヤ[デフォルト:"0"]
                 "base" ⇒ 背景レイヤ / 0以上の数値 前景レイヤ
    
    2. clr_time_limitタグ

        制限時間バーをクリアにするためのタグ
        制限時間バーを使用した後は必ずこのタグでクリアしてください

        [clr_time_limit]

2020-2021 © SuiSoft All Rights Reserved.