[_tb_system_call storage=system/_Input_Game04_Scene_01.ks]

[mask_off  time="1"  effect="fadeOut"  ]
[bg  time="1"  method="crossfade"  storage="Common_White_01.png"  ]
[tb_start_tyrano_code]
[html]

<style>

body{
font-family: Arial, Helvetica, sans-serif;
margin: 0;
padding: 0;
}
.image:hover{
cursor: pointer;
-ms-transform: scale(1.5); /* IE 9 */
-webkit-transform: scale(1.5); /* Safari 3-8 */
transform: scale(1.5);
}

.footer-section{
text-align: center;
margin-top: 40px;
color: #ababab;
font-size: 12px;
}
.footer-section p{
text-decoration: none;
color: #3d83df;
}
</style>
<div id="Games" class="mt-5">
<div class="container">
<p class="text-dark"><strong>Game </strong> </p>
<div class="row">
<div class="col">
<div class="card bg-white pb-2">
<div class="row mx-auto display-4">
<p>choose Rock, Scissors or Paper</p>
</div>
<div id="user" class="d-flex justify-content-around box">
<div id="rock" class="image">
<img id="img1" width="100px" src="data/image/Game_img/1.png" class="images">
</div>
<div id="scissors" class="image">
<img id="img1" width="100px" src="data/image/Game_img/2.png" class="images">
</div>
<div id="paper" class="image">
<img id="img1" width="100px" src="data/image/Game_img/0.png" class="images">
</div>
</div>
</div>
<br>
<div class="card bg-white pb-2">
<div class="d-flex justify-content-around display-4">
<div>You</div>
<span id="score-user">0</span>
<span>:</span>
<span id="score-computer">0</span>
<div>Compter</div>
</div>
</div>
<div class="card bg-white pb-2">
<br>
<div class="row mx-auto">
<h3 class="result-box"></h3>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="container mt-4">
<div class="row">
<div class="col">
<br>
<p class="text-dark"> <strong> Result</strong></p>
<div class="card bg-white px-4">
<div id='resultUser' class="d-flex justify-content-around">
<div>
<img class="img-gameU" width="100px" src=""/>
</div>
<div id="">
<img class="img-gameC" width="100px" src=""/>
</div>
</div>
</div>
</div>
</div>
</div>
<footer>
<div class="container-fluid bg-light">
<div class="row">
<div class="col">
<div class="container">
<p class="text-dark py-2 text-center">website Designed By:Meriem Ferjani in 2018-2019</p>
</div>
</div>
</div>
</div>
</footer>

[endhtml]
[_tb_end_tyrano_code]

[iscript]
function PlayerUser(userrandom) {
document.querySelector(".img-gameU").src = `./data/image/Game_img/${userrandom}.png`;
return userrandom;
}
//function Playing computer
function PlayerComputer() {
var computerrandom = parseInt(Math.random() * 3);
document.querySelector(".img-gameC").src =`./data/image/Game_img/${computerrandom}.png`;
return computerrandom;
}
var scoreUser=0;
var scoreComputer=0;
var resultfin=document.querySelector(".result-box")
function testWin(Puser,Pcomputer){
if( (Puser===0 && Pcomputer===1)||(Puser===2 && Pcomputer===0)||(Puser===1 && Pcomputer===2)){
resultfin.innerHTML = "You Win";
scoreUser=scoreUser+1;
}
return scoreUser;
}
//function test lose
function computerService(Puser,Pcomputer) {
if( (Puser===0 && Pcomputer===2)||(Puser===2 && Pcomputer===1)||(Puser=== 1 && Pcomputer===0)){
resultfin.innerHTML = "You lose";
scoreComputer=scoreComputer+1;
}
return scoreComputer;
}
//function test draw
function testDraw(Puser,Pcomputer){
if( (Puser===0 && Pcomputer===0)||(Puser===1 && Pcomputer===1)||(Puser===2 && Pcomputer===2)){
return false;
}
}
var user=document.querySelector(".box");
var computer=document.querySelector(".box");
document.addEventListener("click", function(event){
if (event.target.className == "images") {
var pressedBtn = event.target
var selected = parseInt(pressedBtn.src.split("data/image/Game_img/")[1])
var Puser=PlayerUser(selected)
var Pcomputer=PlayerComputer(computer)
var result =testWin(Puser,Pcomputer);
var resComp =  computerService(Puser,Pcomputer)
document.querySelector("#score-user").innerHTML=result;
document.querySelector("#score-computer").innerHTML=resComp;
if(testDraw(Puser,Pcomputer)===false){
return (resultfin.innerHTML = "Draw")
}
}
});
[endscript]

[s  ]
