[_tb_system_call storage=system/_Maple_minigame.ks]

[bg  time="1000"  method="crossfade"  storage="Common_White_01.png"  ]
[tb_start_tyrano_code]
[html]

<div id="starcatch_background" style="width: 1920px; height: 1080px;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Workspace_Bgi_01.png');">
<div id="starcatch_wrapper" style="display: block;position: absolute;top: 380px;left: 650px;pxmargin: auto;width: 579px;padding: 20px;height: 280px; border-radius: 26px">
<div style=" margin-top:40px; left: 50px;">
<span id="starcatch_timer" style="margin-left:320px;">10</span>
</div>
<div id="starcatch_Gage" style="display:block;margin:auto; margin-top:55px; width:538px; height: 52px; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Gauge_Back_01.png');">
<div id="starcatch_zone1" style="position: absolute; width: 50px; height:40px; background: #ffc1074d; margin-top: 2px;left: 100px; right: 0; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Pattern_01.png');">
</div>
<div id="starcatch_zone2" style="position: absolute; width: 30px; height:40px; background: #ffc1074d; margin-top: 2px;left: 200px; right: 0; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Pattern_02.png');">
</div>
<div id="starcatch_zone3" style="position: absolute; width: 10px; height:40px; background: #ffc1074d; margin-top: 2px;left: 250px; right: 0; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Pattern_03.png');">
</div>
<div id="starcatch_item" style="width: 27px; height:69px;position: absolute;margin-top:2px;display: inline-block;box-sizing: border-box;animation: linear infinite alternate;;animation-name: move_left_right;animation-duration: 2s; animation-duration: leaner;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Bar_01.png');">
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
var success = 0;
var zone1_bool = 0;
var zone2_bool = 0;
var zone3_bool = 0;
const myButton = document.getElementById('stop');
const myAnimation = document.getElementById('starcatch_item');

function Starcatch_time() {
W = setInterval(function() {
var e = parseInt($("#starcatch_timer").text());
e <= 0 ? Fail() : $("#starcatch_timer").text(e - 1)}, 1e3)
}

function R() {
try {

myAnimation.style.animationPlayState = 'paused';
clearInterval(W),
W = null,

H = !1
} catch (e) {}
}

function Fail(){
try {

myAnimation.style.animationPlayState = 'paused';
clearInterval(W),
TYRANO.kag.ftag.startTag("jump", { target: "Fail" })
W = null,

H = !1
} catch (e) {}
}


function Check_success(id,item_rect, zone_rect){
var test = item_rect.width/9*4;
var ocha = item_rect.width/9;
var f = item_rect.x+test - zone_rect.x;
var _ = 0-item_rect.width/9;
var g = zone_rect.width;
h = !!(f > _) && !!(f < g);
var d = "";
if(h)
{
d = `${id} 성공`;
success +=1;
if("starcatch_zone1" == id){
zone1_bool +=1;
}
if("starcatch_zone2" == id){
zone2_bool +=1;
}
if("starcatch_zone3" == id){
zone3_bool +=1;
}
}
return d;
}

Starcatch_time();
myButton.addEventListener('click', () => {
if(success != 3){
var item_rect = document.getElementById('starcatch_item').getBoundingClientRect();
var zone_rect1 = document.getElementById('starcatch_zone1').getBoundingClientRect();
var zone_rect2 = document.getElementById('starcatch_zone2').getBoundingClientRect();
var zone_rect3 = document.getElementById('starcatch_zone3').getBoundingClientRect();
var load = "";
if(load == "" && zone1_bool == 0)
{
load = Check_success("starcatch_zone1",item_rect,zone_rect1);
}
if(load == ""&& zone2_bool == 0)
{
load = Check_success("starcatch_zone2",item_rect,zone_rect2);
}
if(load == ""&& zone3_bool == 0)
{
load = Check_success("starcatch_zone3",item_rect,zone_rect3);
}

$("#collect").text(load);
if(success >= 3)
{
R();
//성공시 점프
TYRANO.kag.ftag.startTag("jump", { target: "Success" });

}
}
});


[endscript]

[_tb_end_tyrano_code]

[s  ]
*Success

[tb_ptext_show  x="495"  y="528"  size="30"  color="0xff0505"  time="1000"  text="성공&nbsp;화면&nbsp;여기&nbsp;들어가면&nbsp;됩니다."  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[s  ]
*Fail

[tb_ptext_show  x="495"  y="528"  size="30"  color="0xff0505"  time="1000"  text="실패&nbsp;화면&nbsp;여기&nbsp;들어가면&nbsp;됩니다."  anim="false"  face="undefined"  edge="undefined"  shadow="undefined"  ]
[s  ]
