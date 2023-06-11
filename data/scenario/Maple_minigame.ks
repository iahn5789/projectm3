[_tb_system_call storage=system/_Maple_minigame.ks]

[bg  time="1000"  method="crossfade"  storage="Common_White_01.png"  ]
[tb_start_tyrano_code]
[html]

<div id="starcatch_wrapper" style="display: block;position: absolute;margin: auto;width: 300px;border-radius: 20px;padding: 20px;height: 200px;background: #2a2a2a; border-radius: 20px">
<div style="font-size: 60px; text-align: center">
<span id="starcatch_timer">5</span>
</div>
<div style="width:100%; height: 30px; background: #0000004f;">
<div id="starcatch_item" style="    position: absolute;display: inline-block;box-sizing: border-box;animation: linear infinite alternate;;animation-name: move_left_right;animation-duration: 2s;	animation-duration: leaner;">
<svg class="svg-inline--fa fa-star fa-w-18" style="color: #ffcc00; font-size: 24px;width: 1.125em;height: 1em;" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg="">
<path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
</svg>

</div>
<div id="starcatch_zone" style="position: absolute; display:inline-block; width: 26%; height:30px; background: #ffc1074d; left: 0; right: 0; margin: auto;">
</div>
</div>
<div class="col" style="text-align: center; margin-top: 8px;">
<button id="stop" name="stop" class="btn btn-success button-style">
멈춰!
</button>
</div>
</div>

[endhtml]

[iscript]
const myButton = document.getElementById('stop');
const myAnimation = document.getElementById('starcatch_item');

myButton.addEventListener('click', () => {
myAnimation.style.animationPlayState = 'paused';
});
[endscript]

[_tb_end_tyrano_code]

