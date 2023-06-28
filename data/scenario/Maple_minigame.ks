[_tb_system_call storage=system/_Maple_minigame.ks]

[bg  time="1000"  method="crossfade"  storage="Common_White_01.png"  ]
[tb_start_tyrano_code]
[html]
<div id="starcatch_background" style="width: 1920px; height: 1080px;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Workspace_Bgi_01.png');">
<div id="starcatch_wrapper" style="display: block;position: absolute;top: 380px;left: 650px;pxmargin: auto;width: 579px;padding: 20px;height: 280px; border-radius: 26px">
<div style="font-size: 60px; text-align: center">
<span id="starcatch_timer">5</span>
</div>
<div style="display:block;margin:auto;width:538px; height: 52px; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Gauge_Back_01.png');">
<div id="starcatch_zone" style="position: absolute; width: 50px; height:40px; background: #ffc1074d; left: 100px; right: 0; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Pattern_01.png');">
</div>
<div id="starcatch_item" style="width: 3px; height:40px;position: absolute;display: inline-block;box-sizing: border-box;animation: linear infinite alternate;;animation-name: move_left_right;animation-duration: 2s; animation-duration: leaner;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Bar_01.png');">
</div>

</div>
<div class="col" style="text-align: center; margin-top: 8px;">
<button id="stop" name="stop" class="btn btn-success button-style" style="border:none;width: 233px;height: 67px;background-color:transparent;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/Button_Stop_01.png');">
</button>
<p id="collect"></p>
</div>
</div>
</div>

[endhtml]

[iscript]


var H = !1
, W = null;
function Starcatch_time() {
console.log("inputstarcatchtimer1");
W = setInterval(function() {
console.log("inputstarcatchtimer2");
var e = parseInt($("#starcatch_timer").text());
e <= 0 ? $("#stop").click() : $("#starcatch_timer").text(e - 1)}, 1e3)
}

function R() {
try {

clearInterval(W),
W = null,

H = !1
} catch (e) {}
}

const myButton = document.getElementById('stop');
const myAnimation = document.getElementById('starcatch_item');
Starcatch_time();
myButton.addEventListener('click', () => {
var s = $("#starcatch_item").offset().left, v = $("#starcatch_zone").offset().left;
var f = s - v;
var _ = 0-10;
var g = 62;
h = !!(f > _) && !!(f < g);
var d = "";
h && (d = "[스타캐치 ⭐]");
$("#collect").text(d);
myAnimation.style.animationPlayState = 'paused';
R();
});


[endscript]

[_tb_end_tyrano_code]

