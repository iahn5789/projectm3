[_tb_system_call storage=system/_Workspace_Game_03.ks]

*game01

[tb_start_tyrano_code]
[iscript]

if(window.TYRANO.kag.stat.f.workspace_chance == 0){
TYRANO.kag.ftag.startTag("return", { });
}
window.TYRANO.kag.stat.f.workspace_chance -= 1;

[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html zindex=6]

<div id="starcatch_background" style="animation: fadein 1s; width: 1920px; height: 1080px;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Workspace_Bgi_03.png');">
<div id="starcatch_wrapper" style="display: block;position: absolute;top: 380px;left: 650px;pxmargin: auto;width: 579px;padding: 20px;height: 280px; border-radius: 26px">
<div style=" margin-top:40px;margin-left:248px; left: 50px;height: 45px; width:84px;">
<span id="starcatch_timer" style="justify-content: center;align-items: center;display: flex;">10</span>
</div>
<div id="starcatch_Gage" style="display:block;margin:auto; margin-top:55px; width:538px; height: 52px; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Gauge_Back_01.png');">
<div id="starcatch_zone1" style="position: absolute; width: 50px; height:40px; background: #ffc1074d; margin-top: 2px;left: 100px; right: 0; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Pattern_01.png');">
</div>
<div id="starcatch_zone2" style="position: absolute; width: 50px; height:40px; background: #ffc1074d; margin-top: 2px;left: 240px; right: 0; background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Pattern_01.png');">
</div>

<div id="starcatch_item" style="width: 27px; height:69px;position: absolute;margin-top:2px;display: inline-block;box-sizing: border-box;animation: linear infinite alternate;;animation-name: move_left_right;animation-duration: 1s; animation-duration: leaner;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Bar_01.png');">
</div>

</div>
<div class="col" style="text-align: center; margin-top: 8px;">
<button id="stop" name="stop" class="btn btn-success button-style" style="border:none;width: 233px;height: 67px;background-color:transparent;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/Button_Stop_01.png');">
</button>
<p id="collect"></p>
</div>
</div>
<div id="success_01" style="position: absolute;width: 19px; height:19px; top: 655px;left: 1175px;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Success_Light_01.png');visibility: hidden;">
</div>
<div id="success_02" style="position: absolute;width: 19px; height:19px; top: 655px;left: 1201px;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Success_Light_02.png');visibility: hidden;">
</div>
<div id="success_03" style="position: absolute;width: 19px; height:19px; top: 655px;left: 1227px;background-image: url('../projectm3/data/image/New_GUI/Workspace_UI/UI_Success_Light_03.png');visibility: hidden;">
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
console.log("item_위치 : ",);

if(h)
{
d = `${id} 성공`;
success +=1;
if("starcatch_zone1" == id){
zone1_bool +=1;
document.getElementById('starcatch_zone1').style.visibility = "hidden";
}
if("starcatch_zone2" == id){
zone2_bool +=1;
document.getElementById('starcatch_zone2').style.visibility = "hidden";
}
if("starcatch_zone3" == id){
zone3_bool +=1;
document.getElementById('starcatch_zone3').style.visibility = "hidden";
}
}
else{
// 실패시 작업

}
return d;
}
function Event_action(){

myAnimation.style.animationPlayState = 'paused';
setTimeout(function() {
myAnimation.style.animationPlayState = 'running';
}, 400);
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

// 모든 박스 체크 후
if(load == "")
{
var e = parseInt($("#starcatch_timer").text());
if(e-1 >0)
{
$("#starcatch_timer").text(e - 1);
}
else
{
$("#starcatch_timer").text(0);
}
}
else{
if (success == 1)
{
document.getElementById('success_01').style.visibility = "visible";
}
if (success == 2)
{
document.getElementById('success_02').style.visibility = "visible";
}
if (success == 3)
{
document.getElementById('success_03').style.visibility = "visible";
}
}

$("#collect").text(load);
if(success >= 3)
{
R();
//성공시 점프
TYRANO.kag.ftag.startTag("jump", { target: "Success" });

}
}
}
let spacePressed = false;
Starcatch_time();
document.addEventListener("keydown", function(event) {
if (event.keyCode === 32 && !spacePressed) {
spacePressed = true;
event.preventDefault();
Event_action();
}
});
document.addEventListener("keyup", function(event) {
if (event.keyCode === 32) {
spacePressed = false;
}
});
myButton.addEventListener('click', () => {
Event_action();
});



[endscript]

[_tb_end_tyrano_code]

[s  ]
*Success

[tb_eval  exp="f.money+=600"  name="money"  cmd="+="  op="t"  val="600"  val_2="undefined"  ]
[tb_start_tyrano_code]
[iscript]
var imageElement = document.getElementById('starcatch_background');
imageElement.style.transition = 'opacity 1s';
imageElement.style.opacity = '0';
setTimeout(function() {
imageElement.style.display = 'none';
}, 1000);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html zindex=8]
<style>
.successtext {
position:absolute;
width:252px;
height:127px;
left:834px;
top:-150px;
}
</style>
<div id="successtext" class="successtext">
<img class="img" src="data/image/New_GUI/Workspace_UI/UI_Success_Text_01.png"/>
</div>
[endhtml]
[anim name=successtext top=247 time=500]
[wa]
[anim name=successtext top=237 time=100]
[wa]
[anim name=successtext top=247 time=100]
[wa]
[anim name=successtext top=237 time=100]
[wa]
[anim name=successtext top=247 time=100]
[wa]

[iscript]
var imageElement = document.getElementById('successtext');
imageElement.style.transition = 'opacity 0.5s';
imageElement.style.opacity = '0';
setTimeout(function() {
imageElement.style.display = 'none';
}, 500);
[endscript]

[html zindex=6]
<style>
.successbgi {
position:absolute;
width:1920px;
height:1080px;
left:0px;
top:0px;
animation:fadein 0.7s;
}
</style>
<div class="successbgi">
<img class="img" src="data/image/New_GUI/Workspace_UI/UI_Success_Bgi_03.png"/>
</div>
[endhtml]

[button name="back" storage="Workspace_Game_01.ks" target="back" graphic="../image/New_GUI/Workspace_UI/Button_Back_01.png" enterimg="../image/New_GUI/Workspace_UI/Button_Back_02.png" width="233" height="67" x="842" y="1480" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="7"]
[anim name=back top=647 time=500]

[_tb_end_tyrano_code]

[s  ]
*Fail

[tb_start_tyrano_code]
[iscript]
var imageElement = document.getElementById('starcatch_background');
imageElement.style.transition = 'opacity 1s';
imageElement.style.opacity = '0';
setTimeout(function() {
imageElement.style.display = 'none';
}, 1000);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[html zindex=8]
<style>
.failtext {
position:absolute;
width:252px;
height:127px;
left:834px;
top:-150px;
}
</style>
<div id="failtext" class="failtext">
<img class="img" src="data/image/New_GUI/Workspace_UI/UI_Fail_Text_01.png"/>
</div>
[endhtml]

[anim name=failtext top=247 time=500]
[wa]
[anim name=failtext top=237 time=100]
[wa]
[anim name=failtext top=247 time=100]
[wa]
[anim name=failtext top=237 time=100]
[wa]
[anim name=failtext top=247 time=100]
[wa]

[iscript]
var imageElement = document.getElementById('failtext');
imageElement.style.transition = 'opacity 0.5s';
imageElement.style.opacity = '0';
setTimeout(function() {
imageElement.style.display = 'none';
}, 500);
[endscript]

[html zindex=6]
<style>
.failbgi {
position:absolute;
width:1920px;
height:1080px;
left:0px;
top:0px;
animation:fadein 0.7s;
}
</style>
<div class="failbgi">
<img class="img" src="data/image/New_GUI/Workspace_UI/UI_Fail_Bgi_01.png"/>
</div>
[endhtml]

[button name="restart" storage="" target="" graphic="../image/New_GUI/Workspace_UI/Button_Fail_Restart_01.png" enterimg="../image/New_GUI/Workspace_UI/Button_Fail_Restart_02.png" width="233" height="67" x="842" y="1280" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="7"]
[button name="back" storage="Workspace_Game_01.ks" target="back" graphic="../image/New_GUI/Workspace_UI/Button_Back_01.png" enterimg="../image/New_GUI/Workspace_UI/Button_Back_02.png" width="233" height="67" x="842" y="1480" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav" zindex="7"]
[anim name=restart top=647 time=500]
[anim name=back top=741 time=500]
[_tb_end_tyrano_code]

[s  ]
*back

[tb_start_tyrano_code]
[free name="failbgi" layer=1 wait=true time=200]
[free name="successbgi" layer=1 wait=true time=200]
[cm]
[cm]
[freeimage layer="0" ]
[freeimage layer="1" ]
[freeimage layer="2" ]
[clearfix name="setting" ]
[_tb_end_tyrano_code]

[jump  storage="Test_Wait_01.ks"  target="*testin"  ]
[tb_start_tyrano_code]
[cm]
[freeimage layer="1"]
[tb_eval  exp="f.common_poster_choice_whether='FALSE'"  name="common_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.k_poster_choice_whether='FALSE'"  name="k_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.j_poster_choice_whether='FALSE'"  name="j_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]
[tb_eval  exp="f.s_poster_choice_whether='FALSE'"  name="s_poster_choice_whether"  cmd="="  op="t"  val="FALSE"  val_2="undefined"  ]

;[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="workspace" layer=2 ]
[clearfix name="setting" layer=2 ]

;[free name="Day" layer=2 ]
;[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=22 x=-201 y=236 width=120 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=20 x=-204 y=403 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=20 x=-204 y=449 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=20 x=-204 y=493 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=22 x=-185 y=145 width=50 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" ]
[ptext layer=2 name="score" page=fore text="&[f.score]" size=22 x=-199 y=191 width=70 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" ]
[anim name="money" left=199 time=500 effect=easeInQuad]
[anim name="klove" left=196 time=500 effect=easeInQuad]
[anim name="jlove" left=196 time=500 effect=easeInQuad]
[anim name="slove" left=196 time=500 effect=easeInQuad]
[anim name="Day" left=215 time=500 effect=easeInQuad]
[anim name="score" left=201 time=500 effect=easeInQuad]

[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="-500" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="story" graphic="../image/New_GUI/Test_UI/Button_Story_01.png" enterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="2420" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="workspace" graphic="../image/New_GUI/Test_UI/Button_Work_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="2420" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="2420" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="2420" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="profilekang" storage="Profile_Kang_01.ks" target="profile_kang_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="-300" y="399" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="profilejin" storage="Profile_Jin_01.ks" target="profile_jin_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="-300" y="444" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="profilesul" storage="Profile_Sul_01.ks" target="profile_sul_00" graphic="../image/New_GUI/Test_UI/Button_Profile_01.png" enterimg="../image/New_GUI/Test_UI/Button_Profile_02.png" width="67" height="33" x="-300" y="489" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[anim name="charinfo" left=40 time=500 effect=easeInQuad]
[anim name="gift" left=40 time=500 effect=easeInQuad]
[anim name="story" left=1668 time=500 effect=easeInQuad]
[anim name="work" left=1668 time=500 effect=easeInQuad]
;[anim name="badge" left=1668 time=500 effect=easeInQuad]
[anim name="setting" left=1668 time=500 effect=easeInQuad]
[anim name="profilekang" left=315 time=500 effect=easeInQuad]
[anim name="profilejin" left=315 time=500 effect=easeInQuad]
[anim name="profilesul" left=315 time=500 effect=easeInQuad]
[anim name="storyboard" top=-700 time=300 effect=easeInQuad]
[anim name="lootkang" top=-600 time=300 effect=easeInQuad]
[anim name="lootjin" top=-600 time=300 effect=easeInQuad]
[anim name="lootsul" top=-600 time=300 effect=easeInQuad]
[anim name="lootcommon" top=-600 time=300 effect=easeInQuad]
[anim name="teststart" top=1100 time=100 effect=easeInQuad]
[anim name="secretmsgkang" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgjin" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgsul" top=1100 time=300 effect=easeInQuad]
[anim name="secretmsgcommon" top=1100 time=300 effect=easeInQuad]
[anim name="msgkang01" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang02" top=1100 time=270 effect=easeInQuad]
[anim name="msgkang03" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin01" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin02" top=1100 time=270 effect=easeInQuad]
[anim name="msgjin03" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul01" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul02" top=1100 time=270 effect=easeInQuad]
[anim name="msgsul03" top=1100 time=270 effect=easeInQuad]
[anim name="msgcommon01" top=1100 time=270 effect=easeInQuad]
[anim name="msgcommon02" top=1100 time=270 effect=easeInQuad]
[anim name="msgcommon03" top=1100 time=270 effect=easeInQuad]
[wa]

[cm]
[image layer=1 width=382 height=550 left=-500 top=17 page=fore visible=true name=charinfo storage = ../image/New_GUI/Test_UI/UI_Charinfo_01.png ]
[button name="gift" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Test_Giftshop_01.png" enterimg="../image/New_GUI/Test_UI/Test_Giftshop_02.png" width="382" height="262" x="40" y="778" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Shop_Door_Click__01.wav"]
[button name="story" storage="Test_Wait_01.ks" target="story" graphic="../image/New_GUI/Test_UI/Button_Story_01.png" enterimg="../image/New_GUI/Test_UI/Button_Story_02.png" width="233" height="67" x="1668" y="820" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="work" storage="Test_Wait_01.ks" target="callback" graphic="../image/New_GUI/Test_UI/Button_Work_03.png" enterimg="../image/New_GUI/Test_UI/Button_Work_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
;[button name="badge" storage="Test_Wait_01.ks" target="" graphic="../image/New_GUI/Test_UI/Button_Badge_01.png" enterimg="../image/New_GUI/Test_UI/Button_Badge_02.png" width="233" height="67" x="1668" y="901" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]
[button name="setting" storage="config.ks" role="sleepgame" fix="true" graphic="../image/New_GUI/Test_UI/Button_Setting_01.png" enterimg="../image/New_GUI/Test_UI/Button_Setting_02.png" width="233" height="67" x="1668" y="982" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Config_Sellect_Click_01.wav"]

[image layer=2 width=850 height=559 left=580 top=-700 page=fore visible=true name=workspace storage = ../image/New_GUI/Test_UI/UI_Work_01.png ]
[button name="game01" storage="Test_Wait_Call_01.ks" target="game01" graphic="../image/New_GUI/Test_UI/Button_Work_Game_01_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_01_02.png" zindex=2 width="203" height="179" x="649" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="game02" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_02_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_02_02.png" zindex=2 width="203" height="179" x="901" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="game03" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_03_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_03_02.png" zindex=2 width="203" height="179" x="1153" y="-600" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="game04" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_04_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_04_02.png" zindex=2 width="203" height="179" x="769" y="-350" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]
[button name="game05" storage="Test_Wait_01.ks" target="gift" graphic="../image/New_GUI/Test_UI/Button_Work_Game_05_01.png" enterimg="../image/New_GUI/Test_UI/Button_Work_Game_05_02.png" zindex=2 width="203" height="179" x="1021" y="-350" enterse="UI/Common_Click_Hover_01.wav" clickse="UI/Common_Click_01.wav"]

[anim name="workspace" top=0 time=1000 effect=easeInQuad]
[anim name="game01" top=112 time=1000 effect=easeInQuad]
[anim name="game02" top=112 time=1000 effect=easeInQuad]
[anim name="game03" top=112 time=1000 effect=easeInQuad]
[anim name="game04" top=336 time=1000 effect=easeInQuad]
[anim name="game05" top=336 time=1000 effect=easeInQuad]

[html]
<div class="help01">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Charinfo_01.png" alt=""/>
</div>
<div class="help02">
<img class="img" src="data/image/New_GUI/Test_UI/UI_Help_01.png" alt=""/>
<img class="img-hover" src="data/image/New_GUI/Test_UI/UI_Help_Love_01.png" alt=""/>
</div>
[endhtml]



[_tb_end_tyrano_code]

[s  ]
