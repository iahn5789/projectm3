[_tb_system_call storage=system/_Msg_line_script_Scene_01.ks]

*Msg_line_Open_Kang

[tb_start_tyrano_code]
[if exp="f.Day === 1"]
[eval exp="f.msg_line= '음.. 그러고 보니 선생님이 즐겨보시는 프로그램이 있긴 했어!<br>뭐였더라.. 래퍼들의... 기억이 잘 안 나! 헤헤'"]
[endif]

[html]
<div>
<p  style='z-index:2; left:650px; top:500px; width:600px; height:30000px; color:black; position:absolute;font-size: 30px;'>
<span id="Msg_line_form"></span>
</p>
</div>

<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("Msg_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.msg_line;
}

setGiftLine();
</script>

[endhtml]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Msg_line_Open_Jin

[tb_start_tyrano_code]
[if exp="f.Day === 1"]
[eval exp="f.msg_line= '내가 어떻게 생긴지 벌써 잊은거야 !??!?!'"]
[endif]

[html]
<div>
<p  style='z-index:2; left:650px; top:500px; width:600px; height:30000px; color:black; position:absolute;font-size: 30px;'>
<span id="Msg_line_form"></span>
</p>
</div>

<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("Msg_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.msg_line;
}

setGiftLine();
</script>

[endhtml]
[_tb_end_tyrano_code]

[return  ]
[s  ]
*Msg_line_Open_Sul

[tb_start_tyrano_code]
[if exp="f.Day === 1"]
[eval exp="f.msg_line= '계단 때문에 다리 아파...<br>게다가 지나갈 때면 해골 모형이...'"]
[endif]

[html]
<div>
<p  style='z-index:2; left:650px; top:500px; width:600px; height:30000px; color:black; position:absolute;font-size: 30px;'>
<span id="Msg_line_form"></span>
</p>
</div>

<script>
function setGiftLine() {
console.log("Console_Log_TEST" + window.TYRANO.kag.stat.f.gift_line);
let giftLineElem = document.getElementById("Msg_line_form");
giftLineElem.innerHTML = "";
giftLineElem.innerHTML = window.TYRANO.kag.stat.f.msg_line;
}

setGiftLine();
</script>

[endhtml]
[_tb_end_tyrano_code]

[return  ]
[s  ]
