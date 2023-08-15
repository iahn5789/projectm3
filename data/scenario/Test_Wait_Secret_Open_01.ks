[_tb_system_call storage=system/_Test_Wait_Secret_Open_01.ks]

*01msgcommon01

[if exp="f.note01 === 'FALSE'"]
[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  ]
[tb_eval  exp="f.note01='TRUE'"  name="note01"  cmd="="  op="t"  val="0"  ]
[endif]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.jlove+=1"  name="jlove"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.slove+=1"  name="slove"  cmd="+="  op="t"  val="1"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=22 x=199 y=191 width=120 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=20 x=181 y=403 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=20 x=181 y=449 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=20 x=181 y=493 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=22 x=215 y=145 width=50 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
;[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[filter layer=all blur=0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=606 height=601 left=607 top=1300 page=fore visible=true name=msgopen01 storage = ../image/New_GUI/Test_UI/Msg_Open_01.png ]
[anim name=msgopen01 top=240 time=400]
[iscript]
setTimeout(function () {
$('.msgopen01').fadeOut(300);
}, 400);
[endscript]
[wait  time="500"  ]
[image layer=1 width=606 height=601 left=607 top=240 page=fore visible=true name=msgopen02 storage = ../image/New_GUI/Test_UI/Msg_Open_02.png ]
[iscript]
$('.msgopen02').hide().fadeIn(500);
setTimeout(function () {
$('.msgopen02').fadeOut(500);
}, 400);
[endscript]
[wait  time="500"  ]
[filter layer=all blur=10]
[html]
<style>
.secretmsg01{
animation: fadein 1s;
}
</style>
<div class="secretmsg01">
<img class="img" src="data/image/New_GUI/Test_UI/Secret_Msg_Textbox_Common_01.png"/>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[call  storage="Msg_line_script_Scene_01.ks"  target="*Msg_line_Open_Common_01"  ]
[tb_start_tyrano_code]
[button name="back" storage="Test_Wait_01.ks" target="*testin" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="843" y="1300" clickse="UI/Config_Back_01.wav"]
[anim name=back top=900 time=300]
[_tb_end_tyrano_code]

[s  ]
*01msgcommon02

[if exp="f.note02 === 'FALSE'"]
[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  ]
[tb_eval  exp="f.note02='TRUE'"  name="note01"  cmd="="  op="t"  val="0"  ]
[endif]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.jlove+=1"  name="jlove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.slove+=1"  name="slove"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=22 x=199 y=191 width=120 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=20 x=181 y=403 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=20 x=181 y=449 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=20 x=181 y=493 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=22 x=215 y=145 width=50 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
;[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[filter layer=all blur=0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=606 height=601 left=607 top=1300 page=fore visible=true name=msgopen01 storage = ../image/New_GUI/Test_UI/Msg_Open_01.png ]
[anim name=msgopen01 top=240 time=400]
[iscript]
setTimeout(function () {
$('.msgopen01').fadeOut(300);
}, 400);
[endscript]
[wait  time="500"  ]
[image layer=1 width=606 height=601 left=607 top=240 page=fore visible=true name=msgopen02 storage = ../image/New_GUI/Test_UI/Msg_Open_02.png ]
[iscript]
$('.msgopen02').hide().fadeIn(500);
setTimeout(function () {
$('.msgopen02').fadeOut(500);
}, 400);
[endscript]
[wait  time="500"  ]
[filter layer=all blur=10]
[html]
<style>
.secretmsg01{
animation: fadein 1s;
}
</style>
<div class="secretmsg01">
<img class="img" src="data/image/New_GUI/Test_UI/Secret_Msg_Textbox_Common_01.png"/>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[call  storage="Msg_line_script_Scene_01.ks"  target="*Msg_line_Open_Common_02"  ]
[tb_start_tyrano_code]
[button name="back" storage="Test_Wait_01.ks" target="*testin" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="843" y="1300" clickse="UI/Config_Back_01.wav"]
[anim name=back top=900 time=300]
[_tb_end_tyrano_code]

[s  ]
*01msgcommon03

[if exp="f.note03 === 'FALSE'"]
[tb_eval  exp="f.money-=300"  name="money"  cmd="-="  op="t"  val="300"  ]
[tb_eval  exp="f.note03='TRUE'"  name="note01"  cmd="="  op="t"  val="0"  ]
[endif]
[tb_eval  exp="f.klove+=1"  name="klove"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.jlove+=1"  name="jlove"  cmd="+="  op="t"  val="1"  ]
[tb_eval  exp="f.slove+=1"  name="slove"  cmd="+="  op="t"  val="1"  ]
[tb_start_tyrano_code]
[cm]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[ptext layer=2 name="money" page=fore text="&[f.money]" size=22 x=199 y=191 width=120 edge="0xFFEEB0" color="0x9B7900" align="right" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="klove" page=fore text="&[f.klove]" size=20 x=181 y=403 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="jlove" page=fore text="&[f.jlove]" size=20 x=181 y=449 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="slove" page=fore text="&[f.slove]" size=20 x=181 y=493 width=150 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
[ptext layer=2 name="Day" page=fore text="&[f.Day]" size=22 x=215 y=145 width=50 edge="0xFFEEB0" color="0x9B7900" align="center" vertical=false face="NanumGothicRegular" zindex="99999" ]
;[bg  time="10"  method="crossfade"  storage="Test_BGI/Test_Bgi_01.png"  ]
[filter layer=all blur=0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image layer=1 width=606 height=601 left=607 top=1300 page=fore visible=true name=msgopen01 storage = ../image/New_GUI/Test_UI/Msg_Open_01.png ]
[anim name=msgopen01 top=240 time=400]
[iscript]
setTimeout(function () {
$('.msgopen01').fadeOut(300);
}, 400);
[endscript]
[wait  time="500"  ]
[image layer=1 width=606 height=601 left=607 top=240 page=fore visible=true name=msgopen02 storage = ../image/New_GUI/Test_UI/Msg_Open_02.png ]
[iscript]
$('.msgopen02').hide().fadeIn(500);
setTimeout(function () {
$('.msgopen02').fadeOut(500);
}, 400);
[endscript]
[wait  time="500"  ]
[filter layer=all blur=10]
[html]
<style>
.secretmsg01{
animation: fadein 1s;
}
</style>
<div class="secretmsg01">
<img class="img" src="data/image/New_GUI/Test_UI/Secret_Msg_Textbox_Common_01.png"/>
</div>
[endhtml]
[free name="money" layer=2 ]
[free name="klove" layer=2 ]
[free name="jlove" layer=2 ]
[free name="slove" layer=2 ]
[free name="Day" layer=2 ]
[free name="score" layer=2 ]
[_tb_end_tyrano_code]

[call  storage="Msg_line_script_Scene_01.ks"  target="*Msg_line_Open_Common_03"  ]
[tb_start_tyrano_code]
[button name="back" storage="Test_Wait_01.ks" target="*testin" graphic="../image/New_GUI/Test_UI/Button_Back_01.png" enterimg="../image/New_GUI/Test_UI/Button_Back_02.png" width="233" height="67" x="843" y="1300" clickse="UI/Config_Back_01.wav"]
[anim name=back top=900 time=300]
[_tb_end_tyrano_code]

[s  ]
*back

[jump  storage="Test_Wait_01.ks"  target="*testin"  ]
[s  ]
