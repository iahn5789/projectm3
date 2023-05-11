[_tb_system_call storage=system/_Test_Collect_Check_Scene_01.ks]

[bg  time="1"  method="crossfade"  storage="Common_Test.png"  ]
*Random_Number

[tb_start_tyrano_code]
[iscript]
// 1부터 5까지의 숫자를 저장하는 배열 생성
var arr = [1, 2, 3, 4, 5];

// 배열을 무작위로 섞기 위한 함수 정의
function shuffle(array) {
var currentIndex = array.length, temporaryValue, randomIndex;

// 현재 인덱스에서 무작위로 인덱스를 선택하여 값을 교환하는 방식으로 배열을 섞음
while (0 !== currentIndex) {

randomIndex = Math.floor(Math.random() * currentIndex);
currentIndex -= 1;

temporaryValue = array[currentIndex];
array[currentIndex] = array[randomIndex];
array[randomIndex] = temporaryValue;
}

return array;
}

// 배열을 무작위로 섞음
shuffle(arr);

// 섞인 배열에서 처음 다섯 개의 값을 변수에 저장함
f.Test_Item01 = arr[0];
f.Test_Item02 = arr[1];
f.Test_Item03 = arr[2];
f.Test_Item04 = arr[3];
f.Test_Item05 = arr[4];
[endscript]
[_tb_end_tyrano_code]

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*1Week_Button"  cond="f.question==1"  ]
[call  storage="Test_Collect_Check_Scene_01.ks"  target="*2Week_Button"  cond="f.question==2"  ]
[call  storage="Test_Collect_Check_Scene_01.ks"  target="*3Week_Button"  cond="f.question==3"  ]
[return  ]
[s  ]
*Collect_Check

[s  ]
*1Week_Button

[tb_start_tyrano_code]
[button name="correct_01" storage="Test_Start_01.ks" target="quiz_01_scoring" graphic="../image/New_GUI/Test_In_UI/Correct_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Correct_Bt_02.png" width="261" height="122" x="1659" y="457"]

[iscript]


// 버튼 이미지 출력 함수
function displayButtonImage(item) {
var imgSrc = ""; // 이미지 소스 경로 변수 초기화

// 변수에 저장된 값에 따라 버튼 이미지 소스 경로 설정
switch (item) {
case 1:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/1_1_1.png";
break;
case 2:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png";
break;
case 3:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/1_3_1.png";
break;
case 4:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/1_4_1.png";
break;
case 5:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/1_5_1.png";
break;
}

return imgSrc;
}



f.Test_Item01 = displayButtonImage(f.Test_Item01);
f.Test_Item02 = displayButtonImage(f.Test_Item02);
f.Test_Item03= displayButtonImage(f.Test_Item03);
f.Test_Item04= displayButtonImage(f.Test_Item04);
f.Test_Item05= displayButtonImage(f.Test_Item05);


[endscript]

[html]
<style>
button:focus {
outline: none;
}
.button-box button .buttonimg-hover {
display: none;
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 0;
transition: opacity 0.2s ease-out;
}

.button-box button:hover .buttonimg-hover {
opacity: 1;
display: block;
}

.button-box button:hover .buttonimg {
opacity: 0;
}

.button-box button .buttonimg {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 1;
}

.button-box button:hover .buttonimg {
opacity: 0;
}
</style>
<script>
function doAction(buttonId) {
console.log("buttonId : "+ buttonId);
if (buttonId === 'button_01') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'block';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item01 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_02') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'block';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item02 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_03') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'block';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item03 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_04') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'block';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item04 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
window.TYRANO.kag.stat.f.select= 'TRUE';
} else{
window.TYRANO.kag.stat.f.select= 'FALSE';
}
} else if (buttonId === 'button_05'){
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'block';
if(window.TYRANO.kag.stat.f.Test_Item05 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
}
console.log("f.select_answer : "+ window.TYRANO.kag.stat.f.select);
}

const buttons1 = document.querySelectorAll("button");
buttons1.forEach((button) => {
button.addEventListener("click", function(event) {
doAction(event.target.id);
});
});</script>
<div class="button-box">
<button id="button_01" type="button" onclick="doAction('button_01')" style="position: absolute;top: 662px;left: 220px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_01_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_01_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_01checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_02" type="button" onclick="doAction('button_02')" style="position: absolute;top: 662px;left: 753px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_02_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_02_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_02checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_03" type="button" onclick="doAction('button_03')" style="position: absolute;top: 662px;left: 1286px;width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_03_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_03_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_03checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_04" type="button" onclick="doAction('button_04')" style="position: absolute;top: 809px;left: 220px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_04_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_04_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_04checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_05" type="button" onclick="doAction('button_05')" style="position: absolute;top: 809px;left: 753px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_05_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_05_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_05checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
</div>
[endhtml]

[iscript]
document.getElementById("button_01_01_img").setAttribute("src", f.Test_Item01);
document.getElementById("button_02_01_img").setAttribute("src", f.Test_Item02);
document.getElementById("button_03_01_img").setAttribute("src", f.Test_Item03);
document.getElementById("button_04_01_img").setAttribute("src", f.Test_Item04);
document.getElementById("button_05_01_img").setAttribute("src", f.Test_Item05);

document.getElementById("button_01_02_img").setAttribute("src", f.Test_Item01.replace("_1.png","_2.png"));
document.getElementById("button_02_02_img").setAttribute("src", f.Test_Item02.replace("_1.png","_2.png"));
document.getElementById("button_03_02_img").setAttribute("src", f.Test_Item03.replace("_1.png","_2.png"));
document.getElementById("button_04_02_img").setAttribute("src", f.Test_Item04.replace("_1.png","_2.png"));
document.getElementById("button_05_02_img").setAttribute("src", f.Test_Item05.replace("_1.png","_2.png"));
[endscript]



[_tb_end_tyrano_code]

[return  ]
*2Week_Button

[tb_start_tyrano_code]
[button name="correct_01" storage="Test_Start_01.ks" target="quiz_01_scoring" graphic="../image/New_GUI/Test_In_UI/Correct_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Correct_Bt_02.png" width="261" height="122" x="1659" y="457"]

[iscript]


// 버튼 이미지 출력 함수
function displayButtonImage(item) {
var imgSrc = ""; // 이미지 소스 경로 변수 초기화

// 변수에 저장된 값에 따라 버튼 이미지 소스 경로 설정
switch (item) {
case 1:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/2_1_1.png";
break;
case 2:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/2_2_1.png";
break;
case 3:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/2_3_1.png";
break;
case 4:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/2_4_1.png";
break;
case 5:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/2_5_1.png";
break;
}

return imgSrc;
}



f.Test_Item01 = displayButtonImage(f.Test_Item01);
f.Test_Item02 = displayButtonImage(f.Test_Item02);
f.Test_Item03= displayButtonImage(f.Test_Item03);
f.Test_Item04= displayButtonImage(f.Test_Item04);
f.Test_Item05= displayButtonImage(f.Test_Item05);
console.log("f.Test_Item01 : "+ f.Test_Item01);


[endscript]

[html]
<style>
button:focus {
outline: none;
}
.button-box button .buttonimg-hover {
display: none;
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 0;
transition: opacity 0.2s ease-out;
}

.button-box button:hover .buttonimg-hover {
opacity: 1;
display: block;
}

.button-box button:hover .buttonimg {
opacity: 0;
}

.button-box button .buttonimg {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 1;
}

.button-box button:hover .buttonimg {
opacity: 0;
}
</style>
<script>
function doAction(buttonId) {
console.log("buttonId : "+ buttonId);
if (buttonId === 'button_01') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'block';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item01 === 'data/image/New_GUI/Test_In_UI/Week_01/2_4_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_02') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'block';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item02 === 'data/image/New_GUI/Test_In_UI/Week_01/2_4_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_03') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'block';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item03 === 'data/image/New_GUI/Test_In_UI/Week_01/2_4_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_04') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'block';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item04 === 'data/image/New_GUI/Test_In_UI/Week_01/2_4_1.png'){
window.TYRANO.kag.stat.f.select= 'TRUE';
} else{
window.TYRANO.kag.stat.f.select= 'FALSE';
}
} else if (buttonId === 'button_05'){
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'block';
if(window.TYRANO.kag.stat.f.Test_Item05 === 'data/image/New_GUI/Test_In_UI/Week_01/2_4_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
}
console.log("f.select_answer : "+ window.TYRANO.kag.stat.f.select);
}

const buttons2 = document.querySelectorAll("button");
buttons2.forEach((button) => {
button.addEventListener("click", function(event) {
doAction(event.target.id);
});
});</script>
<div class="button-box">
<button id="button_01" type="button" onclick="doAction('button_01')" style="position: absolute;top: 662px;left: 220px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_01_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_01_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_01checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_02" type="button" onclick="doAction('button_02')" style="position: absolute;top: 662px;left: 753px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_02_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_02_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_02checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_03" type="button" onclick="doAction('button_03')" style="position: absolute;top: 662px;left: 1286px;width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_03_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_03_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_03checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_04" type="button" onclick="doAction('button_04')" style="position: absolute;top: 809px;left: 220px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_04_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_04_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_04checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_05" type="button" onclick="doAction('button_05')" style="position: absolute;top: 809px;left: 753px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_05_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_05_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_05checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
</div>
[endhtml]

[iscript]
document.getElementById("button_01_01_img").setAttribute("src", f.Test_Item01);
document.getElementById("button_02_01_img").setAttribute("src", f.Test_Item02);
document.getElementById("button_03_01_img").setAttribute("src", f.Test_Item03);
document.getElementById("button_04_01_img").setAttribute("src", f.Test_Item04);
document.getElementById("button_05_01_img").setAttribute("src", f.Test_Item05);

document.getElementById("button_01_02_img").setAttribute("src", f.Test_Item01.replace("_1.png","_2.png"));
document.getElementById("button_02_02_img").setAttribute("src", f.Test_Item02.replace("_1.png","_2.png"));
document.getElementById("button_03_02_img").setAttribute("src", f.Test_Item03.replace("_1.png","_2.png"));
document.getElementById("button_04_02_img").setAttribute("src", f.Test_Item04.replace("_1.png","_2.png"));
document.getElementById("button_05_02_img").setAttribute("src", f.Test_Item05.replace("_1.png","_2.png"));
[endscript]



[_tb_end_tyrano_code]

[return  ]
*3Week_Button

[tb_start_tyrano_code]
[button name="correct_01" storage="Test_Start_01.ks" target="quiz_01_scoring" graphic="../image/New_GUI/Test_In_UI/Correct_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Correct_Bt_02.png" width="261" height="122" x="1659" y="457"]

[iscript]


// 버튼 이미지 출력 함수
function displayButtonImage(item) {
var imgSrc = ""; // 이미지 소스 경로 변수 초기화

// 변수에 저장된 값에 따라 버튼 이미지 소스 경로 설정
switch (item) {
case 1:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/3_1_1.png";
break;
case 2:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/3_2_1.png";
break;
case 3:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/3_3_1.png";
break;
case 4:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/3_4_1.png";
break;
case 5:
imgSrc = "data/image/New_GUI/Test_In_UI/Week_01/3_5_1.png";
break;
}

return imgSrc;
}



f.Test_Item01 = displayButtonImage(f.Test_Item01);
f.Test_Item02 = displayButtonImage(f.Test_Item02);
f.Test_Item03= displayButtonImage(f.Test_Item03);
f.Test_Item04= displayButtonImage(f.Test_Item04);
f.Test_Item05= displayButtonImage(f.Test_Item05);
console.log("f.Test_Item01 : "+ f.Test_Item01);


[endscript]

[html]
<style>
button:focus {
outline: none;
}
.button-box button .buttonimg-hover {
display: none;
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 0;
transition: opacity 0.2s ease-out;
}

.button-box button:hover .buttonimg-hover {
opacity: 1;
display: block;
}

.button-box button:hover .buttonimg {
opacity: 0;
}

.button-box button .buttonimg {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
opacity: 1;
}

.button-box button:hover .buttonimg {
opacity: 0;
}
</style>
<script>
function doAction(buttonId) {
console.log("buttonId : "+ buttonId);
if (buttonId === 'button_01') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'block';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item01 === 'data/image/New_GUI/Test_In_UI/Week_01/3_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_02') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'block';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item02 === 'data/image/New_GUI/Test_In_UI/Week_01/3_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_03') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'block';
con4.style.display = 'none';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item03 === 'data/image/New_GUI/Test_In_UI/Week_01/3_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
} else if (buttonId === 'button_04') {
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'block';
con5.style.display = 'none';
if(window.TYRANO.kag.stat.f.Test_Item04 === 'data/image/New_GUI/Test_In_UI/Week_01/3_2_1.png'){
window.TYRANO.kag.stat.f.select= 'TRUE';
} else{
window.TYRANO.kag.stat.f.select= 'FALSE';
}
} else if (buttonId === 'button_05'){
var con1 = document.getElementById("button_01checkimg");
var con2 = document.getElementById("button_02checkimg");
var con3 = document.getElementById("button_03checkimg");
var con4 = document.getElementById("button_04checkimg");
var con5 = document.getElementById("button_05checkimg");
con1.style.display = 'none';
con2.style.display = 'none';
con3.style.display = 'none';
con4.style.display = 'none';
con5.style.display = 'block';
if(window.TYRANO.kag.stat.f.Test_Item05 === 'data/image/New_GUI/Test_In_UI/Week_01/3_2_1.png'){
window.TYRANO.kag.stat.f.select = 'TRUE';
} else{
window.TYRANO.kag.stat.f.select = 'FALSE';
}
}
console.log("f.select_answer : "+ window.TYRANO.kag.stat.f.select);
}

const buttons3 = document.querySelectorAll("button");
buttons3.forEach((button) => {
button.addEventListener("click", function(event) {
doAction(event.target.id);
});
});</script>
<div class="button-box">
<button id="button_01" type="button" onclick="doAction('button_01')" style="position: absolute;top: 662px;left: 220px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_01_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_01_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_01checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_02" type="button" onclick="doAction('button_02')" style="position: absolute;top: 662px;left: 753px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_02_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_02_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_02checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_03" type="button" onclick="doAction('button_03')" style="position: absolute;top: 662px;left: 1286px;width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_03_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_03_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_03checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_04" type="button" onclick="doAction('button_04')" style="position: absolute;top: 809px;left: 220px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_04_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_04_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_04checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
<button id="button_05" type="button" onclick="doAction('button_05')" style="position: absolute;top: 809px;left: 753px;  width: 413px;height: 103px;background-color:transparent;border:none;"><img class="buttonimg" id = "button_05_01_img" src="" alt=""><img class="buttonimg-hover" id = "button_05_02_img" src="" alt="" style="position: absolute;width: 413px;height: 103px;"><img class="collect_bt" id = "button_05checkimg" src="data/image/New_GUI/Test_In_UI/Circle_Bt_01.png" alt="" style="position: absolute;top:0px;left: 0px; width: 408px;height: 94px;display: none;"></button>
</div>
[endhtml]

[iscript]
document.getElementById("button_01_01_img").setAttribute("src", f.Test_Item01);
document.getElementById("button_02_01_img").setAttribute("src", f.Test_Item02);
document.getElementById("button_03_01_img").setAttribute("src", f.Test_Item03);
document.getElementById("button_04_01_img").setAttribute("src", f.Test_Item04);
document.getElementById("button_05_01_img").setAttribute("src", f.Test_Item05);

document.getElementById("button_01_02_img").setAttribute("src", f.Test_Item01.replace("_1.png","_2.png"));
document.getElementById("button_02_02_img").setAttribute("src", f.Test_Item02.replace("_1.png","_2.png"));
document.getElementById("button_03_02_img").setAttribute("src", f.Test_Item03.replace("_1.png","_2.png"));
document.getElementById("button_04_02_img").setAttribute("src", f.Test_Item04.replace("_1.png","_2.png"));
document.getElementById("button_05_02_img").setAttribute("src", f.Test_Item05.replace("_1.png","_2.png"));
[endscript]



[_tb_end_tyrano_code]

[return  ]
