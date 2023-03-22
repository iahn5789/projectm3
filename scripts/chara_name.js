window.addEventListener('load', function() {

  const observer = new MutationObserver(mutations => {
  mutations.forEach(mutation => {
    console.log("@@@@@@@");
    if (mutation.target.innerText === '전대용') {
      mutation.target.style.color = 'gray';
    } else if (mutation.target.innerText === '강여진') {
      mutation.target.style.color = 'yellow';
    } else if (mutation.target.innerText === '진다영') {
      mutation.target.style.color = 'pink';
    } else if (mutation.target.innerText === '설나희') {
      mutation.target.style.color = 'blue';
    }else {
      mutation.target.style.color = "white"
    } 
  });
});
setTimeout(()=>{const chara_name = document.querySelector('.chara_name_area');
console.log('!!!!', chara_name);

observer.observe(chara_name, { childList: true, subtree: true  });

  }, 2000)

});

