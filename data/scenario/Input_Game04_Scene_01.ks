[_tb_system_call storage=system/_Input_Game04_Scene_01.ks]

[mask_off  time="1"  effect="fadeOut"  ]
[bg  time="1"  method="crossfade"  storage="Common_Black.jpg"  ]
[tb_start_tyrano_code]
[html]
<h1>Rock Paper Scissors</h1>
<p>Choose your weapon:</p>
<button id="rock">Rock</button>
<button id="paper">Paper</button>
<button id="scissors">Scissors</button>
<p id="result"></p>
<style>
body {
text-align: center;
font-size: 18px;
}

button {
font-size: 18px;
padding: 7px;
margin: 5px;
}

#computer {
width: 170px;
height: 280px;
background: url('./main.jpg') 0 0;
display: inline-block;
}

#init {
display: none;
}
</style>

[endhtml]
[iscript]
const weapons = ['rock', 'paper', 'scissors'];

function computerChoice() {
  const randomIndex = Math.floor(Math.random() * weapons.length);
  return weapons[randomIndex];
}

function playRound(playerChoice, computerChoice) {
  if (playerChoice === computerChoice) {
    return 'Tie!';
  } else if (
    (playerChoice === 'rock' && computerChoice === 'scissors') ||
    (playerChoice === 'paper' && computerChoice === 'rock') ||
    (playerChoice === 'scissors' && computerChoice === 'paper')
  ) {
    return 'You win!';
  } else {
    return 'Computer wins!';
  }
}

const rockButton = document.querySelector('#rock');
console.log("%%%%");
rockButton.addEventListener('click', () => {
  const result = playRound('rock', computerChoice());
  document.querySelector('#result').textContent = result;
});

const paperButton = document.querySelector('#paper');
console.log("$$$$");
paperButton.addEventListener('click', () => {
  const result = playRound('paper', computerChoice());
  document.querySelector('#result').textContent = result;
});

const scissorsButton = document.querySelector('#scissors');
console.log("####");
scissorsButton.addEventListener('click', () => {
  const result = playRound('scissors', computerChoice());
  document.querySelector('#result').textContent = result;
});

[endscript]

[_tb_end_tyrano_code]

[s  ]
