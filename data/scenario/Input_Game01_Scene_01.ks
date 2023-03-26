[_tb_system_call storage=system/_Input_Game01_Scene_01.ks]

[mask_off  time="1"  effect="fadeOut"  ]
[bg  time="1"  method="crossfade"  storage="123.png"  ]
[tb_start_tyrano_code]
[html]
<div id="box" style="position:absolute; top: 200px; left: 400px; width: 200px; height: 50px; background-color: blue;">
<p id="percentage" style="color: white; text-align: center; margin-top: 15px;">0%</p>
</div>

<div style="position:absolute; top: 400px; left: 400px; width: 200px; height: 50px; background-color: white;">
<button id="button">Roll the dice</button>
<p id="result"></p>
</div>
<img src="./data/fgimage/chara/112444.gif" id="container" style="position:absolute; top: 200px; left: 400px; width:100px; height:100px; border-radius: 100%;  background-color: white;"/>

</div>
[endhtml]
[_tb_end_tyrano_code]

[iscript]
let percent = 0;
var box = document.getElementById("box");
var percentage = document.getElementById("percentage");
var button = document.getElementById("button");
var container = document.getElementById("container");
box.addEventListener("click", () => {
percent++;
percentage.innerText = percent + "앙기모띠";
});
button.addEventListener("click", () => {
const resultElem = document.getElementById("result");
const roll = Math.floor(Math.random() * 6) + 1;
resultElem.innerText = "You rolled a " + roll;
const containerLeft = parseInt(container.style.left);
const newLeft = containerLeft + (roll * 10);
container.style.left = newLeft + "px";
});
document.addEventListener("keydown", event => {
const containerLeft = parseInt(container.style.left);
const containerTop = parseInt(container.style.top);
let leftDelta = 0;
let topDelta = 0;
switch (event.key) {
case "ArrowRight":
leftDelta = 50;
break;
case "ArrowDown":
topDelta = 50;
break;
case "ArrowLeft":
leftDelta = -50;
break;
case "ArrowUp":
topDelta = -50;
break;
default:
return; // Exit if a non-arrow key is pressed
}
event.preventDefault(); // Prevent default scrolling behavior on arrow keys
container.style.left = containerLeft + leftDelta + "px";
container.style.top = containerTop + topDelta + "px";
});
[endscript]

