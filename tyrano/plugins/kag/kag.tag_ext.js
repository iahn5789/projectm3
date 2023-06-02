tyrano.plugin.kag.tag.loadjs = {
    vital: ["storage"],
    pm: {
        storage: ""
    },
    start: function(pm) {
        var that = this;
        $.getScript("./data/others/" + pm.storage, (function() {
            that.kag.ftag.nextOrder()
        }))
    }
};
tyrano.plugin.kag.tag.movie = {
    vital: ["storage"],
    pm: {
        storage: "",
        volume: "",
        skip: "false",
        mute: "false",
        bgmode: "false",
        loop: "false"
    },
    start: function(pm) {
        if ("pc" != $.userenv()) {
            this.kag.layer.showEventLayer();
            if ($.isTyranoPlayer()) this.playVideo(pm);
            else {
                this.kag.layer.showEventLayer();
                this.playVideo(pm);
                $(".tyrano_base").unbind("click.movie")
            }
        } else {
            "opera" == $.getBrowser() && (pm.storage = $.replaceAll(pm.storage, ".mp4", ".webm"));
            this.playVideo(pm)
        }
    },
    playVideo: function(pm) {
        var that = this,
            url = "./data/video/" + pm.storage,
            video = document.createElement("video");
        video.id = "bgmovie";
        video.src = url;
        "" != pm.volume ? video.volume = parseFloat(parseInt(pm.volume) / 100) : void 0 !== this.kag.config.defaultMovieVolume && (video.volume = parseFloat(parseInt(this.kag.config.defaultMovieVolume) / 100));
        video.style.backgroundColor = "black";
        video.style.position = "absolute";
        video.style.top = "0px";
        video.style.left = "0px";
        video.style.width = "100%";
        video.style.height = "100%";
        video.style.display = "none";
        video.autoplay = !0;
        video.autobuffer = !0;
        video.setAttribute("playsinline", "1");
        "true" == pm.mute && (video.muted = !0);
        if ("true" == pm.bgmode) {
            that.kag.tmp.video_playing = !0;
            video.style.zIndex = 0;
            "true" == pm.loop ? video.loop = !0 : video.loop = !1;
            video.addEventListener("ended", (function(e) {
                if (null == that.kag.stat.video_stack) {
                    that.kag.tmp.video_playing = !1;
                    if (1 == that.kag.stat.is_wait_bgmovie) {
                        that.kag.ftag.nextOrder();
                        that.kag.stat.is_wait_bgmovie = !1
                    }
                } else {
                    var video_pm = that.kag.stat.video_stack,
                        video2 = document.createElement("video");
                    video2.style.backgroundColor = "black";
                    video2.style.position = "absolute";
                    video2.style.top = "0px";
                    video2.style.left = "0px";
                    video2.style.width = "100%";
                    video2.style.height = "100%";
                    video2.autoplay = !0;
                    video2.autobuffer = !0;
                    "true" == video_pm.loop ? video2.loop = !0 : video2.loop = !1;
                    video2.setAttribute("playsinline", "1");
                    "true" == video_pm.mute && (video2.muted = !0);
                    video2.src = "./data/video/" + video_pm.storage;
                    video2.load();
                    var j_video2 = $(video2);
                    video2.play();
                    j_video2.css("z-index", -1);
                    $("#tyrano_base").append(j_video2);
                    video2.addEventListener("canplay", (function(event) {
                        var arg = arguments.callee;
                        j_video2.css("z-index", 1);
                        setTimeout((function() {
                            $("#bgmovie").remove();
                            video2.id = "bgmovie"
                        }), 100);
                        that.kag.stat.video_stack = null;
                        that.kag.tmp.video_playing = !0;
                        video2.removeEventListener("canplay", arg, !1)
                    }), !1);
                    video2.addEventListener("ended", arguments.callee)
                }
            }))
        } else {
            video.style.zIndex = 199999;
            video.addEventListener("ended", (function(e) {
                $(".tyrano_base").find("video").remove();
                that.kag.ftag.nextOrder()
            }));
            "true" == pm.skip && $(video).on("click touchstart", (function(e) {
                $(video).off("click touchstart");
                $(".tyrano_base").find("video").remove();
                that.kag.ftag.nextOrder()
            }))
        }
        var j_video = $(video);
        j_video.css("opacity", 0);
        $("#tyrano_base").append(j_video);
        j_video.animate({
            opacity: "1"
        }, {
            duration: parseInt(pm.time),
            complete: function() {}
        });
        video.load();
        video.addEventListener("canplay", (function() {
            video.style.display = "";
            video.play()
        }))
    }
};
tyrano.plugin.kag.tag.bgmovie = {
    vital: ["storage"],
    pm: {
        storage: "",
        volume: "",
        loop: "true",
        mute: "false",
        time: "300",
        stop: "false"
    },
    start: function(pm) {
        pm.skip = "false";
        pm.bgmode = "true";
        this.kag.stat.current_bgmovie.storage = pm.storage;
        this.kag.stat.current_bgmovie.volume = pm.volume;
        if (0 == this.kag.tmp.video_playing) {
            this.kag.ftag.startTag("movie", pm);
            "false" == pm.stop && this.kag.ftag.nextOrder()
        } else {
            var video = document.getElementById("bgmovie");
            this.kag.stat.video_stack = pm;
            video.loop = !1;
            this.kag.ftag.nextOrder()
        }
    }
};
tyrano.plugin.kag.tag.wait_bgmovie = {
    vital: [],
    pm: {
        stop: "false"
    },
    start: function(pm) {
        if (1 == this.kag.tmp.video_playing) {
            var video = document.getElementById("bgmovie");
            this.kag.stat.is_wait_bgmovie = !0;
            video.loop = !1
        } else this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.stop_bgmovie = {
    vital: [],
    pm: {
        time: "300",
        wait: "true"
    },
    start: function(pm) {
        var that = this;
        that.kag.tmp.video_playing = !1;
        that.kag.stat.current_bgmovie.storage = "";
        that.kag.stat.current_bgmovie.volume = "";
        $(".tyrano_base").find("video").animate({
            opacity: "0"
        }, {
            duration: parseInt(pm.time),
            complete: function() {
                $(this).remove();
                "true" == pm.wait && that.kag.ftag.nextOrder()
            }
        });
        $(".tyrano_base").find("video").get(0) ? "false" == pm.wait && that.kag.ftag.nextOrder() : that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.showsave = {
    pm: {},
    start: function(pm) {
        var that = this;
        that.kag.stat.load_auto_next = !0;
        this.kag.menu.displaySave((function() {
            that.kag.stat.load_auto_next = !1;
            that.kag.ftag.nextOrder()
        }))
    }
};
tyrano.plugin.kag.tag.showload = {
    pm: {},
    start: function(pm) {
        var that = this;
        this.kag.menu.displayLoad((function() {
            that.kag.ftag.nextOrder()
        }))
    }
};
tyrano.plugin.kag.tag.showmenu = {
    pm: {},
    start: function(pm) {
        this.kag.menu.showMenu();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.showmenubutton = {
    pm: {},
    start: function(pm) {
        $(".button_menu").show();
        this.kag.stat.visible_menu_button = !0;
        this.kag.config.configVisible = "true";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.hidemenubutton = {
    pm: {},
    start: function(pm) {
        $(".button_menu").hide();
        this.kag.stat.visible_menu_button = !1;
        this.kag.config.configVisible = "false";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.skipstart = {
    pm: {},
    start: function(pm) {
        if (1 == this.kag.stat.is_skip || this.kag.stat.is_adding_text) return !1;
        this.kag.readyAudio();
        this.kag.stat.is_skip = !0;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.skipstop = {
    pm: {},
    start: function(pm) {
        this.kag.stat.is_skip = !1;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.autostart = {
    pm: {},
    start: function(pm) {
        if (1 == this.kag.stat.is_auto) return !1;
        html = "<div class='loader' id='loader'><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div><div class='ball'></div></div>";
        
        spin = $(html);
        btnEl = document.getElementsByClassName("loader");
        console.log("AUTO START : ",btnEl);
        if (btnEl.length == 0){
            $(".2_fore").append(spin);
            TYRANO.kag.ftag.startTag("ptext", {
                layer: 2,
                name: "AUT",
                text: "AUT",
                x: "",
                y: "",
                size: pm.textsize,
                face: "",
                color: "0xffffff",
                align: pm.textalign,
                zindex: pm.textzindex,
                overwrite: "false",
            });
        }
        this.kag.readyAudio();
        this.kag.stat.is_auto = !0;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.autostop = {
    pm: {
        next: "true"
    },
    start: function(pm) {
        btnEl = document.getElementsByClassName("loader");
        if (btnEl.length != 0) {
            document.querySelector(".AUT").id = 'AUT';
            $("#loader").remove();
            $("#AUT").remove();
        }
        this.kag.stat.is_auto = !1;
        this.kag.stat.is_wait_auto = !1;
        "true" == pm.next && this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.autoconfig = {
    pm: {
        speed: "",
        clickstop: ""
    },
    start: function(pm) {
        if ("" != pm.speed) {
            this.kag.config.autoSpeed = pm.speed;
            this.kag.ftag.startTag("eval", {
                exp: "sf._system_config_auto_speed = " + pm.speed,
                next: "false"
            })
        }
        if ("" != pm.clickstop) {
            this.kag.config.autoClickStop = pm.clickstop;
            this.kag.ftag.startTag("eval", {
                exp: "sf._system_config_auto_click_stop = " + pm.clickstop,
                next: "false"
            })
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.anim = {
    pm: {
        name: "",
        layer: "",
        left: "",
        top: "",
        width: "",
        height: "",
        opacity: "",
        color: "",
        time: "2000",
        effect: ""
    },
    start: function(pm) {
        var that = this,
            anim_style = {};
        "" != pm.left && (anim_style.left = pm.left);
        "" != pm.top && (anim_style.top = pm.top);
        "" != pm.width && (anim_style.width = pm.width);
        "" != pm.height && (anim_style.height = pm.height);
        "" != pm.opacity && (anim_style.opacity = $.convertOpacity(pm.opacity));
        "" != pm.color && (anim_style.color = $.convertColor(pm.color));
        if ("" != pm.name) $("." + pm.name).each((function() {
            that.kag.pushAnimStack();
            $(this).stop(!0, !0).animate(anim_style, parseInt(pm.time), pm.effect, (function() {
                that.kag.popAnimStack()
            }))
        }));
        else if ("" != pm.layer) {
            var layer_name = pm.layer + "_fore";
            "free" == pm.layer && (layer_name = "layer_free");
            $("." + layer_name).children().each((function() {
                that.kag.pushAnimStack();
                $(this).stop(!0, !0).animate(anim_style, parseInt(pm.time), pm.effect, (function() {
                    that.kag.popAnimStack()
                }))
            }))
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.wa = {
    start: function(pm) {
        if (this.kag.tmp.num_anim > 0) {
            this.kag.stat.is_wait_anim = !0;
            this.kag.layer.hideEventLayer()
        } else this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.stopanim = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        $("." + pm.name).stop();
        this.kag.popAnimStack();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.keyframe = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        this.kag.stat.current_keyframe = pm.name;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.endkeyframe = {
    pm: {},
    start: function(pm) {
        this.kag.stat.current_keyframe = "";
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.frame = {
    vital: ["p"],
    pm: {
        p: ""
    },
    master_trans: {
        x: "",
        y: "",
        z: "",
        translate: "",
        translate3d: "",
        translateX: "",
        translateY: "",
        translateZ: "",
        scale: "",
        scale3d: "",
        scaleX: "",
        scaleY: "",
        scaleZ: "",
        rotate: "",
        rotate3d: "",
        rotateX: "",
        rotateY: "",
        rotateZ: "",
        skew: "",
        skewX: "",
        skewY: "",
        perspective: ""
    },
    start: function(pm) {
        var percentage = pm.p;
        delete pm.p;
        //!!!!!!!!!transかstyleかをここで振り分ける必要がありますよ！
        if (this.kag.stat.map_keyframe[this.kag.stat.current_keyframe]);
        else {
            this.kag.stat.map_keyframe[this.kag.stat.current_keyframe] = {};
            this.kag.stat.map_keyframe[this.kag.stat.current_keyframe].frames = {};
            this.kag.stat.map_keyframe[this.kag.stat.current_keyframe].styles = {}
        }
        var map_trans = {},
            map_style = {};
        for (key in pm) "" == this.master_trans[key] ? map_trans[key] = pm[key] : map_style[key] = pm[key];
        this.kag.stat.map_keyframe[this.kag.stat.current_keyframe].frames[percentage] = {
            trans: map_trans,
            styles: map_style
        };
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.kanim = {
    vital: ["keyframe"],
    pm: {
        name: "",
        layer: "",
        keyframe: ""
    },
    start: function(pm) {
        var that = this,
            anim = this.kag.stat.map_keyframe[pm.keyframe],
            class_name = "." + pm.name;
        anim.config = pm;
        pm.time && (pm.duration = parseInt(pm.time) + "ms");
        pm.delay && (pm.delay = parseInt(pm.delay) + "ms");
        anim.complete = function() {
            that.kag.popAnimStack()
        };
        if ("" != pm.name) {
            delete pm.name;
            delete pm.keyframe;
            $(class_name).each((function() {
                that.kag.pushAnimStack();
                $(this).a3d(anim)
            }))
        } else if ("" != pm.layer) {
            var layer_name = pm.layer + "_fore";
            "free" == pm.layer && (layer_name = "layer_free");
            delete pm.name;
            delete pm.keyframe;
            delete pm.layer;
            $("." + layer_name).children().each((function() {
                that.kag.pushAnimStack();
                $(this).a3d(anim)
            }))
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.stop_kanim = {
    pm: {
        name: "",
        layer: ""
    },
    start: function(pm) {
        if ("" != pm.name) $("." + pm.name).css({
            "animation-name": "",
            "animation-play-state": "",
            "animation-iteration-count": "",
            "animation-fill-mode": "",
            "animation-timing-function": "",
            transform: ""
        });
        else if ("" != pm.layer) {
            var layer_name = pm.layer + "_fore";
            "free" == pm.layer && (layer_name = "layer_free");
            $("." + layer_name).css({
                "animation-name": "",
                "animation-play-state": "",
                "animation-iteration-count": "",
                "animation-fill-mode": "",
                "animation-timing-function": "",
                transform: ""
            })
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_ptext = {
    pm: {
        name: "",
        face: ""
    },
    start: function(pm) {
        this.kag.layer.hideEventLayer();
        if ("" == pm.name) {
            $("." + this.kag.stat.chara_ptext).html("");
            "none" != this.kag.stat.chara_talk_focus && $("#tyrano_base").find(".tyrano_chara").css({
                "-webkit-filter": this.kag.stat.apply_filter_str,
                "-ms-filter": this.kag.stat.apply_filter_str,
                "-moz-filter": this.kag.stat.apply_filter_str
            })
        } else {
            this.kag.stat.jcharas[pm.name] && (pm.name = this.kag.stat.jcharas[pm.name]);
            var cpm = this.kag.stat.charas[pm.name];
            if (cpm) {
                $("." + this.kag.stat.chara_ptext).html(cpm.jname);
                "" != cpm.color && $("." + this.kag.stat.chara_ptext).css("color", $.convertColor(cpm.color));
                if ("none" != this.kag.stat.chara_talk_focus) {
                    $("#tyrano_base").find(".tyrano_chara").css({
                        "-webkit-filter": this.kag.stat.apply_filter_str,
                        "-ms-filter": this.kag.stat.apply_filter_str,
                        "-moz-filter": this.kag.stat.apply_filter_str
                    });
                    $("#tyrano_base").find("." + pm.name + ".tyrano_chara").css({
                        "-webkit-filter": "brightness(100%) blur(0px)",
                        "-ms-filter": "brightness(100%) blur(0px)",
                        "-moz-filter": "brightness(100%) blur(0px)"
                    })
                }
                if ("none" != this.kag.stat.chara_talk_anim) {
                    var chara_obj = $("#tyrano_base").find("." + pm.name + ".tyrano_chara");
                    if (chara_obj.get(0)) {
                        this.animChara(chara_obj, this.kag.stat.chara_talk_anim, pm.name);
                        "" != pm.face && this.kag.ftag.startTag("chara_mod", {
                            name: pm.name,
                            face: pm.face,
                            time: "0"
                        })
                    }
                }
            } else {
                $("." + this.kag.stat.chara_ptext).html(pm.name);
                "none" != this.kag.stat.chara_talk_focus && $("#tyrano_base").find(".tyrano_chara").css({
                    "-webkit-filter": this.kag.stat.apply_filter_str,
                    "-ms-filter": this.kag.stat.apply_filter_str,
                    "-moz-filter": this.kag.stat.apply_filter_str
                })
            }
        }
        if (1 == this.kag.stat.vostart && this.kag.stat.map_vo.vochara[pm.name]) {
            var vochara = this.kag.stat.map_vo.vochara[pm.name],
                se_pm = {
                    loop: "false",
                    storage: $.replaceAll(vochara.vostorage, "{number}", vochara.number),
                    stop: "true",
                    buf: vochara.buf
                };
            this.kag.ftag.startTag("playse", se_pm);
            this.kag.stat.map_vo.vochara[pm.name].number = parseInt(vochara.number) + 1
        }
        this.kag.stat.f_chara_ptext = "true";
        if ("" != pm.face) {
            if (!this.kag.stat.charas[pm.name].map_face[pm.face]) {
                this.kag.error("指定されたキャラクター「" + pm.name + "」もしくはface:「" + pm.face + "」は定義されていません。もう一度確認をお願いします");
                return
            }
            this.kag.stat.charas[pm.name].map_face[pm.face];
            "none" == this.kag.stat.chara_talk_anim && this.kag.ftag.startTag("chara_mod", {
                name: pm.name,
                face: pm.face
            })
        } else {
            this.kag.layer.showEventLayer();
            this.kag.ftag.nextOrder()
        }
    },
    animChara: function(chara_obj, type, name) {
        if (void 0 === this.kag.tmp.map_chara_talk_top[name]) {
            var that = this,
                tmp_top = parseInt(chara_obj.get(0).offsetTop);
            chara_obj.css("top", tmp_top);
            var a_obj = {},
                b_obj = {};
            this.kag.tmp.map_chara_talk_top[name] = !0;
            var anim_time = this.kag.stat.chara_talk_anim_time;
            if ("up" == type) {
                a_obj.top = tmp_top - this.kag.stat.chara_talk_anim_value;
                b_obj.top = tmp_top
            } else if ("down" == type) {
                a_obj.top = tmp_top + this.kag.stat.chara_talk_anim_value;
                b_obj.top = tmp_top
            }
            chara_obj.stop(!0, !0).animate(a_obj, anim_time, "easeOutQuad", (function() {
                chara_obj.stop(!0, !0).animate(b_obj, anim_time, "easeOutQuad", (function() {
                    delete that.kag.tmp.map_chara_talk_top[name]
                }))
            }))
        }
    }
};
tyrano.plugin.kag.tag.chara_config = {
    pm: {
        pos_mode: "",
        effect: "",
        ptext: "",
        time: "",
        memory: "",
        anim: "",
        pos_change_time: "",
        talk_focus: "",
        brightness_value: "",
        blur_value: "",
        talk_anim: "",
        talk_anim_time: "",
        talk_anim_value: ""
    },
    start: function(pm) {
        "" != pm.pos_mode && (this.kag.stat.chara_pos_mode = pm.pos_mode);
        "" != pm.effect && (this.kag.stat.chara_effect = pm.effect);
        "" != pm.ptext && (this.kag.stat.chara_ptext = pm.ptext);
        "" != pm.time && (this.kag.stat.chara_time = pm.time);
        "" != pm.memory && (this.kag.stat.chara_memory = pm.memory);
        "" != pm.anim && (this.kag.stat.chara_anim = pm.anim);
        "" != pm.pos_change_time && (this.kag.stat.pos_change_time = pm.pos_change_time);
        "" != pm.brightness_value && (this.kag.stat.chara_brightness_value = pm.brightness_value);
        "" != pm.blur_value && (this.kag.stat.chara_blur_value = pm.blur_value);
        "" != pm.talk_anim && (this.kag.stat.chara_talk_anim = pm.talk_anim);
        "" != pm.talk_anim_time && (this.kag.stat.chara_talk_anim_time = parseInt(pm.talk_anim_time));
        "" != pm.talk_anim_value && (this.kag.stat.chara_talk_anim_value = parseInt(pm.talk_anim_value));
        if ("" != pm.talk_focus) {
            "none" == pm.talk_focus ? this.kag.stat.apply_filter_str = "" : "brightness" == pm.talk_focus ? this.kag.stat.apply_filter_str = "brightness(" + this.kag.stat.chara_brightness_value + "%)" : "blur" == pm.talk_focus && (this.kag.stat.apply_filter_str = "blur(" + this.kag.stat.chara_blur_value + "px)");
            $("#tyrano_base").find(".tyrano_chara").css({
                "-webkit-filter": "brightness(100%) blur(0px)",
                "-ms-filter": "brightness(100%) blur(0px)",
                "-moz-filter": "brightness(100%) blur(0px)"
            });
            this.kag.stat.chara_talk_focus = pm.talk_focus
        }
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_new = {
    vital: ["name", "storage"],
    pm: {
        name: "",
        storage: "",
        width: "",
        height: "",
        reflect: "false",
        jname: "",
        color: "",
        map_face: {},
        fuki: {
            enable: "false"
        },
        is_show: "false"
    },
    start: function(pm) {
        var storage_url = "./data/fgimage/" + pm.storage;
        $.isHTTP(pm.storage) && (storage_url = pm.storage);
        pm.map_face.default = pm.storage;
        this.kag.stat.charas[pm.name] = pm;
        "" != pm.jname && (this.kag.stat.jcharas[pm.jname] = pm.name);
        this.kag.preload(storage_url, (img_obj => {
            if (img_obj) {
                let img_width = $(img_obj).get(0).width,
                    img_height = $(img_obj).get(0).height;
                this.kag.stat.charas[pm.name].origin_width = img_width;
                this.kag.stat.charas[pm.name].origin_height = img_height;
                this.kag.stat.charas[pm.name].fuki.left = Math.round(img_width / 2);
                this.kag.stat.charas[pm.name].fuki.top = Math.round(img_height / 3)
            }
            this.kag.ftag.nextOrder()
        }))
    }
};
tyrano.plugin.kag.tag.chara_show = {
    vital: ["name"],
    pm: {
        name: "",
        page: "fore",
        layer: "0",
        wait: "true",
        left: "0",
        top: "0",
        width: "",
        height: "",
        zindex: "1",
        depth: "front",
        reflect: "",
        face: "",
        storage: "",
        time: 1e3
    },
    start: function(pm) {
        var that = this,
            cpm = this.kag.stat.charas[pm.name],
            array_storage = [];
        if (null != cpm) {
            var check_obj = $(".layer_fore").find("." + pm.name);
            check_obj.stop(!0, !0);
            if (check_obj.get(0)) {
                check_obj.stop(!0, !0);
                if ("none" != check_obj.css("display")) {
                    that.kag.ftag.nextOrder();
                    return
                }
            } else cpm.is_show = "false";
            if ("true" != cpm.is_show) {
                var storage_url = "./data/fgimage/" + cpm.storage;
                $.isHTTP(cpm.storage) && (storage_url = cpm.storage);
                if ("" != pm.face) {
                    if (!cpm.map_face[pm.face]) {
                        this.kag.error("指定されたキャラクター「" + pm.name + "」もしくはface:「" + pm.face + "」は定義されていません。もう一度確認をお願いします");
                        return
                    }
                    storage_url = "./data/fgimage/" + cpm.map_face[pm.face]
                } else if ("" != pm.storage) {
                    if ($.isHTTP(pm.storage)) {
                        folder = "";
                        storage_url = pm.storage
                    } else storage_url = "./data/fgimage/" + pm.storage;
                    that.kag.stat.charas[pm.name].storage = pm.storage
                }
                var j_chara_root = $("<div></div>");
                j_chara_root.css({
                    position: "absolute",
                    display: "none"
                });
                var img_obj = $("<img />");
                img_obj.attr("src", storage_url);
                img_obj.addClass("chara_img");
                j_chara_root.append(img_obj);
                if ("" != pm.width) {
                    var width = parseInt(pm.width);
                    cpm.width = width
                }
                if ("" != pm.height) {
                    var height = parseInt(pm.height);
                    cpm.height = height
                }
                "" != cpm.width && j_chara_root.css("width", cpm.width + "px");
                "" != cpm.height && j_chara_root.css("height", cpm.height + "px");
                if ("" != pm.zindex) {
                    var zindex = parseInt(pm.zindex);
                    j_chara_root.css("z-index", zindex)
                }
                var chara_layer = {};
                cpm._layer && (chara_layer = cpm._layer);
                for (key in chara_layer) {
                    var chara_part = chara_layer[key],
                        current_part_id = chara_part.current_part_id,
                        chara_obj = chara_part[current_part_id];
                    "allow_storage" == current_part_id && (chara_obj = {
                        storage: chara_part.allow_storage,
                        visible: "true"
                    });
                    var part_storage = "./data/fgimage/" + chara_obj.storage,
                        j_img = $("<img />");
                    "none" == chara_obj.storage ? part_storage = "./tyrano/images/system/transparent.png" : array_storage.push(part_storage);
                    j_img.attr("src", part_storage);
                    j_img.css({
                        position: "absolute",
                        left: 0,
                        top: 0,
                        width: "100%",
                        height: "100%",
                        "z-index": chara_part.zindex
                    });
                    j_img.addClass("part");
                    j_img.addClass(key);
                    j_chara_root.append(j_img)
                }
                "" != pm.reflect && ("true" == pm.reflect ? cpm.reflect = "true" : cpm.reflect = "false");
                array_storage.push(storage_url);
                cpm.is_show = "true";
                this.kag.preloadAll(array_storage, (function() {
                    var target_layer = that.kag.layer.getLayer(pm.layer, pm.page);
                    "back" == pm.depth ? target_layer.prepend(j_chara_root).show() : target_layer.append(j_chara_root).show();
                    var chara_num = 1;
                    that.kag.layer.hideEventLayer();
                    if ("true" == that.kag.stat.chara_pos_mode && "0" == pm.left) {
                        "0" != pm.top ? j_chara_root.css("top", parseInt(pm.top)) : j_chara_root.css("bottom", 0);
                        var chara_cnt = target_layer.find(".tyrano_chara").length,
                            sc_width = parseInt(that.kag.config.scWidth),
                            center = (parseInt(that.kag.config.scHeight), Math.floor(parseInt(j_chara_root.css("width")) / 2)),
                            base = Math.floor(sc_width / (chara_cnt + 2)),
                            tmp_base = base,
                            first_left = base - center;
                        j_chara_root.css("left", first_left + "px");
                        var array_tyrano_chara = target_layer.find(".tyrano_chara").get().reverse();
                        $(array_tyrano_chara).each((function() {
                            chara_num++;
                            tmp_base += base;
                            var j_chara = $(this);
                            center = Math.floor(parseInt(j_chara.css("width")) / 2);
                            var left = tmp_base - center;
                            "false" == that.kag.stat.chara_anim ? j_chara.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(pm.time)), 0, (function() {
                                j_chara.css("left", left);
                                j_chara.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(that.kag.stat.pos_change_time)), 1, (function() {
                                    if (0 == --chara_num) {
                                        that.kag.layer.showEventLayer();
                                        "true" == pm.wait && that.kag.ftag.nextOrder()
                                    }
                                }))
                            })) : j_chara.stop(!0, !0).animate({
                                left: left
                            }, parseInt(that.kag.cutTimeWithSkip(that.kag.stat.pos_change_time)), that.kag.stat.chara_effect, (function() {
                                if (0 == --chara_num) {
                                    that.kag.layer.showEventLayer();
                                    "true" == pm.wait && that.kag.ftag.nextOrder()
                                }
                            }))
                        }))
                    } else {
                        j_chara_root.css("top", pm.top + "px");
                        j_chara_root.css("left", pm.left + "px")
                    }
                    setTimeout((function() {
                        var width = img_obj.css("width"),
                            height = img_obj.css("height");
                        j_chara_root.css("width", width);
                        j_chara_root.css("height", height);
                        j_chara_root.find(".part").css("width", width);
                        j_chara_root.find(".part").css("height", height)
                    }), 1);
                    $.setName(j_chara_root, cpm.name);
                    j_chara_root.addClass("tyrano_chara");
                    "" != cpm.width && img_obj.css("width", cpm.width + "px");
                    "" != cpm.height && img_obj.css("height", cpm.height + "px");
                    "true" == cpm.reflect ? j_chara_root.addClass("reflect") : j_chara_root.removeClass("reflect");
                    "true" != pm.wait && that.kag.ftag.nextOrder();
                    j_chara_root.stop(!0, !0).animate({
                        opacity: "show"
                    }, {
                        duration: parseInt(that.kag.cutTimeWithSkip(pm.time)),
                        easing: that.kag.stat.chara_effect,
                        complete: function() {
                            if (0 == --chara_num) {
                                that.kag.layer.showEventLayer();
                                "true" == pm.wait && that.kag.ftag.nextOrder()
                            }
                        }
                    })
                }))
            } else that.kag.ftag.nextOrder()
        } else this.kag.error("指定されたキャラクター「" + pm.name + "」は定義されていません。[chara_new]で定義してください")
    }
};
tyrano.plugin.kag.tag.chara_hide = {
    vital: ["name"],
    pm: {
        page: "fore",
        layer: "0",
        name: "",
        wait: "true",
        pos_mode: "true",
        time: "1000"
    },
    start: function(pm) {
        var that = this,
            target_layer = this.kag.layer.getLayer(pm.layer, pm.page),
            img_obj = target_layer.find("." + pm.name);
        this.kag.stat.charas[pm.name].is_show = "false";
        img_obj.stop(!0, !0);
        if (!img_obj.get(0)) {
            img_obj.stop(!0, !0);
            if ("none" == img_obj.css("display")) {
                that.kag.ftag.nextOrder();
                return
            }
        }
        if (img_obj.get(0)) {
            var chara_num = 0;
            that.kag.layer.hideEventLayer();
            img_obj.stop(!0, !0).animate({
                opacity: "hide"
            }, {
                duration: parseInt(that.kag.cutTimeWithSkip(pm.time)),
                easing: "linear",
                complete: function() {
                    img_obj.remove();
                    if ("true" == that.kag.stat.chara_pos_mode && "true" == pm.pos_mode) {
                        var chara_cnt = target_layer.find(".tyrano_chara").length,
                            sc_width = parseInt(that.kag.config.scWidth),
                            base = (parseInt(that.kag.config.scHeight), Math.floor(sc_width / (chara_cnt + 1))),
                            tmp_base = 0;
                        if (0 == chara_cnt) {
                            that.kag.layer.showEventLayer();
                            "true" == pm.wait && that.kag.ftag.nextOrder();
                            return
                        }
                        var array_tyrano_chara = target_layer.find(".tyrano_chara").get().reverse();
                        $(array_tyrano_chara).each((function() {
                            chara_num++;
                            tmp_base += base;
                            var j_chara = $(this),
                                center = Math.floor(parseInt(j_chara.css("width")) / 2),
                                left = tmp_base - center;
                            "false" == that.kag.stat.chara_anim ? j_chara.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(pm.time)), 0, (function() {
                                j_chara.css("left", left);
                                j_chara.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(that.kag.stat.pos_change_time)), 1, (function() {
                                    if (0 == --chara_num) {
                                        that.kag.layer.showEventLayer();
                                        "true" == pm.wait && that.kag.ftag.nextOrder()
                                    }
                                }))
                            })) : j_chara.stop(!0, !0).animate({
                                left: left
                            }, parseInt(that.kag.cutTimeWithSkip(that.kag.stat.pos_change_time)), that.kag.stat.chara_effect, (function() {
                                if (0 == --chara_num) {
                                    that.kag.layer.showEventLayer();
                                    "true" == pm.wait && that.kag.ftag.nextOrder()
                                }
                            }))
                        }))
                    } else if ("true" == pm.wait) {
                        that.kag.layer.showEventLayer();
                        that.kag.ftag.nextOrder()
                    }
                }
            });
            "false" == this.kag.stat.chara_memory && (this.kag.stat.charas[pm.name].storage = this.kag.stat.charas[pm.name].map_face.default);
            "true" != pm.wait && this.kag.ftag.nextOrder()
        } else that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_hide_all = {
    vital: [],
    pm: {
        page: "fore",
        layer: "0",
        wait: "true",
        time: "1000"
    },
    start: function(pm) {
        var that = this,
            img_obj = this.kag.layer.getLayer(pm.layer, pm.page).find(".tyrano_chara");
        that.kag.layer.hideEventLayer();
        var flag_complete = !1,
            charas = this.kag.stat.charas;
        for (let key in charas) charas[key].is_show = "false";
        if (img_obj.get(0)) {
            img_obj.stop(!0, !0).animate({
                opacity: "hide"
            }, {
                duration: parseInt(that.kag.cutTimeWithSkip(pm.time)),
                easing: "linear",
                complete: function() {
                    img_obj.remove();
                    if ("true" == pm.wait && 0 == flag_complete) {
                        flag_complete = !0;
                        that.kag.layer.showEventLayer();
                        that.kag.ftag.nextOrder()
                    }
                }
            });
            if ("false" == this.kag.stat.chara_memory)
                for (key in this.kag.stat.charas) this.kag.stat.charas[key].storage = this.kag.stat.charas[key].map_face.default;
            if ("true" != pm.wait) {
                this.kag.layer.showEventLayer();
                this.kag.ftag.nextOrder()
            }
        } else that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_delete = {
    vital: ["name"],
    pm: {
        name: ""
    },
    start: function(pm) {
        delete this.kag.stat.charas[pm.name];
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_mod = {
    vital: ["name"],
    pm: {
        name: "",
        face: "",
        reflect: "",
        storage: "",
        time: "",
        cross: "true",
        wait: "true"
    },
    start: function(pm) {
        var that = this;
        that.kag.layer.hideEventLayer();
        var storage_url = "",
            folder = "./data/fgimage/";
        if ("" != pm.face) {
            if (!this.kag.stat.charas[pm.name].map_face[pm.face]) {
                this.kag.error("指定されたキャラクター「" + pm.name + "」もしくはface:「" + pm.face + "」は定義されていません。もう一度確認をお願いします");
                return
            }
            storage_url = this.kag.stat.charas[pm.name].map_face[pm.face]
        } else if ($.isHTTP(pm.storage)) {
            folder = "";
            storage_url = pm.storage
        } else storage_url = pm.storage;
        if (0 != $(".layer_fore").find("." + pm.name).length) {
            var chara_time = this.kag.stat.chara_time;
            "" != pm.time && (chara_time = pm.time);
            $(".layer_fore").find("." + pm.name).find(".chara_img").attr("src") == folder + storage_url && (chara_time = "0");
            if ("" != pm.reflect) {
                "true" == pm.reflect ? $(".layer_fore").find("." + pm.name).addClass("reflect") : $(".layer_fore").find("." + pm.name).removeClass("reflect");
                this.kag.stat.charas[pm.name].reflect = pm.reflect
            }
            if ("" != storage_url) this.kag.preload(folder + storage_url, (function() {
                $(".chara-mod-animation").get(0) && $(".chara-mod-animation_" + pm.name).remove();
                if ("0" != chara_time) {
                    $(".layer_fore").find("." + pm.name).stop(!0, !0);
                    var j_new_img = $(".layer_fore").find("." + pm.name).clone();
                    j_new_img.find(".chara_img").attr("src", folder + storage_url);
                    j_new_img.css("opacity", 0);
                    var j_img = $(".layer_fore").find("." + pm.name);
                    j_img.addClass("chara-mod-animation_" + pm.name);
                    j_img.after(j_new_img);
                    "true" == pm.cross && j_img.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(chara_time)), 0, (function() {}));
                    j_new_img.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(chara_time)), 1, (function() {
                        if ("false" == pm.cross) j_img.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(chara_time)), 0, (function() {
                            j_img.remove();
                            if ("true" == pm.wait) {
                                that.kag.layer.showEventLayer();
                                that.kag.ftag.nextOrder()
                            }
                        }));
                        else {
                            j_img.remove();
                            if ("true" == pm.wait) {
                                that.kag.layer.showEventLayer();
                                that.kag.ftag.nextOrder()
                            }
                        }
                    }))
                } else {
                    $(".layer_fore").find("." + pm.name).stop(!0, !0);
                    $(".layer_fore").find("." + pm.name).find(".chara_img").attr("src", folder + storage_url);
                    if ("true" == pm.wait) {
                        that.kag.layer.showEventLayer();
                        that.kag.ftag.nextOrder()
                    }
                }
                that.kag.stat.charas[pm.name].storage = storage_url;
                if ("false" == pm.wait) {
                    that.kag.layer.showEventLayer();
                    that.kag.ftag.nextOrder()
                }
            }));
            else {
                that.kag.layer.showEventLayer();
                this.kag.ftag.nextOrder()
            }
        } else {
            this.kag.stat.charas[pm.name].storage = storage_url;
            this.kag.stat.charas[pm.name].reflect = pm.reflect;
            this.kag.layer.showEventLayer();
            this.kag.ftag.nextOrder()
        }
    }
};
tyrano.plugin.kag.tag.chara_move = {
    vital: ["name"],
    pm: {
        name: "",
        time: "600",
        anim: "false",
        left: "",
        top: "",
        width: "",
        height: "",
        effect: "",
        wait: "true"
    },
    start: function(pm) {
        var that = this,
            target_obj = $(".layer_fore").find("." + pm.name + ".tyrano_chara"),
            target_img = $(".layer_fore").find("." + pm.name + ".tyrano_chara").find("img");
        if (target_obj.get(0)) {
            var anim_style = {},
                img_anim_style = {};
            "" != pm.left && (anim_style.left = pm.left + "px");
            "" != pm.top && (anim_style.top = pm.top + "px");
            if ("" != pm.width) {
                anim_style.width = pm.width;
                img_anim_style.width = pm.width
            }
            if ("" != pm.height) {
                anim_style.height = pm.height;
                img_anim_style.height = pm.height
            }
            if ("" != pm.name)
                if ("true" == pm.anim) {
                    target_obj.stop(!0, !0).animate(anim_style, parseInt(pm.time), pm.effect, (function() {
                        "true" == pm.wait && that.kag.ftag.nextOrder()
                    }));
                    target_img.stop(!0, !0).animate(img_anim_style, parseInt(pm.time), pm.effect, (function() {}))
                } else target_obj.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(pm.time)) / 2, 0, (function() {
                    target_obj.css(anim_style);
                    target_img.css(img_anim_style);
                    target_obj.stop(!0, !0).fadeTo(parseInt(that.kag.cutTimeWithSkip(pm.time)) / 2, 1, (function() {
                        "true" == pm.wait && that.kag.ftag.nextOrder()
                    }))
                }));
            "false" == pm.wait && this.kag.ftag.nextOrder()
        } else that.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_face = {
    vital: ["name", "face", "storage"],
    pm: {
        name: "",
        face: "",
        storage: ""
    },
    start: function(pm) {
        var storage_url = "";
        storage_url = ($.isHTTP(pm.storage), pm.storage);
        this.kag.stat.charas[pm.name].map_face[pm.face] = storage_url;
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.chara_layer = {
    vital: ["name", "part", "id", "storage"],
    pm: {
        name: "",
        part: "",
        id: "",
        storage: "",
        zindex: ""
    },
    start: function(pm) {
        var cpm = this.kag.stat.charas[pm.name];
        if (null != cpm) {
            var chara_layer = {};
            cpm._layer ? chara_layer = cpm._layer : cpm._layer = {};
            var chara_part = {},
                init_part = !1;
            if (chara_layer[pm.part]) chara_part = chara_layer[pm.part];
            else {
                init_part = !0;
                cpm._layer[pm.part] = {
                    default_part_id: pm.id,
                    current_part_id: pm.id,
                    zindex: pm.zindex
                }
            }
            var chara_obj = {};
            chara_part[pm.id] ? chara_obj = chara_part[pm.id] : (chara_obj = {
                storage: "",
                zindex: ""
            }).visible = 1 == init_part ? "true" : "false";
            cpm._layer[pm.part][pm.id] = $.extendParam(pm, chara_obj);
            this.kag.ftag.nextOrder()
        } else this.kag.error("指定されたキャラクター「" + pm.name + "」は定義されていません。[chara_new]で定義してください")
    }
};
tyrano.plugin.kag.tag.chara_layer_mod = {
    vital: ["name", "part"],
    pm: {
        name: "",
        part: "",
        zindex: ""
    },
    start: function(pm) {
        var cpm = this.kag.stat.charas[pm.name];
        if (null != cpm)
            if (cpm._layer) {
                cpm._layer[pm.part] && (cpm._layer[pm.part].zindex = pm.zindex);
                this.kag.ftag.nextOrder()
            } else this.kag.error("指定されたキャラクター「" + pm.name + "」の差分パーツは設定されていません。[chara_layer]で定義してください");
        else this.kag.error("指定されたキャラクター「" + pm.name + "」は定義されていません。[chara_new]で定義してください")
    }
};
tyrano.plugin.kag.tag.chara_part = {
    vital: ["name"],
    pm: {
        name: "",
        allow_storage: "false",
        time: "",
        wait: "true"
    },
    start: function(pm) {
        var that = this,
            cpm = this.kag.stat.charas[pm.name];
        if (null != cpm)
            if (cpm._layer) {
                var chara_part = cpm._layer,
                    map_part = {},
                    array_storage = [];
                for (key in pm)
                    if (chara_part[key]) {
                        var part_id = pm[key];
                        if (chara_part[key][part_id]) {
                            var part = chara_part[key][part_id];
                            part.id = part_id;
                            map_part[key] = part;
                            "none" != part.storage && array_storage.push("./data/fgimage/" + part.storage);
                            this.kag.stat.charas[pm.name]._layer[key].current_part_id = part_id
                        } else if ("true" == pm.allow_storage) {
                            map_part[key] = {
                                storage: part_id,
                                id: part_id
                            };
                            array_storage.push("./data/fgimage/" + part_id);
                            this.kag.stat.charas[pm.name]._layer[key].current_part_id = "allow_storage";
                            this.kag.stat.charas[pm.name]._layer[key].allow_storage = part_id
                        }
                    } var target_obj = $(".layer_fore").find("." + pm.name + ".tyrano_chara");
                this.kag.preloadAll(array_storage, (function() {
                    if ("" != pm.time) {
                        var n = 0,
                            cnt = 0;
                        for (key in map_part) ! function() {
                            cnt++;
                            var part = map_part[key],
                                j_img = target_obj.find(".part." + key),
                                j_new_img = j_img.clone();
                            j_new_img.css("opacity", 0);
                            "none" != part.storage ? j_new_img.attr("src", "./data/fgimage/" + part.storage) : j_new_img.attr("src", "./tyrano/images/system/transparent.png");
                            pm[key + "_zindex"] ? j_new_img.css("z-index", pm[key + "_zindex"]) : j_new_img.css("z-index", chara_part[key].zindex);
                            j_img.after(j_new_img);
                            j_img.stop(!0, !0).fadeTo(parseInt(pm.time), 0, (function() {
                                j_img.remove()
                            }));
                            j_new_img.stop(!0, !0).fadeTo(parseInt(pm.time), 1, (function() {
                                n++;
                                "true" == pm.wait && cnt == n && that.kag.ftag.nextOrder()
                            }))
                        }();
                        "false" == pm.wait && that.kag.ftag.nextOrder()
                    } else {
                        for (key in map_part) {
                            var part = map_part[key],
                                j_img = target_obj.find(".part." + key);
                            "none" != part.storage ? j_img.attr("src", "./data/fgimage/" + part.storage) : j_img.attr("src", "./tyrano/images/system/transparent.png");
                            pm[key + "_zindex"] ? j_img.css("z-index", pm[key + "_zindex"]) : j_img.css("z-index", chara_part[key].zindex)
                        }
                        that.kag.ftag.nextOrder()
                    }
                }))
            } else this.kag.error("指定されたキャラクター「" + pm.name + "」の差分パーツは設定されていません。[chara_layer]で定義してください");
        else this.kag.error("指定されたキャラクター「" + pm.name + "」は定義されていません。[chara_new]で定義してください")
    }
};
tyrano.plugin.kag.tag.chara_part_reset = {
    vital: ["name"],
    pm: {
        name: "",
        part: ""
    },
    start: function(pm) {
        var cpm = this.kag.stat.charas[pm.name];
        if (null != cpm)
            if (cpm._layer) {
                var chara_part = cpm._layer,
                    new_pm = {
                        name: pm.name
                    };
                if ("" == pm.part)
                    for (key in chara_part) new_pm[key] = chara_part[key].default_part_id;
                else
                    for (var array_part = pm.part.split(","), i = 0; i < array_part.length; i++) {
                        var key = array_part[i];
                        chara_part[key] && (new_pm[key] = chara_part[key].default_part_id)
                    }
                this.kag.ftag.startTag("chara_part", new_pm)
            } else this.kag.error("指定されたキャラクター「" + pm.name + "」の差分パーツは設定されていません。[chara_layer]で定義してください");
        else this.kag.error("指定されたキャラクター「" + pm.name + "」は定義されていません。[chara_new]で定義してください")
    }
};
tyrano.plugin.kag.tag.showlog = {
    pm: {},
    start: function(pm) {
        this.kag.menu.displayLog();
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.filter = {
    vital: [],
    pm: {
        layer: "all",
        page: "fore",
        name: "",
        grayscale: "",
        sepia: "",
        saturate: "",
        hue: "",
        invert: "",
        opacity: "",
        brightness: "",
        contrast: "",
        blur: ""
    },
    start: function(pm) {
        var filter_str = "",
            j_obj = {};
        j_obj = "all" == pm.layer ? $(".layer_camera") : this.kag.layer.getLayer(pm.layer, pm.page);
        "" != pm.name && (j_obj = j_obj.find("." + pm.name));
        "" != pm.grayscale && (filter_str += "grayscale(" + pm.grayscale + "%) ");
        "" != pm.sepia && (filter_str += "sepia(" + pm.sepia + "%) ");
        "" != pm.saturate && (filter_str += "saturate(" + pm.saturate + "%) ");
        "" != pm.hue && (filter_str += "hue-rotate(" + pm.hue + "deg) ");
        "" != pm.invert && (filter_str += "invert(" + pm.invert + "%) ");
        "" != pm.opacity && (filter_str += "opacity(" + pm.opacity + "%) ");
        "" != pm.brightness && (filter_str += "brightness(" + pm.brightness + "%) ");
        "" != pm.contrast && (filter_str += "contrast(" + pm.contrast + "%) ");
        "" != pm.blur && (filter_str += "blur(" + pm.blur + "px) ");
        j_obj.css({
            "-webkit-filter": filter_str,
            "-ms-filter": filter_str,
            "-moz-filter": filter_str
        });
        j_obj.addClass("tyrano_filter_effect");
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.free_filter = {
    vital: [],
    pm: {
        layer: "",
        page: "fore",
        name: ""
    },
    start: function(pm) {
        var j_obj;
        j_obj = "" == pm.layer ? $(".tyrano_filter_effect") : this.kag.layer.getLayer(pm.layer, pm.page);
        "" != pm.name && (j_obj = j_obj.find("." + pm.name));
        j_obj.css({
            "-webkit-filter": "",
            "-ms-filter": "",
            "-moz-filter": ""
        });
        j_obj.removeClass("tyrano_filter_effect");
        this.kag.ftag.nextOrder()
    }
};
tyrano.plugin.kag.tag.web = {
    vital: ["url"],
    pm: {
        url: ""
    },
    start: function(pm) {
        if (-1 == pm.url.indexOf("http")) window.open(pm.url);
        else if ($.isNWJS()) {
            require("nw.gui").Shell.openExternal(pm.url)
        } else if ($.isElectron()) {
            require("electron").shell.openExternal(pm.url)
        } else $.isTyranoPlayer() ? $.openWebFromApp(pm.url) : window.open(pm.url);
        this.kag.ftag.nextOrder()
    }
};