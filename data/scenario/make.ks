;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
[iscript]


  const observer = new MutationObserver(mutations => {
  mutations.forEach(mutation => {
    if (mutation.target.innerText === '전대용') {
      mutation.target.style.color = 'gray';
    } else if (mutation.target.innerText === '강여진') {
      mutation.target.style.color = '#FFA800';
    } else if (mutation.target.innerText === '진다영') {
      mutation.target.style.color = '#FF8EE9';
    } else if (mutation.target.innerText === '설나희') {
      mutation.target.style.color = '#4B7EFF';
    }else {
      mutation.target.style.color = 'white';
    } 
  });
});


// MutationObserver를 생성합니다.
const config_observer = new MutationObserver(mutations => {
  mutations.forEach(mutation => {
    if (mutation.type === "attributes" && mutation.attributeName === "style") {
      // 배경 이미지를 가진 div를 선택합니다.
      const backgroundDiv = document.querySelector('div.layer.base_fore.layer_fore.layer_camera[style*="background-image"][style*="./data/bgimage/BGI/Common_Title_Screen.jpg"]');
      
      // 버튼 이미지를 선택합니다.
      const buttonImg = document.querySelector('img.fixlayer.config.event-setting-element');
      
      // buttonImg가 존재할 경우에만 처리합니다.
      if (buttonImg) {
        if (backgroundDiv) {
          // 배경 이미지가 있을 경우 버튼을 보이도록 합니다.
          buttonImg.style.visibility = "visible";
        } else {
          // 배경 이미지가 없을 경우 버튼을 숨깁니다.
          buttonImg.style.visibility = "hidden";
        }
      }
    }
  });
});








setTimeout(()=>{const chara_name = document.querySelector('.chara_name_area');

observer.observe(chara_name, { childList: true, subtree: true  });

config_observer.observe(document, {
  attributes: true,
  childList: true,
  subtree: true
});


  }, 100)




  setTimeout(()=>{


    let is_msg_visible;
    
    var hideBtn = document.createElement("img");
    hideBtn.classList.add("fixlayer", "hide_btn");
    hideBtn.src = "data/image/New_GUI/Menu_UI/Hide_Button_01.png"
    hideBtn.style.width = "176px";
    hideBtn.style.height = "54px";
    hideBtn.style.position = "absolute";
    if(document.querySelector(".layer.message0_fore.layer_fore").getAttribute("l_visible") === 'true')
    {
      hideBtn.classList.add("fixlayer", "hide_btn");
    }
    else
    {
    hideBtn.classList.add("fixlayer", "hide_btn","hidden");
    hideBtn.style.display = "none";
    }
    hideBtn.style.top = "15px";
    hideBtn.style.zIndex = "9999";
    hideBtn.style.left = "1725px";
    // 동그라미 div를 body 요소에 추가합니다.
    document.body.appendChild(hideBtn);


    // // esc 버튼 누르면 오른쪽아래 메뉴 사라졌다 나타나는 기능 
    const allfixLayers = document.getElementsByClassName('fixlayer');
    const fixLayers = Array.from(allfixLayers).filter(element => element.getAttribute('src').includes('Menu_UI'));


    
    for (let i = 0; i < fixLayers.length; i++) {
   
      fixLayers[i].style.transition = 'transform 0.3s ease-in-out';
    }
    
    document.addEventListener('keydown', function(event) {
      if (event.key === 'Escape') {
        is_msg_visible = document.querySelector(".layer.message0_fore.layer_fore").getAttribute("l_visible");
        if (is_msg_visible==='true'){

          for (let i = 0; i < fixLayers.length; i++) {
            if (fixLayers[i].classList.contains('hidden')) {
              fixLayers[i].classList.remove('hidden');
              fixLayers[i].style.transform = 'translateX(0)';
            } else {
              fixLayers[i].classList.add('hidden');
              fixLayers[i].style.transform = 'translateX(250%)';
            }  
          }
        }
      }
    });

// Add click event listeners to hide the fixLayers again when clicking outside of them
document.addEventListener('click', function(event) {
  if (!event.target.closest('.fixlayer') && !event.target.classList.contains('fixlayer')) {
    for (let i = 0; i < fixLayers.length; i++) {
      if (!fixLayers[i].classList.contains('hidden') && fixLayers[i].src.includes('Menu_UI')) {
        fixLayers[i].classList.add('hidden');
        fixLayers[i].style.display = 'block';
        fixLayers[i].style.transform = 'translateX(250%)';
      }
    }
  }
});

    // // esc 버튼 기능 여기까지



;       // Get the Save button element by its name attribute
;   const menuButtons = document.getElementsByClassName("menu_button");
;   const roleButtons = document.getElementsByClassName("rol_button");
;   const layerMenu = document.getElementsByClassName("layer_menu")[0];
;   const gameLayer = document.getElementsByClassName("root_layer_game")[0];
;   const message_inner = document.getElementsByClassName("message_inner")[0];
;   const message_outer = document.getElementsByClassName("message_outer")[0];
;   const chara_name_area = document.getElementsByClassName("chara_name_area")[0];
;   // Add a click event listener to the Save button

;   for(let i = 0 ; i< menuButtons.length; i++){
    
; if(i !== 5){
;     menuButtons[i].addEventListener("click", function() {
;       // Get the root_layer_game element by its class name
    

;       // Add the "filter: blur(5px)" style to the game layer
;       gameLayer.style.filter = "blur(5px)";
;       message_inner.style.filter = "blur(5px)";
;       message_outer.style.filter = "blur(5px)";
;       chara_name_area.style.filter = "blur(5px)";
;       // roleButtons.style.filter = "blur(5px)";


;       for(let j = 0 ; j < menuButtons.length; j++){

;         menuButtons[j].style.filter = "blur(5px)";
        
;       }

      
;       for(let k = 0 ; k < roleButtons.length; k++){

;         roleButtons[k].style.filter = "blur(5px)";
        
;       }

;     });
;   }
; }

; // const roleButtonsArray = Array.from(document.querySelectorAll(".rol_button"));

; // // Apply a click event listener to each button
; // roleButtonsArray.forEach(function (button, index) {
; //   button.addEventListener("click", function () {
; //     console.log("Button " + index + " was clicked");
; //     // Add your code to handle the button click event here
; //   });
; // });


; layerMenu.addEventListener("click",  function(event) {

;     // 클릭 이벤트를 발생시킨 요소가 menu_close 버튼인지 체크합니다.
;     if (event.target.src && event.target.src.includes('UI_Close_Bt_02.png','Load_Bt_01')) {
;       gameLayer.style.filter = "";
;       message_inner.style.filter = "";
;       message_outer.style.filter = "";
;       chara_name_area.style.filter = "";

;       for(let j = 0 ; j < menuButtons.length; j++){

;         menuButtons[j].style.filter = "";

;       }

;       for(let k = 0 ; k < roleButtons.length; k++){

;         roleButtons[k].style.filter = "";
        
;       }

      

;     }
;     // else if (event.target.src && event.target.src.includes('UI_Close_Bt_02.png')) { 
;     //   gameLayer.style.filter = "";
;     //   message_inner.style.filter = "";
;     //   message_outer.style.filter = "";
;     //   chara_name_area.style.filter = "";
    
    
;     //   for(let j = 0 ; j < menuButtons.length; j++){
    
;     //     menuButtons[j].style.filter = "";
    
    
;     //   }
    
    
;     // } 
    


; })




;   }, 100)









[endscript]
;
;return 必須
[return]