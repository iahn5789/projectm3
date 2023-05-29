/*
    タイムアウト用関数
*/
function timeout(label) {
    if ($("#time_limit").length) {
        $("#time_limit").remove();
    }
    TYRANO.kag.ftag.startTag("jump", { target: label });
}

/*
    インターバルの設定
*/
function interval(time, label, pm) {
    TYRANO.kag.variable.tf.intervalId = setInterval(
        function () {
            update();

            TYRANO.kag.ftag.startTag("eval", {
                exp: "f.testTime = f.testTime-1"
            });
            pm.timeText = window.TYRANO.kag.stat.f.testTime;
            TYRANO.kag.ftag.startTag("free", { name: pm.ptextname, layer: pm.textlayer });
            TYRANO.kag.ftag.startTag("ptext", {
                layer: pm.textlayer,
                name: pm.ptextname,
                text: pm.timeText,
                x: pm.posXtext,
                y: pm.posYtext,
                size: pm.textsize,
                face: pm.textface,
                color: pm.ptextcolor,
                align: pm.textalign,
                zindex: pm.textzindex,
                overwrite: "false",
            });
            time = document.getElementById("time_limit");
            if (time.value == 0) {
                if (TYRANO.kag.variable.tf.intervalId) {
                    clearInterval(TYRANO.kag.variable.tf.intervalId);
                    delete TYRANO.kag.variable.tf.intervalId;
                }
                timeout(label);
            }
        },
        1000
    )
}

/*
    progressバーの値更新用
*/
function update() {
    time = document.getElementById("time_limit");
    time.value--;

    if (time.value == 66) {
        time.classList.add("-warning");
    } else if (time.value == 33) {
        time.classList.remove("-warning");
        time.classList.add("-denger");
    } else if (time.value == 0) {
        time.classList.remove("-denger");
    }
}

/*
    [time_limit]

    時間制限バーを表示します
*/
TYRANO.kag.ftag.master_tag.time_limit = {
    vital: ["label"],
    pm: {
        label: "",
        posX: 100,
        posY: 100,
        width: 1000,
        height: 100,
        time: 1000000,
        barcolor: "",
        gagecolor: "",
        warningcolor: "",
        dengercolor: "",
        layer: "2",
        posXtext: 100,
        posYtext: 100,
        textsize: "",
        ptextcolor: "",
        textface: "",
        textwidth: "",
        textalign: "left",
        timeText: "",
        ptextname: "",
        textlayer: "0",
        textzindex: "9999",
    },
    start: function (pm) {
        html = "<progress id='time_limit' value=" + pm.time / 1000 + " max=" + pm.time / 1000 + " min=0></progress>";
        "" == pm.barcolor ? pm.barcolor = $.convertColor(that.kag.stat.font.color) : pm.barcolor = $.convertColor(pm.barcolor);
        "" == pm.gagecolor ? pm.gagecolor = $.convertColor(that.kag.stat.font.color) : pm.gagecolor = $.convertColor(pm.gagecolor);
        "" == pm.warningcolor ? pm.warningcolor = $.convertColor(that.kag.stat.font.color) : pm.warningcolor = $.convertColor(pm.warningcolor);
        "" == pm.dengercolor ? pm.dengercolor = $.convertColor(that.kag.stat.font.color) : pm.dengercolor = $.convertColor(pm.dengercolor);
        css = {
            "position": "absolute",
            "top": pm.posX + 'px',
            "left": pm.posY + 'px',
            "width": pm.width + 'px',
            "height": pm.height + 'px'
        };

        progress = $(html);
        progress.css(css);

        var style = document.createElement('style');
        style.innerHTML = 'progress[value]::-webkit-progress-bar { background-color: ' + pm.barcolor + '; }';
        document.getElementsByTagName('head')[0].appendChild(style);

        var style = document.createElement('style');
        style.innerHTML = 'progress[value]::-webkit-progress-value { background-color: ' + pm.gagecolor + '; }';
        document.getElementsByTagName('head')[0].appendChild(style);

        var style = document.createElement('style');
        style.innerHTML = 'progress[value].-denger::-webkit-progress-value { background-color: ' + pm.dengercolor + '; }';
        document.getElementsByTagName('head')[0].appendChild(style);

        var style = document.createElement('style');
        style.innerHTML = 'progress[value].-warning::-webkit-progress-value { background-color: ' + pm.warningcolor + '; }';
        document.getElementsByTagName('head')[0].appendChild(style);

        TYRANO.kag.ftag.startTag("ptext", {
            layer: pm.textlayer,
            name: pm.ptextname,
            text: pm.timeText,
            x: pm.posXtext,
            y: pm.posYtext,
            size: pm.textsize,
            face: pm.textface,
            color: pm.ptextcolor,
            align: pm.textalign,
            zindex: pm.textzindex,
            overwrite: "false",
        });

        $("." + pm.layer + "_fore").append(progress);

        interval(pm.time, pm.label, pm);
        TYRANO.kag.ftag.nextOrder();
    }
}

/*
    [clr_time_limit]

    制限時間バーを非表示にします
*/
TYRANO.kag.ftag.master_tag.clr_time_limit = {
    vital: [],
    pm: {
        ptextname: "",
        textlayer: "0",
    },
    start: function (pm) {
        if ($("#time_limit").length) {
            $("#time_limit").remove();
        }
        if (TYRANO.kag.variable.tf.intervalId) {
            clearInterval(TYRANO.kag.variable.tf.intervalId);
            delete TYRANO.kag.variable.tf.intervalId;
        }
        TYRANO.kag.ftag.nextOrder();
    }
}

const counteup = ($counter, max, pm) => {
    max = parseInt(max);
    let now = parseInt(pm.startnumber);
    const handle = setInterval(() => {
      $counter.innerHTML = Math.ceil(max - now);
      console.log("$counter.innerHTML", $counter.innerHTML);
      TYRANO.kag.ftag.startTag("ptext", {
          layer: pm.textlayer,
          name: pm.textname,
          face: pm.textface,
          text: Math.floor(now),
          x: pm.posXtext,
          y: pm.posYtext,
          size: pm.textsize,
          color: pm.color,
          align: pm.textalign,
          width: pm.width,
          zindex: pm.textzindex,
          overwrite: "true"
      });
      // 목표수치에 도달하면 정지
      if (Math.floor(now) >= pm.endnumber) {
        clearInterval(handle);
      }
      
      // 증가되는 값이 계속하여 작아짐
      const step = $counter.innerHTML / 10;
      console.log("console.log > step", step);
      
      // 값을 적용시키면서 다음 차례에 영향을 끼침
      now += step;
    }, pm.time);
}
  
const countedown = ($counter, max, pm) => {
  max = parseInt(max);
  let now = parseInt(pm.startnumber);
  const handle = setInterval(() => {
    $counter.innerHTML = Math.floor(now - max);
    console.log("console.log > $counter.innerHTML", $counter.innerHTML);
    TYRANO.kag.ftag.startTag("ptext", {
        layer: pm.textlayer,
        name: pm.textname,
        face: pm.textface,
        text: Math.floor(now),
        x: pm.posXtext,
        y: pm.posYtext,
        size: pm.textsize,
        color: pm.color,
        align: pm.textalign,
        width: pm.width,
        zindex: pm.textzindex,
        overwrite: "true"
    });
  
    // 목표수치에 도달하면 정지
    if (Math.floor(now) <= pm.endnumber) {
      clearInterval(handle);
    }
    
    // 증가되는 값이 계속하여 작아짐
    const step = $counter.innerHTML / 10;
    
    // 값을 적용시키면서 다음 차례에 영향을 끼침
    now -= step;
  }, parseInt(pm.time));
}

TYRANO.kag.ftag.master_tag.change_number = {
    vital: [],
    pm: {
        textlayer: 0,
        textname: "",
        textface: "",
        time: 50,
        startnumber: "",
        endnumber: "",
        posXtext: "",
        posYtext: "",
        color: "",
        textzindex: "",
        textsize: "",
        width: "",
        textalign: "left",
        delay: "0"


    },
    start: function (pm) {
        pm.endnumber=parseInt(pm.startnumber) +  parseInt(window.TYRANO.kag.stat.f.change_number);
        console.log("console.log > pm.endnumber : ",pm.endnumber)
        TYRANO.kag.ftag.startTag("ptext", {
            layer: pm.textlayer,
            name: pm.textname,
            face: pm.textface,
            text: pm.startnumber,
            x: pm.posXtext,
            y: pm.posYtext,
            size: pm.textsize,
            color: pm.color,
            align: pm.textalign,
            zindex: pm.textzindex,
            width: pm.width,
            overwrite: "false"
        });
        var $counter = document.getElementsByClassName("Score");
        if (parseInt(pm.startnumber) > parseInt(pm.endnumber)) {
            console.log("console.log > downstart")
            setTimeout(() => countedown($counter, pm.endnumber, pm), pm.delay);
        }
        else {
            console.log("console.log > upstart")
            setTimeout(() => counteup($counter, pm.endnumber, pm), pm.delay);
        }
        // const $counter = document.querySelector(".count");
        // counteup($counter, max, pm)
    }
}