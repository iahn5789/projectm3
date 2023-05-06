/*
    タイムアウト用関数
*/
function timeout(label) {
    if($("#time_limit").length) {
        $("#time_limit").remove();
    }
    TYRANO.kag.ftag.startTag("jump", {target: label});
}

/*
    インターバルの設定
*/
function interval(time, label) {
    TYRANO.kag.variable.tf.intervalId = setInterval(
        function() {
          update();
          time = document.getElementById("time_limit");
          if (time.value == 0) {
              if(TYRANO.kag.variable.tf.intervalId) {
                clearInterval(TYRANO.kag.variable.tf.intervalId);
                delete TYRANO.kag.variable.tf.intervalId;
              }
              timeout(label);
          }
        },
        time/100
    )
}

/*
    progressバーの値更新用
*/
function update() {
    time = document.getElementById("time_limit");
    time.value--;
    
    if(time.value == 50) {
        time.classList.add("-warning");
    } else if(time.value == 25) {
        time.classList.remove("-warning");
        time.classList.add("-denger");
    } else if(time.value == 0) {
        time.classList.remove("-denger");
    }
}

/*
    [time_limit]

    時間制限バーを表示します
*/
TYRANO.kag.ftag.master_tag.time_limit = {
    vital:["label"],
    pm: {
        posX: 0,
        posY: 0,
        width: 100,
        height: 10,
        time: 1000,
        label: "",
        layer: "0",
    },
    start: function(pm) {
        html = "<progress id='time_limit' value=100 max=100 min=0></progress>";
        css = {
            "position": "absolute",
            "top": pm.posX + 'px',
            "left": pm.posY + 'px',
            "width": pm.width + 'px',
            "height": pm.height + 'px'
        };

        progress = $(html);
        progress.css(css);

        // $(".2_fore").append(progress);
        console.log("." + pm.layer + "_fore");
        $("." + pm.layer + "_fore").append(progress);
        interval(pm.time, pm.label);
        TYRANO.kag.ftag.nextOrder();
    }
}

/*
    [clr_time_limit]

    制限時間バーを非表示にします
*/
TYRANO.kag.ftag.master_tag.clr_time_limit = {
    vital:[],
    pm: {},
    start: function(pm) {
        if($("#time_limit").length) {
            $("#time_limit").remove();
        }
        if(TYRANO.kag.variable.tf.intervalId) {
            clearInterval(TYRANO.kag.variable.tf.intervalId);
            delete TYRANO.kag.variable.tf.intervalId;
        }
        TYRANO.kag.ftag.nextOrder();
    }
}