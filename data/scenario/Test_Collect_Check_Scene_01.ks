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

[call  storage="Test_Collect_Check_Scene_01.ks"  target="*1Week_Button"  cond="f.Day==1"  ]
[call  storage="Test_Collect_Check_Scene_01.ks"  target="*2Week_Button"  cond="f.Day==2"  ]
[call  storage="Test_Collect_Check_Scene_01.ks"  target="*3Week_Button"  cond="f.Day==3"  ]
[return  ]
[s  ]
*Collect_Check

[s  ]
*1Week_Button

[tb_start_tyrano_code]
[button name="correct_01" storage="Test_Start_01.ks" target="correct_01" graphic="../image/New_GUI/Test_In_UI/Correct_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Correct_Bt_02.png" width="379" height="91" x="774" y="931"]

[html]
<button id="button_01" type="button" onclick="doAction('button_01')" style="position: absolute;top: 604px;left: 488px;width: 208px;height: 62px;background-color:transparent;border:none;" onmouseover="convertHoverImage('button_01')" onmouseout="getHoverOutImage('button_01')"><img id = "button_01_img" src="" alt=""></button>
<button id="button_02" type="button" onclick="doAction('button_02')" style="position: absolute;top: 604px;left: 856px;width: 208px;height: 62px;background-color:transparent;border:none;"><img id = "button_02_img" src="" alt=""></button>
<button id="button_03" type="button" onclick="doAction('button_03')" style="position: absolute;top: 604px;left: 1224px;width: 208px;height: 62px;background-color:transparent;border:none;"><img id = "button_03_img" src="" alt=""></button>
<button id="button_04" type="button" onclick="doAction('button_04')" style="position: absolute;top: 736px;left: 488px;width: 208px;height: 62px;background-color:transparent;border:none;"><img id = "button_04_img" src="" alt=""></button>
<button id="button_05" type="button" onclick="doAction('button_05')" style="position: absolute;top: 736px;left: 856px;width: 208px;height: 62px;background-color:transparent;border:none;"><img id = "button_05_img" src="" alt=""></button>
[endhtml]

[iscript]

function getHoverOutImage(buttonId) {
if (buttonId === "button_01") {
console.log("GetImageRoute : " + f.Test_Item01);
document.getElementById("button_01_img").src = f.Test_Item01;
} else if (buttonId === "button_02") {
console.log("GetImageRoute : " + f.Test_Item02);
document.getElementById("button_02_img").src = f.Test_Item02;
} else if (buttonId === "button_03") {
console.log("GetImageRoute : " + f.Test_Item03);
document.getElementById("button_03_img").src = f.Test_Item03;
} else if (buttonId === "button_04") {
console.log("GetImageRoute : " + f.Test_Item04);
document.getElementById("button_04_img").src = f.Test_Item04;
} else if (buttonId === "button_05") {
console.log("GetImageRoute : " + f.Test_Item05);
document.getElementById("button_05_img").src = f.Test_Item05;
}
}

function convertHoverImage(buttonId){
var after_img;
console.log("ConvertHoverImage input : " + buttonId);
if (buttonId === "button_01") {
console.log("ConvertHoverImage: " + f.Test_Item01);
after_img = f.Test_Item01.replace("_1.png","_2.png");
} else if (buttonId === "button_02") {
console.log("ConvertHoverImage: " + f.Test_Item02);
after_img = f.Test_Item02.replace("_1.png","_2.png");
} else if (buttonId === "button_03") {
console.log("ConvertHoverImage: " + f.Test_Item03);
after_img = f.Test_Item03.replace("_1.png","_2.png");
} else if (buttonId === "button_04") {
console.log("ConvertHoverImage: " + f.Test_Item04);
after_img = f.Test_Item04.replace("_1.png","_2.png");
} else if (buttonId === "button_05") {
console.log("ConvertHoverImage: " + f.Test_Item05);
after_img = f.Test_Item05.replace("_1.png","_2.png");
}
console.log("ConvertHoverImage_ex : " + return_img);
document.getElementById(buttonId + "_img").src = after_img;
}

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

function doAction(buttonId) {
if (buttonId === 'button_01_img') {
if(f.Test_Item01 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
f.select_answer = 'true';
} else{
f.select_answer = 'false';
}
} else if (buttonId === 'button_02_img') {
if(f.Test_Item02 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
f.select_answer = 'true';
} else{
f.select_answer = 'false';
}
} else if (buttonId === 'button_03_img') {
if(f.Test_Item03 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
f.select_answer = 'true';
} else{
f.select_answer = 'false';
}
} else if (buttonId === 'button_04_img') {
if(f.Test_Item04 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
f.select_answer = 'true';
} else{
f.select_answer = 'false';
}
} else if (buttonId === 'button_05_img'){
if(f.Test_Item05 === 'data/image/New_GUI/Test_In_UI/Week_01/1_2_1.png'){
f.select_answer = 'true';
} else{
f.select_answer = 'false';
}
}
console.log("f.select_answer : "+ f.select_answer);
}

const buttons = document.querySelectorAll("button");
buttons.forEach((button) => {
button.addEventListener("click", function(event) {
doAction(event.target.id);
});
});
f.Test_Item01 = displayButtonImage(f.Test_Item01);
f.Test_Item02 = displayButtonImage(f.Test_Item02);
f.Test_Item03= displayButtonImage(f.Test_Item03);
f.Test_Item04= displayButtonImage(f.Test_Item04);
f.Test_Item05= displayButtonImage(f.Test_Item05);

document.getElementById("button_01_img").setAttribute("src", f.Test_Item01);
document.getElementById("button_02_img").setAttribute("src", f.Test_Item02);
document.getElementById("button_03_img").setAttribute("src", f.Test_Item03);
document.getElementById("button_04_img").setAttribute("src", f.Test_Item04);
document.getElementById("button_05_img").setAttribute("src", f.Test_Item05);

[endscript]

[_tb_end_tyrano_code]

[return  ]
*2Week_Button

[tb_start_tyrano_code]
[cm]

[button name="01_01_01" storage="Test_Start_01.ks" target="01_01_01" graphic="../image/New_GUI/Test_In_UI/Week_01/1_1_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_1_2.png" width="208" height="62" x="488" y="604" ]
[button name="01_01_02" storage="Test_Start_01.ks" target="01_01_02" graphic="../image/New_GUI/Test_In_UI/Week_01/1_2_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_2_2.png" width="208" height="62" x="856" y="604"]
[button name="01_01_03" storage="Test_Start_01.ks" target="01_01_03" graphic="../image/New_GUI/Test_In_UI/Week_01/1_3_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_3_2.png" width="208" height="62" x="1224" y="604"]
[button name="01_01_04" storage="Test_Start_01.ks" target="01_01_04" graphic="../image/New_GUI/Test_In_UI/Week_01/1_4_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_4_2.png" width="208" height="62" x="488" y="736"]
[button name="01_01_05" storage="Test_Start_01.ks" target="01_01_05" graphic="../image/New_GUI/Test_In_UI/Week_01/1_5_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_5_2.png" width="208" height="62" x="856" y="736"]
[button name="correct_01" storage="Test_Start_01.ks" target="correct_01" graphic="../image/New_GUI/Test_In_UI/Correct_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Correct_Bt_02.png" width="379" height="91" x="774" y="931"]
[_tb_end_tyrano_code]

[return  ]
*3Week_Button

[tb_start_tyrano_code]
[cm]

[button name="01_01_01" storage="Test_Start_01.ks" target="01_01_01" graphic="../image/New_GUI/Test_In_UI/Week_01/1_1_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_1_2.png" width="208" height="62" x="488" y="604" ]
[button name="01_01_02" storage="Test_Start_01.ks" target="01_01_02" graphic="../image/New_GUI/Test_In_UI/Week_01/1_2_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_2_2.png" width="208" height="62" x="856" y="604"]
[button name="01_01_03" storage="Test_Start_01.ks" target="01_01_03" graphic="../image/New_GUI/Test_In_UI/Week_01/1_3_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_3_2.png" width="208" height="62" x="1224" y="604"]
[button name="01_01_04" storage="Test_Start_01.ks" target="01_01_04" graphic="../image/New_GUI/Test_In_UI/Week_01/1_4_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_4_2.png" width="208" height="62" x="488" y="736"]
[button name="01_01_05" storage="Test_Start_01.ks" target="01_01_05" graphic="../image/New_GUI/Test_In_UI/Week_01/1_5_1.png" enterimg="../image/New_GUI/Test_In_UI/Week_01/1_5_2.png" width="208" height="62" x="856" y="736"]
[button name="correct_01" storage="Test_Start_01.ks" target="correct_01" graphic="../image/New_GUI/Test_In_UI/Correct_Bt_01.png" enterimg="../image/New_GUI/Test_In_UI/Correct_Bt_02.png" width="379" height="91" x="774" y="931"]
[_tb_end_tyrano_code]

[return  ]
