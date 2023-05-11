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

■시간 제한 바 플러그인 이용 순서

    1. 플러그인 배치

        data\others\plugin 바로 아래에 이 폴더별로 배치하십시오.


    2. 게임에 본 플러그인을 적용

        plugin.ks 등에 plugin 태그를 아래와 같이 기재해 주세요

        [plugin name="time_limit"]

◇플러그인 적용시에 사용할 수 있는 태그 일람

    1. time_limit 태그

        제한 시간 표시줄을 표시하는 태그
        한 번에 많은 시간 제한 막대를 배치하면 동작이 무거워질 수 있습니다.

        [time_limit label="*timeover" (posX=560) (posY=330) (width=624) (height=40) (time=3500) (layer="0")]

        <인수 설명>
        label : 【필수】 제한시간 초과시의 이동처의 라벨명
        posX : X 좌표(px)[기본값:0]
        posY : Y 좌표(px)[기본:0]
        width : 너비(px)[기본값: 100]
        height : 높이(px)[기본값:100]
        layer : 배치 레이어[기본값:"0"]
                 "base" ⇒ 배경 레이어 / 0 이상의 수치 전경 레이어
    
    2. clr_time_limit 태그

        시간 제한 막대를 지우는 태그
        제한시간 표시줄을 사용한 후에는 반드시 이 태그로 지워야 합니다.

        [clr_time_limit]

2020-2021 © SuiSoft All Rights Reserved.